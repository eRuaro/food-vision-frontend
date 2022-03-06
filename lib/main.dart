import 'package:flutter/material.dart';
import 'package:food_vision_frontend/cubits/food_vision_prediction/food_vision_prediction_cubit.dart';
import 'package:food_vision_frontend/views/home/home_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider<FoodVisionPredictionCubit>(
      create: (context) => FoodVisionPredictionCubit(),
      child: MaterialApp(
          title: 'Food Vision Frontend',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          initialRoute: '/',
          routes: {
            "/": (context) => const HomeScreen(),
          }),
    );
  }
}
