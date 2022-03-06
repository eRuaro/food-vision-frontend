import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'food_vision_prediction_state.dart';

class FoodVisionPredictionCubit extends Cubit<FoodVisionPredictionState> {
  FoodVisionPredictionCubit() : super(FoodVisionPredictionInitial());
}
