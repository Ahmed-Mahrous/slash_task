import 'package:bloc/bloc.dart';
import 'package:slash_task/features/slash_home/presentation/cubit/home_cubit_states.dart';

class HomeCubit extends Cubit<HomeCubitStates> {
  HomeCubit() : super(InitialState());
  int currentIndex = 0;
  int carouselCurrentIndex = 0;
  void setTab(int index) {
    currentIndex = index;
    emit(NavBarViewState());
  }

  void setCarouselChange(int index) {
    carouselCurrentIndex = index;
    emit(CarouselSliderState());
  }
}
