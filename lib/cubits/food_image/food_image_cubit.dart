import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'food_image_state.dart';

class FoodImageCubit extends Cubit<FoodImageState> {
  FoodImageCubit() : super(const FoodImageInitial());

  void getImage(String imageUrl) {
    emit(const FoodImageInitial());
    try {
      if (imageUrl.isEmpty) {
        emit(const FoodImageEmptyUrl());
      } else {
        emit(const FoodImageLoading());
        emit(
          FoodImageLoaded(
            imageUrl: imageUrl,
          ),
        );
      }
    } catch (e) {
      emit(
        FoodImageError(
          message: e.toString(),
        ),
      );
    }
  }
}
