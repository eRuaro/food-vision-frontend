import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;

class ImagePrediction {
  final String _baseUrl = "https://food-vision-api.herokuapp.com";

  Future<Map<String, String>> getImagePrediction(String imageUrl) async {
    final String _predictionUrl = _baseUrl + "/net/image/prediction";
    final Map<String, String> _parameters = {
      "image_url": imageUrl,
    };
    final Uri _uri = Uri.parse(_predictionUrl);
    final http.Response response = await http.post(
      _uri,
      headers: {
        "Content-Type": "application/json",
      },
      body: _parameters,
    );

    if (response.statusCode == 200) {
      debugPrint(response.body);
      return json.decode(response.body);
    } else {
      throw Exception("Failed to get image prediction");
    }
  }
}
