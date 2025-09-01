import 'package:bike/components/colors.dart';
import 'package:flutter/material.dart';



class Background extends StatelessWidget {
  const Background({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: AppColors.darkBlue,
    );
  }
}