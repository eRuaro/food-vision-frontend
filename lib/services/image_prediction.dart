import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:food_vision_frontend/models/food_vision_prediction.dart';
import 'package:http/http.dart' as http;

class ImagePrediction {
  Future<FoodVisionPrediction> getImagePrediction(String imageUrl) async {
    const String _predictionUrl = "food-vision-api.herokuapp.com";
    const String _path = "/net/image/prediction/";
    final Map<String, String> _parameters = {
      "image_link": imageUrl,
    };
    final Uri _uri = Uri(
      scheme: "https",
      host: _predictionUrl,
      path: _path,
      queryParameters: _parameters,
    );
    debugPrint(_uri.toString());
    final http.Response response = await http.post(
      _uri,
    );

    if (response.statusCode == 200) {
      final parsedData = jsonDecode(response.body);
      debugPrint(parsedData.toString());
      final FoodVisionPrediction modelPrediction =
          FoodVisionPrediction.fromJson(parsedData);
      debugPrint("Model Prediction: ${modelPrediction.classPrediction}");
      debugPrint("Model Confidence: ${modelPrediction.confidenceScore}");
      return modelPrediction;
    } else {
      throw Exception("Failed to get image prediction");
    }
  }
}
