import 'package:cpf_cnpj_validator/cpf_validator.dart';
import 'package:rio_das_pedras_front_end/core/common/interfaces/Login.dart';

class InvalidCPF extends Error {}

class CPF implements Login {
  String? _rawData;

  CPF(String ClientCPF) {
    this._rawData = ClientCPF;
    // if (!CPFValidator.isValid(_rawData)) throw (InvalidCPF());
  }

  String formatedToString() => CPFValidator.format(_rawData!);

  @override
  String toString() => _rawData!;
}
