import 'package:bike/components/colors.dart';
import 'package:flutter/material.dart';
import 'dart:ui';

class SmallCard extends StatelessWidget {
  const SmallCard({super.key});

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Center(
      child: Stack(
        children: [
          Row(
           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: h * 0.05 +10,
                width: w * 0.05 + 30,
                decoration: BoxDecoration(
                  color: AppColors.primaryBlue,
                  borderRadius: BorderRadius.circular(10),
                 
                ),
              
                child: const Center(
                  child: Text('All',style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),),
                ),
              ),
                // for ImageFilter

          Transform.translate(
            offset: const Offset(0, -6),
            child: Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10), // glass edges
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 50, sigmaY: 50), // blur background
                    child: Container(
                      height: h * 0.05 + 10,
                      width: w * 0.05 + 30,
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.09), // transparent white
                        borderRadius: BorderRadius.circular(5),
                        
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.black26,
                            blurRadius: 8,
                            offset: Offset(2, 2),
                          ),
                        ],
                      ),
                      child:  Center(
                        child: Image.asset(
                         'icons/bicycle.png',
                         fit: BoxFit.contain,
                         height: h * 0.05 + 10,
                         width: w * 0.05 + 30,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),

            Transform.translate(
            offset: const Offset(0, -20),
            child: Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10), // glass edges
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 50, sigmaY: 50), // blur background
                    child: Container(
                      height: h * 0.05 + 10,
                      width: w * 0.05 + 30,
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.09), // transparent white
                        borderRadius: BorderRadius.circular(5),
                        
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.black26,
                            blurRadius: 8,
                            offset: Offset(2, 2),
                          ),
                        ],
                      ),
                      child:  Center(
                        child: Image.asset(
                         'icons/person.fill.png',
                         fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),


 Transform.translate(
            offset: const Offset(0, -25),
            child: Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10), // glass edges
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 50, sigmaY: 50), // blur background
                    child: Container(
                      height: h * 0.05 + 10,
                      width: w * 0.05 + 30,
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.09), // transparent white
                        borderRadius: BorderRadius.circular(5),
                        
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.black26,
                            blurRadius: 8,
                            offset: Offset(2, 2),
                          ),
                        ],
                      ),
                      child:  Center(
                        child: Image.asset(
                         'icons/Mountain.png',
                         fit: BoxFit.fill,
                         height: h * 0.05 + 10,
                         width: w * 0.05 + 30,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),


 Transform.translate(
            offset: const Offset(0, -30),
            child: Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10), // glass edges
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 50, sigmaY: 50), // blur background
                    child: Container(
                      height: h * 0.05 + 10,
                      width: w * 0.05 + 30,
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.09), // transparent white
                        borderRadius: BorderRadius.circular(5),
                        
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.black26,
                            blurRadius: 8,
                            offset: Offset(2, 2),
                          ),
                        ],
                      ),
                      child:  Center(
                        child: Image.asset(
                           'icons/Accessory.png',
                           height: h * 0.05 + 10,
                           width: w * 0.05 + 30,
                        
                         fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),





            ],
          )
        ],
      ),
    );
  }
}