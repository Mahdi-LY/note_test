import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'counter_state.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterInit());

  static CounterCubit get(BuildContext context) {
    return BlocProvider.of(context);
  }

  int num = 0;
  void add() {
    num++;
    emit(CounterAdd());
  }

  void remove() {
    num--;
    emit(Counterremove());
  }


}

