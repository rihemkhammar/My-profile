import 'package:flutter/material.dart';
import 'package:my_profile/constant/colors.dart';


class SiteLogo extends StatelessWidget {
  const SiteLogo({super.key,this.onTap,});
 final VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
                  onTap: (){},
                  child: const Text("Rihem Khammar",style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: CustomColor.rosewPrimary,
                  ),),
                );
  }
}