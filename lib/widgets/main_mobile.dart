
import 'package:flutter/material.dart';
import 'package:my_profile/constant/colors.dart';
import 'package:my_profile/widgets/download_button.dart';


class MainMobile extends StatelessWidget {
  const MainMobile({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    
    
    return  SingleChildScrollView(
                  padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 5.0),
                 
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ShaderMask(
                      shaderCallback: (bounds) {
                        return LinearGradient(colors: [
                          CustomColor.scaffoldBg.withOpacity(0.6),
                          CustomColor.scaffoldBg.withOpacity(0.6)
                        ]).createShader(bounds);
                      },
                      blendMode: BlendMode.srcATop,
                      child: Image.asset("assets/bleu.png", width: screenWidth,)),
                      const SizedBox(height: 50.0,),
                    const Text.rich(
                      TextSpan(
                        text: "Hi,\nI'm Rihem Khammar\n", // Texte de salutation
                        style: TextStyle(
                          fontSize: 24,
                          height: 1.5,
                          fontWeight: FontWeight.bold,
                          color: CustomColor.whitePrimary,
                        ),
                        children: [
                          TextSpan(
                            text: "Currently a third-year engineering student at the National School of Computer Science (ENSI), specializing in Embedded Systems Software, \nI am also enrolled in a master’s research program in Smart Systems in Computer Science",
                            style: TextStyle(
                              fontSize: 10, // Définir une taille plus petite ici
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ],
                      ),
                    ),

                      
                      const SizedBox(height: 15,),
                      SizedBox(
                        width: 190.0,
                         child: DownloadButton(),
                      )
                      

                    
                    ],
                  
                ),
              );
  }
}