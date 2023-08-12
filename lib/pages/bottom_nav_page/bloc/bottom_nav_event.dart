part of 'bottom_nav_bloc.dart';

abstract class BottomNavEvent {
  const BottomNavEvent();
}

class NavigateEvent extends BottomNavEvent {
  final int index;

  const NavigateEvent(this.index): super();
}