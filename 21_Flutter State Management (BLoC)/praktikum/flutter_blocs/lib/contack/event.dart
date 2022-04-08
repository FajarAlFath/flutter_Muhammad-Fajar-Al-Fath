part of 'bloc.dart';

@immutable
abstract class Event {}

class OnAdd extends Event {
  final Model contact;
  OnAdd(this.contact);
}

class OnFethContack extends Event {}
