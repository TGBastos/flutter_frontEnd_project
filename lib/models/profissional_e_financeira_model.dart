import 'dart:convert';

class ProfissionalEFinanceiraModel {
  String profissionalCargo = '';
  String profissionalEmpresa = '';
  String profissonalTelefoneDDD = '';
  String profissionalTelefoneNumero = '';
  String profissionalDataAdmissao = '';

  String profissionalSalario = '';
  String profissionalCep = '';
  String profissionalLogradouro = '';
  String profissionalNumero = '';
  String profissionalComplemento = '';
  String profissionalBairro = '';
  String profissionalCidade = '';
  String profissionalUF = '';

  int profissionalOutraRendaValor = 0;
  String profissionalOutraRendaOrigem = '';

  ProfissionalEFinanceiraModel({
    profissionalEmpresa,
    profissionalCEP,
    profissionalComplemento,
    profissionalNumero,
    profissionalCargo,
    profissionalMatricula,
    profissionalEndereco,
    profissionalBairro,
    profissionalTempoDeServicoAnos,
    profissionalSalario,
    profissionalOutrasRendas,
  });
}
