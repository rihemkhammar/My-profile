
import 'package:flutter/material.dart';
import 'package:my_profile/constant/colors.dart';
import 'package:my_profile/widgets/download_button.dart';



class MainDesktop extends StatelessWidget {
  const MainDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    final screenHeight = screenSize.height;
     
    return Container(
      
                margin: const EdgeInsets.symmetric(horizontal: 20.0),
                height: screenHeight/1.2,
                constraints: BoxConstraints(minHeight:350.0 ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                 children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                       const Text.rich(
                      TextSpan(
                        text: "Hi,I'm Rihem Khammar\n", // Texte de salutation
                        style: TextStyle(
                          fontSize: 24,
                          height: 1.5,
                          fontWeight: FontWeight.bold,
                          color: CustomColor.whitePrimary,
                        ),
                        children: [
                          TextSpan(
                            text: "Currently a third-year engineering student at the National School of Computer Science (ENSI), \nspecializing in Embedded Systems Software, I am also enrolled in \na master’s research program in Smart Systems in Computer Science",
                            style: TextStyle(
                              fontSize: 15, 
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
                   Image.asset(
                    "assets/bleu.png",
                    width: screenWidth/2,
                    
                    ),
                 ], 
                ),
              );
  }
}