part of 'container_bloc.dart';

@immutable
abstract class ContainerEvent {}


class ButtonEvent extends ContainerEvent {

final  Color color;
final double width;
final double height;

  ButtonEvent({
    required this.color,
    required this.width,
    required this.height,
  });
}

