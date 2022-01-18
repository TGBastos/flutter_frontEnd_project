import 'dart:html';

import 'package:bloc/bloc.dart';

abstract class EstadoCivilEvent {}

class relacionamentoVerdadeiro extends EstadoCivilEvent {}

class relacionamentoFalso extends EstadoCivilEvent {}

class EstadoCivilBloc extends Bloc<EstadoCivilEvent, bool> {
  EstadoCivilBloc._internal() : super(false) {
    on<relacionamentoVerdadeiro>((event, emit) => emit(state == true));
    on<relacionamentoFalso>((event, emit) => emit(state == false));
  }

  static final EstadoCivilBloc instance = EstadoCivilBloc._internal();
}
