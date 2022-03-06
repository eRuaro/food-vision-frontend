import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:food_vision_frontend/models/food_vision_prediction.dart';
import 'package:food_vision_frontend/services/image_prediction.dart';

part 'food_vision_prediction_state.dart';

class FoodVisionPredictionCubit extends Cubit<FoodVisionPredictionState> {
  FoodVisionPredictionCubit() : super(const FoodVisionPredictionInitial());

  void getImagePrediction(String url) async {
    try {
      emit(const FoodVisionPredictionLoading());
      if (url.isEmpty) {
        emit(const FoodVisionPredictionEmptyUrl());
      } else {
        FoodVisionPrediction prediction =
            await ImagePrediction().getImagePrediction(url);
        emit(
          FoodVisionPredictionLoaded(
            prediction: prediction.classPrediction,
            confidenceScore: prediction.confidenceScore,
          ),
        );
      }
    } catch (e) {
      emit(
        FoodVisionPredictionError(
          message: e.toString(),
        ),
      );
    }
  }
}
