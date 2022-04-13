part of 'container_bloc.dart';

@immutable
abstract class ContainerState {}

class ButtonState extends ContainerState {
  final Color color;
  final double width;
  final double height;

  ButtonState({
    required this.color,
    required this.width,
    required this.height,
  });
}
