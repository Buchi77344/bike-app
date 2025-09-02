import 'dart:ui';
import 'package:bike/components/colors.dart';
import 'package:bike/components/pack.dart';
import 'package:bike/components/smallcard.dart';
import 'package:flutter/material.dart';

class TrapeziumWidget extends StatelessWidget {
  const TrapeziumWidget({super.key});

  @override
  Widget build(BuildContext context) {
     double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: Stack(
                alignment: Alignment.center,
                children: [
                  ClipPath(
                    clipper: TrapeziumClipper(),
                    child: Container(
                      height: 250,
                      width: 350,
                      child: BackdropFilter(
                        filter: ImageFilter.blur(sigmaX: 50, sigmaY: 50),
                        child: Container(
                          decoration: BoxDecoration(
                            color: AppColors.darkBlue.withOpacity(0.3),
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(
                              color: Colors.white.withOpacity(0.2),
                              width: 1.5,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                    Image.asset(
                       'images/bike2.png',
                    
                    fit: BoxFit.contain,
                    ),
                const  Positioned(
                    left: 25,
                    bottom: 20,
                    child: Text('30% off',style: TextStyle(
                      color: Colors.grey,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),),
                  )
                ],
              ),
              
            ),
      
            
          ),
          SizedBox(height: h*0.03,),
           SmallCard(),
            SizedBox(height: h*0.03,),
           ShopCard(),
            SizedBox(height: h*0.03,),
           ShopCard(),
            SizedBox(height: h*0.03,),
           ShopCard(),
        ],
      ),
    );
  }
}

class TrapeziumClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double bottomLeftHeight = size.height;
    double bottomRightHeight = size.height - 40;
    double radius = 20;

    Path path = Path();

    // Top-left corner
    path.moveTo(0, radius);
    path.quadraticBezierTo(0, 0, radius, 0);

    // Top edge to top-right
    path.lineTo(size.width - radius, 0);
    path.quadraticBezierTo(size.width, 0, size.width, radius);

    // Right vertical line
    path.lineTo(size.width, bottomRightHeight - radius);

    // Bottom-right corner
    path.quadraticBezierTo(
        size.width, bottomRightHeight, size.width - radius, bottomRightHeight);

    // Bottom slanted line
    path.lineTo(radius, bottomLeftHeight);

    // Bottom-left corner
    path.quadraticBezierTo(
        0, bottomLeftHeight, 0, bottomLeftHeight - radius);

    // Close path
    path.lineTo(0, radius);

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}
