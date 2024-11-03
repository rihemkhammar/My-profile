import 'package:flutter/material.dart';
import 'package:my_profile/constant/colors.dart';
import 'package:my_profile/constant/size.dart';
import 'package:my_profile/widgets/contact_section.dart';
import 'package:my_profile/widgets/main_desktop.dart';
import 'package:my_profile/widgets/main_mobile.dart';
import 'package:my_profile/widgets/projects_section.dart';
import 'package:my_profile/widgets/skills_desktop.dart';
import 'package:my_profile/widgets/skills_mobile.dart';

import '../widgets/dawer_mobile.dart';
import '../widgets/footer.dart';
import '../widgets/header_desktop.dart';
import '../widgets/header_mobile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  final scrollController = ScrollController();
  final List<GlobalKey> navbarKeys = List.generate(4, (index) => GlobalKey());

  @override
  Widget build(BuildContext context) {


    return LayoutBuilder(builder: (context, constraints) {
      return Scaffold(
        key: scaffoldKey,
        backgroundColor: CustomColor.scaffoldBg,
        endDrawer: constraints.maxWidth >= kMinDesktopWidth
            ? null
            : DrawerMobile(onNavItemTap: (int navIndex) {
                scaffoldKey.currentState?.closeEndDrawer();
                scrollToSection(navIndex);
              }),
        body: SingleChildScrollView(
          controller: scrollController,
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              SizedBox(key: navbarKeys.first),

              // HEADER
              _buildHeader(constraints),

              // MAIN CONTENT
              constraints.maxWidth >= kMinDesktopWidth
                  ? const MainDesktop()
                  : const MainMobile(),

              // SKILLS SECTION
              _buildSkillsSection(constraints),

              const SizedBox(height: 30),

              // PROJECTS
              ProjectsSection(key: navbarKeys[2]),

              const SizedBox(height: 30),

              // CONTACT
              ContactSection(key: navbarKeys[3]),

              const SizedBox(height: 30),

              // FOOTER
              const Footer(),
            ],
          ),
        ),
      );
    });
  }

  Widget _buildHeader(BoxConstraints constraints) {
    if (constraints.maxWidth >= kMinDesktopWidth) {
      return HeaderDesktop(onNavMenuTap: (int navIndex) {
        scrollToSection(navIndex);
      });
    } else {
      return HeaderMobile(
        onLogoTap: () {},
        onMenuTap: () {
          scaffoldKey.currentState?.openEndDrawer();
        },
      );
    }
  }

  Widget _buildSkillsSection(BoxConstraints constraints) {
    return Container(
      key: navbarKeys[1],
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.fromLTRB(25, 20, 25, 60),
      color: CustomColor.bgLight1,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Text(
            "What I can do",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: CustomColor.whitePrimary,
            ),
          ),
          const SizedBox(height: 50),
          constraints.maxWidth >= kMedDesktopWidth
              ? const SkillsDesktop()
              : const SkillsMobile(),
        ],
      ),
    );
  }

  void scrollToSection(int navIndex) {
    final key = navbarKeys[navIndex];
    Scrollable.ensureVisible(
      key.currentContext!,
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeInOut,
    );
  }
}
