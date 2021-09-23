import 'package:cpf_cnpj_validator/cpf_validator.dart';
import 'package:flutter/material.dart';
import 'package:rio_das_pedras_front_end/core/common/interfaces/Login.dart';
import 'package:test_api/expect.dart';

class InvalidCPF extends Error {}

class CPF implements Login {
  final String _rawData;

  CPF(this._rawData) {
    if (!CPFValidator.isValid(_rawData)) throw (InvalidCPF());
  }

  String formatedToString() => CPFValidator.format(_rawData);

  @override
  String toString() => _rawData;
}
