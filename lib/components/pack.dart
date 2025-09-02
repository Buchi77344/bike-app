import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:bike/components/colors.dart';
final List<Map<String, String>> cardData = [
  {"title": "Road Bike", "text": "PEUGEOT - LR01", "amount" : "\$1,999.99" ,"image": "assets/images/pic1.png"},
  {"title": "Road Bike", "text": "PEUGEOT - LR01", "amount" : "\$1,999.99" ,"image": "assets/images/pic1.png"},

  {"title": "Road Bike", "text": "PEUGEOT - LR01", "amount" : "\$1,999.99" ,"image": "assets/images/pic1.png"},
  {"title": "Road Bike", "text": "PEUGEOT - LR01", "amount" : "\$1,999.99" ,"image": "assets/images/pic1.png"},
  {"title": "Road Bike", "text": "PEUGEOT - LR01", "amount" : "\$1,999.99" ,"image": "assets/images/pic1.png"},
  {"title": "Road Bike", "text": "PEUGEOT - LR01", "amount" : "\$1,999.99" ,"image": "assets/images/pic1.png"},

];


class ShopCard extends StatelessWidget {
 
  const ShopCard({super.key});

  @override
  Widget build(BuildContext context) {
 


    return    ListView(
       shrinkWrap: true,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Expanded(
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    ClipPath(
                      clipper: TrapeziumClipper(),
                      child: Container(
                        height: 250,
                        width: 200,
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
                    Positioned(
                      top: 20,
                      right: 30,
                      child: Image.asset('icons/Outline.png'),
                      
                      ),
                      Positioned(
                        bottom: 37,
                        child: Image.asset(
                           'images/bike2.png',
                        
                        fit: BoxFit.contain,
                        height: 250,
                          width: 200,
                        ),
                      ),
                const Positioned(
                    left: 30,
                    bottom: 35,
                   child:   Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Road Bike',style: TextStyle(
                            color: Colors.grey,
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                          ),),
                   
                           Text('PEUGEOT - LR01',style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),),
                            Text('\$1,999.99',style: TextStyle(
                              color: Colors.grey,
                              fontSize: 13,
                              fontWeight: FontWeight.bold,
                            ),),
                        ],
                      ),
                 )
                  ],
                ),
              ),
              SizedBox(width: 20,),
                Expanded(
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    ClipPath(
                      clipper: TrapeziumClipper(),
                      child: Container(
                        height: 250,
                        width: 200,
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
                        Positioned(
                      top: 20,
                      right: 30,
                      child: Image.asset('icons/Outline.png')),
                      Positioned(
                        bottom: 37,
                        child: Image.asset(
                           'images/helment.png',
                        
                        fit: BoxFit.contain,
                        height: 250,
                          width: 200,
                        ),
                      ),
                  
                 const Positioned(
                    left: 30,
                    bottom: 35,
                   child:   Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Road Bike',style: TextStyle(
                            color: Colors.grey,
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                          ),),
                   
                           Text('PEUGEOT - LR01',style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),),
                            Text('\$1,999.99',style: TextStyle(
                              color: Colors.grey,
                              fontSize: 13,
                              fontWeight: FontWeight.bold,
                            ),),
                        ],
                      ),
                 )
                  ],
                ),
              ),
            ],
          ),
        ),
          Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Expanded(
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    ClipPath(
                      clipper: TrapeziumClipper(),
                      child: Container(
                        height: 250,
                        width: 200,
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
                    Positioned(
                      top: 20,
                      right: 30,
                      child: Image.asset('icons/Outline.png'),
                      
                      ),
                      Positioned(
                        bottom: 37,
                        child: Image.asset(
                           'images/bike.png',
                        
                        fit: BoxFit.contain,
                        height: 250,
                          width: 150,
                        ),
                      ),
                const Positioned(
                    left: 30,
                    bottom: 35,
                   child:   Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Road Bike',style: TextStyle(
                            color: Colors.grey,
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                          ),),
                   
                           Text('PEUGEOT - LR01',style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),),
                            Text('\$1,999.99',style: TextStyle(
                              color: Colors.grey,
                              fontSize: 13,
                              fontWeight: FontWeight.bold,
                            ),),
                        ],
                      ),
                 )
                  ],
                ),
              ),
              SizedBox(width: 20,),
                Expanded(
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    ClipPath(
                      clipper: TrapeziumClipper(),
                      child: Container(
                        height: 250,
                        width: 200,
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
                        Positioned(
                      top: 20,
                      right: 30,
                      child: Image.asset('icons/Outline.png')),
                      Positioned(
                        bottom: 37,
                        child: Image.asset(
                           'images/bike2.png',
                        
                        fit: BoxFit.contain,
                        height: 250,
                          width: 200,
                        ),
                      ),
                  
                 const Positioned(
                    left: 30,
                    bottom: 35,
                   child:   Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Road Bike',style: TextStyle(
                            color: Colors.grey,
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                          ),),
                   
                           Text('PEUGEOT - LR01',style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),),
                            Text('\$1,999.99',style: TextStyle(
                              color: Colors.grey,
                              fontSize: 13,
                              fontWeight: FontWeight.bold,
                            ),),
                        ],
                      ),
                 )
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    )
;
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
