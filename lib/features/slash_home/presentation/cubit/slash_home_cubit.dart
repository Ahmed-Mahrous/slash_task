import 'package:bloc/bloc.dart';
import 'package:slash_task/features/slash_home/presentation/cubit/slash_home_states.dart';

class HomeCubit extends Cubit<HomeStates> {
  HomeCubit() : super(InitialState());
}
