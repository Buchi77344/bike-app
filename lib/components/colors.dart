import 'package:flutter/material.dart';

class AppColors {
  static const Color primaryBlue = Color(0xFF3D9CEA);
  static const Color darkBlue = Color(0xFF242C3B);
  static const Color slate = Color(0xFF353F54);
  static const Color charcoal = Color(0xFF222834);

  static const LinearGradient blueGradient = LinearGradient(
    colors: [
      Color(0xFF34C8E8),
      Color(0xFF4E4AF2),
    ],
    stops: [0.5, 0.5], // both colors meet in the middle
  );
}
