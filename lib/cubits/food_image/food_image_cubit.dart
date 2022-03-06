import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'food_image_state.dart';

class FoodImageCubit extends Cubit<FoodImageState> {
  FoodImageCubit() : super(FoodImageInitial());
}
