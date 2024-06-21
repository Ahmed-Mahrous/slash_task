import 'dart:convert';
import 'package:bloc/bloc.dart';
import 'package:flutter/services.dart';
import 'package:slash_task/features/slash_home/data/models/product_model.dart';
import 'package:slash_task/features/slash_home/presentation/cubit/home_cubit_states.dart';

class HomeCubit extends Cubit<HomeCubitStates> {
  HomeCubit() : super(InitialState());
  int currentIndex = 0;
  int carouselCurrentIndex = 0;
  ProductCategory? productCategory;
  void setTab(int index) {
    currentIndex = index;
    emit(NavBarViewState());
  }

//set state for carousel slider
  void setCarouselChange(int index) {
    carouselCurrentIndex = index;
    emit(CarouselSliderState());
  }

//load dummyData.json file
  Future<String> loadJson() async {
    return await rootBundle.loadString('assets/dummyData.json');
  }

//fetch data from json file
  Future<void> fetchProducts() async {
    try {
      emit(ProductLoading());
      final jsonString = await loadJson();
      final data = json.decode(jsonString);
      productCategory = ProductCategory.fromJson(data);
      emit(ProductLoaded());
    } catch (e) {
      emit(ProductError(e.toString()));
    }
  }
}
