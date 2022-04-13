import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

part 'container_event.dart';
part 'container_state.dart';

class ContainerBloc extends Bloc<ContainerEvent, ContainerState> {
  ContainerBloc()
      : super(ButtonState(color: Colors.green, width: 100, height: 100)) {
    on<ButtonEvent>((event, emit) {
      emit(ButtonState(
          color: event.color, width: event.width, height: event.height));
    });
  }
}
