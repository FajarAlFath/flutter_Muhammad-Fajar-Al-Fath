part of 'bloc.dart';

@immutable
abstract class State {}

class ContactInitial extends State {}

class ContactLoaded extends State {
  final List<Model> contact;
  ContactLoaded(this.contact);
}
