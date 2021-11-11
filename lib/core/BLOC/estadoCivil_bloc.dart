import 'package:bloc/bloc.dart';

enum EstadoCivilEvent { isInRelation, isntInRelationship }

class EstadoCivilBloc extends Bloc<EstadoCivilEvent, bool> {
  EstadoCivilBloc._internal() : super(false);

  static final EstadoCivilBloc instance = EstadoCivilBloc._internal();

  Stream<bool> mapEventToState(EstadoCivilEvent event) async* {
    if (event == EstadoCivilEvent.isInRelation) {
      yield state == true;
    } else if (event == EstadoCivilEvent.isntInRelationship) {
      yield state == false;
    }
  }
}
