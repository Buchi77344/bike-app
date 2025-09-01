import 'package:bike/components/colors.dart';
import 'package:flutter/material.dart';


class Navbar extends StatelessWidget {
  const Navbar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      title: const Text(
        'Chose Your Bike',
        style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        
      ),
     
      actions: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 40,
            width: 40,
            
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: AppColors.primaryBlue,
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.2),
                  spreadRadius: 1,
                  blurRadius: 5,
                  offset: const Offset(0, 3), // changes position of shadow
                ),
              ],
            ),
            child: IconButton(
              
              icon: const Icon(Icons.search, color: Colors.white),
              onPressed: () {
                // Handle search button press
              },
            ),
          ),
        ),
      ],
    );
  }
}