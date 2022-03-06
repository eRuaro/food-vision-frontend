import 'package:flutter/material.dart';
import 'package:food_vision_frontend/services/image_prediction.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    const String url =
        "https://tallypress.com/wp-content/uploads/2017/11/7-irresistible-chocolate-cakes-you-should-try-in-klang-valley.jpg";
    ImagePrediction().getImagePrediction(url);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Food Vision: Predicts Food Classification based on Image URL",
        ),
      ),
      body: Container(),
    );
  }
}
