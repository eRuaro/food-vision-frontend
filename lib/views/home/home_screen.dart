import 'package:flutter/material.dart';
import 'package:food_vision_frontend/models/color_palette.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorPalette.lavanderWeb,
      body: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.2, 
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Text(
              'Food Vision Front-End',
              style: GoogleFonts.spaceMono(
                fontSize: 44,
                fontWeight: FontWeight.bold,
                color: ColorPalette.carribeanGreen,
              ),
            ),
          ),
        ]        
      ),
    );
  }
}
