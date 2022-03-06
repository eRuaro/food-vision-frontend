part of 'food_image_cubit.dart';

abstract class FoodImageState extends Equatable {
  const FoodImageState();

  @override
  List<Object> get props => [];
}

class FoodImageInitial extends FoodImageState {
  const FoodImageInitial();

  @override
  List<Object> get props => [];
}

class FoodImageEmptyUrl extends FoodImageState {
  const FoodImageEmptyUrl();

  @override 
  List<Object> get props => [];
}

class FoodImageLoading extends FoodImageState {
  const FoodImageLoading();

  @override 
  List<Object> get props => [];
}

class FoodImageLoaded extends FoodImageState {
  final String imageUrl;

  const FoodImageLoaded({required this.imageUrl});

  @override 
  List<Object> get props => [imageUrl];
}

class FoodImageError extends FoodImageState {
  final String message;

  const FoodImageError({required this.message});

  @override 
  List<Object> get props => [message];
}
