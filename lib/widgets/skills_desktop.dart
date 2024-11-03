import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_profile/constant/colors.dart';
import 'package:my_profile/constant/skill_items.dart';

class SkillsDesktop extends StatelessWidget {
  const SkillsDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // Platforms
        ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 450.0),
          child: Wrap(
            spacing: 5.0,
            runSpacing: 5.0,
            children: [
              for (int i = 0; i < platformItems.length; i++)
                Container(
                  width: 200,
                  decoration: BoxDecoration(
                    color: CustomColor.bgLight2,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: ListTile(
                    contentPadding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                    leading: Image.asset(
                      platformItems[i]["img"] ?? 'assets/default_image.png',
                      width: 26.0,
                      errorBuilder: (context, error, stackTrace) => const Icon(Icons.error),
                    ),
                    title: Text(platformItems[i]["title"] ?? 'Titre indisponible'),
                  ),
                ),
            ],
          ),
        ),
        const SizedBox(width: 50),

        // Skills
        Flexible(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 500),
            child: Wrap(
              spacing: 10.0,
              runSpacing: 10.0,
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
          ),
        ),
      ],
    );
  }
}
