import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;

class ImagePrediction {

  Future<Map<String, String>> getImagePrediction(String imageUrl) async {
    const String _predictionUrl = "https://food-vision-api.herokuapp.com";
    const String _path = "/net/image/prediction";
    final Map<String, String> _parameters = {
      "image_url": imageUrl,
    };
    final Uri _uri = Uri(
      scheme: "https",
      host: _predictionUrl,
      path: _path,
      queryParameters: _parameters,
    );
    final http.Response response = await http.post(
      _uri,
      headers: {
        "Content-Type": "application/json",
      },
    );

    if (response.statusCode == 200) {
      debugPrint(response.body);
      return jsonDecode(response.body);
    } else {
      throw Exception("Failed to get image prediction");
    }
  }
}
