import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

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
