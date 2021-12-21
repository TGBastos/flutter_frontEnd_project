import 'package:cpf_cnpj_validator/cpf_validator.dart';
import '../../models/user_model.dart';

class InvalidCPF extends Error {}

class CPF implements UserModel {
  String? _rawData;

  CPF(String ClientCPF) {
    this._rawData = ClientCPF;
    // if (!CPFValidator.isValid(_rawData)) throw (InvalidCPF());
  }

  String formatedToString() => CPFValidator.format(_rawData!);

  @override
  String toString() => _rawData!;

  @override
  noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}
