import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_profile/constant/colors.dart';
import 'package:my_profile/constant/skill_items.dart';

class SkillsMobile extends StatelessWidget {
  const SkillsMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(maxHeight: 500.0),
      child: Column(
        children: [
          // platform
          for (int i = 0; i < platformItems.length; i++)
            Container(
              margin: const EdgeInsets.only(bottom: 5.0),
              width: double.infinity,
              decoration: BoxDecoration(
                color: CustomColor.bgLight2,
                borderRadius: BorderRadius.circular(5.0),
              ),
              child: ListTile(
                contentPadding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                leading: Image.asset(
                  platformItems[i]["img"] ?? 'assets/default_image.png',
                  width: 26.0,
                  errorBuilder: (context, error, stackTrace) => const Icon(Icons.error),
                ),
                title: Text(platformItems[i]["title"] ?? 'Titre indisponible'),
              ),
            ),
          const SizedBox(height: 50),
          Wrap(
            spacing: 10.0,
            runSpacing: 10.0,
            alignment: WrapAlignment.center,
            children: [
              for (int i = 0; i < skillitems.length; i++)
                Chip(
                  padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 16.0),
                  backgroundColor: CustomColor.bgLight1,
                  label: Text(skillitems[i]["title"] ?? 'Titre indisponible'),
                  avatar: Image.asset(
                    skillitems[i]["img"] ?? 'assets/default_image.png',
                    errorBuilder: (context, error, stackTrace) => const Icon(Icons.error),
                  ),
                ),
            ],
          ),
        ],
      ),
    );
  }
}
