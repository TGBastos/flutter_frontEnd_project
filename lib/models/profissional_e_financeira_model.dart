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
  Map<String, dynamic> toMap() {
    return {
      'profissao': 0,
      'razaoSocial': profissionalEmpresa,
      'telefoneDDD': profissonalTelefoneDDD,
      'telefoneNumero': profissionalTelefoneNumero,
      'cargo': profissionalCargo,
      'salario': profissionalSalario,
      'dataAdmissao': profissionalDataAdmissao,
      'endereco': {
        'cep': profissionalCep,
        'logradouro': profissionalLogradouro,
        'numero': profissionalNumero,
        'complemento': profissionalComplemento,
        'bairro': profissionalBairro,
        'cidade': profissionalCidade,
        'uf': profissionalUF,
      }
    };
  }

  factory ProfissionalEFinanceiraModel.fromMap(Map<String, dynamic> map) {
    return ProfissionalEFinanceiraModel(
      profissionalEmpresa: map['profissionalEmpresa'] ?? '',
      profissionalCEP: map['profissionalCEP'] ?? '',
      profissionalComplemento: map['profissionalComplemento'] ?? '',
      profissionalNumero: map['profissionalNumero'] ?? '',
      profissionalCargo: map['profissionalCargo'] ?? '',
      profissionalMatricula: map['profissionalMatricula'] ?? '',
      profissionalEndereco: map['profissionalEndereco'] ?? '',
      profissionalBairro: map['profissionalBairro'] ?? '',
      profissionalTempoDeServicoAnos:
          map['profissionalTempoDeServicoAnos'] ?? '',
      profissionalSalario: map['profissionalSalario'] ?? '',
      profissionalOutrasRendas: map['profissionalOutrasRendas'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory ProfissionalEFinanceiraModel.fromJson(String source) =>
      ProfissionalEFinanceiraModel.fromMap(json.decode(source));
}
