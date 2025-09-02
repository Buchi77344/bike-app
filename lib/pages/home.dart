
import 'package:bike/components/angle.dart';
import 'package:bike/components/appbar.dart';
import 'package:bike/components/card.dart';
import 'package:bike/components/colors.dart';

import 'package:flutter/material.dart';


class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
  
    return const Scaffold(
      backgroundColor: AppColors.darkBlue,
      appBar:  PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: Navbar(),
      ),
      body: SafeArea(child:Stack(
        children: [
        FloatingTriangle(
          gradient: AppColors.blueGradient,
          size: 800,
          top: 120,
          left: -30,
          direction: TriangleDirection.up,
        ),
 TrapeziumWidget(),
         
        ],
      )
        
      )   
      
    );
  }
}