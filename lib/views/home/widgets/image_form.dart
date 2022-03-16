import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_vision_frontend/cubits/food_image/food_image_cubit.dart';
import 'package:food_vision_frontend/cubits/food_vision_prediction/food_vision_prediction_cubit.dart';
import 'package:food_vision_frontend/models/color_palette.dart';
import 'package:google_fonts/google_fonts.dart';

class ImageForm extends StatefulWidget {
  const ImageForm({Key? key}) : super(key: key);

  @override
  State<ImageForm> createState() => _ImageFormState();
}

class _ImageFormState extends State<ImageForm> {
  final TextEditingController textController = TextEditingController();

  @override
  void dispose() {
    textController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.5,
            child: TextFormField(
              controller: textController,
              decoration: InputDecoration(
                fillColor: ColorPalette.lightSlateGrey,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                hintText: "Enter image URL",
                hintStyle: GoogleFonts.spaceMono(
                  fontSize: 18,
                  color: ColorPalette.carribeanGreen,
                ),
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.02,
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: SizedBox(
              width: MediaQuery.of(context).size.width * 0.5,
              height: MediaQuery.of(context).size.height * 0.07,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: ColorPalette.lightSlateGrey,
                ),
                onPressed: () {
                  debugPrint(textController.text);
                  BlocProvider.of<FoodImageCubit>(context)
                      .getImage(textController.text);
                  BlocProvider.of<FoodVisionPredictionCubit>(context)
                      .getImagePrediction(textController.text);
                },
                child: Text(
                  "Get image prediction",
                  style: GoogleFonts.robotoMono(
                    color: ColorPalette.carribeanGreen,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
