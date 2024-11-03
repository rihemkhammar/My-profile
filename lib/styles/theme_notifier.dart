import 'package:flutter/material.dart';

// Notifier de thème pour gérer le mode clair/sombre
class ThemeNotifier extends ValueNotifier<ThemeMode> {
  ThemeNotifier() : super(ThemeMode.light); // Valeur par défaut

  // Méthode pour changer le thème
  void setTheme(ThemeMode mode) {
    value = mode; // Met à jour la valeur du thème
  }
}
