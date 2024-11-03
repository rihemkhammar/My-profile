// import 'dart:io';
// import 'package:file_picker/file_picker.dart';

// // Fonction pour sélectionner un fichier PDF
// Future<String?> selectFile() async {
//   FilePickerResult? result = await FilePicker.platform.pickFiles(
//     type: FileType.custom,
//     allowedExtensions: ['pdf'], // Limite aux fichiers PDF
//   );

//   if (result != null && result.files.isNotEmpty) {
//     // Récupère le chemin du fichier sélectionné
//     String? selectedFilePath = result.files.single.path;

//     // Retourne le chemin du fichier sélectionné
//     return 'C:/Users/rihem/my_portfolio/assets/cv-rk.pdf' ; 
//   } else {
//     // L'utilisateur a annulé la sélection, retourne le chemin par défaut avec des slashes
//     return "errer" ; 
//   }
// }



