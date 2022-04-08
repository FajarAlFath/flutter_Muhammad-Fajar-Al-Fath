import 'package:bloc/bloc.dart';
import 'model.dart';
import 'package:meta/meta.dart';
part 'state.dart';
part 'event.dart';

class Blocks extends Bloc<Event, State> {
  Blocks() : super(ContactInitial()) {
    List<Model> listContact = [];

    on<OnAdd>((event, emit) {
      listContact.add(event.contact);
      emit(ContactLoaded(listContact));
    });
  }
}
