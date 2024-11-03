import 'dart:html' as html;
import 'package:flutter/material.dart';
import 'package:my_profile/constant/colors.dart';


class DownloadButton extends StatelessWidget {
  void downloadFile() {
    const url = 'assets/Rihemcv.pdf';
    
    // Crée un élément Anchor pour le téléchargement
    final anchorElement = html.AnchorElement(href: url)
      ..setAttribute("download", "Rihemcv.pdf")
      ..click(); // Lance le téléchargement
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: downloadFile,
      child: const Text('Get CV',
      style: TextStyle(
        color: CustomColor.rosewPrimary,
      ),),

    );
  }
}
