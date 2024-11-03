
import 'dart:js' as js;
import 'package:flutter/material.dart';

import 'package:my_profile/constant/colors.dart';
import 'package:my_profile/constant/size.dart';
import 'package:my_profile/constant/sns_links.dart';
import 'package:my_profile/widgets/custom_text_field.dart';

class ContactSection extends StatefulWidget {
  const ContactSection({super.key});

  @override
  _ContactSectionState createState() => _ContactSectionState();
}

class _ContactSectionState extends State<ContactSection> {

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(25, 20, 25, 60),
      color: CustomColor.bgLight1,
      child: Column(
        children: [
          const Text(
            "Get in touch",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 24,
              color: CustomColor.whitePrimary,
            ),
          ),
          const SizedBox(height: 50),
          ConstrainedBox(
            constraints: const BoxConstraints(
              maxWidth: 700,
              maxHeight: 100,
            ),
            child: LayoutBuilder(
              builder: (context, constraints) {
                if (constraints.maxWidth >= kMinDesktopWidth) {
                  return buildNameEmailFieldDesktop();
                }
                return buildNameEmailFieldMobile();
              },
            ),
          ),
          const SizedBox(height: 15),
          ConstrainedBox(
            constraints: const BoxConstraints(
              maxWidth: 700,
            ),
            child: CustomTextField(
              hintText: "Your message",
              maxLines: 16,
            ),
          ),
          const SizedBox(height: 20),
          ConstrainedBox(
            constraints: const BoxConstraints(
              maxWidth: 700,
            ),
            child: SizedBox(
              width: double.maxFinite,
              child: ElevatedButton(
                onPressed: () {
                  // Ajoutez ici l'action du bouton (ex: validation du formulaire)
                  print("Get in touch button pressed");
                },
                child: const Text("Get in touch"),
              ),
            ),
          ),
          const SizedBox(height: 30),
          ConstrainedBox(
            constraints: const BoxConstraints(
              maxWidth: 300,
            ),
            child: const Divider(),
          ),
          const SizedBox(height: 15),
          Wrap(
            spacing: 12,
            runSpacing: 12,
            alignment: WrapAlignment.center,
            children: [
              buildSocialMediaIcon(SnsLinks.github, "assets/github.png"),
              buildSocialMediaIcon(SnsLinks.linkedIn, "assets/linkedin.png"),
              buildSocialMediaIcon(SnsLinks.facebook, "assets/facebook.png"),
            ],
          )
        ],
      ),
    );
  }

  InkWell buildSocialMediaIcon(String link, String assetPath) {
    return InkWell(
      onTap: () {
        js.context.callMethod('open', [link]);
      },
      child: Image.asset(
        assetPath,
        width: 28,
      ),
    );
  }

  Row buildNameEmailFieldDesktop() {
    return Row(
      children: [
        Flexible(
          child: CustomTextField(
            hintText: "Your name",
          ),
        ),
        const SizedBox(width: 15),
        Flexible(
          child: CustomTextField(
            hintText: "Your email",
          ),
        ),
      ],
    );
  }

  Column buildNameEmailFieldMobile() {
    return Column(
      children: [
        CustomTextField(
          hintText: "Your name",
        ),
        const SizedBox(height: 15),
        CustomTextField(
          hintText: "Your email",
        ),
      ],
    );
  }
}
