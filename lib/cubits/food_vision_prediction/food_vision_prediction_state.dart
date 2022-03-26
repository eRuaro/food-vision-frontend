part of 'food_vision_prediction_cubit.dart';

abstract class FoodVisionPredictionState extends Equatable {
  const FoodVisionPredictionState();
}

class FoodVisionPredictionInitial extends FoodVisionPredictionState {
  const FoodVisionPredictionInitial();

  @override
  List<Object> get props => [];
}

class FoodVisionPredictionLoading extends FoodVisionPredictionState {
  const FoodVisionPredictionLoading();

  @override
  List<Object> get props => [];
}

class FoodVisionPredictionEmptyUrl extends FoodVisionPredictionState {
  const FoodVisionPredictionEmptyUrl();

  @override 
  List<Object> get props => [];
}

class FoodVisionPredictionLoaded extends FoodVisionPredictionState {
  const FoodVisionPredictionLoaded({
    required this.prediction,
    required this.confidenceScore,
  });

  final String prediction;
  final String confidenceScore;

  @override
  List<Object> get props => [prediction, confidenceScore];
}

class FoodVisionPredictionError extends FoodVisionPredictionState {
  const FoodVisionPredictionError({
    required this.message,
  });

  final String message;

  @override
  List<Object> get props => [message];
}
