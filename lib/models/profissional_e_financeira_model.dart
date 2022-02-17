import 'dart:convert';

class ProfissionalEFinanceiraModel {
  String profissionalCargo = '';
  String profissionalEmpresa = '';

  String profissionalTempoDeServicoAnos = '';

  String profissionalSalario = '';
  Map<String, String> profissionalEndereco = {
    'cep': '',
    'logradouro': '',
    'numero': '',
    'complemento': '',
    'bairro': '',
    'cidade': '',
    'uf': '',
  };
  Map<String, Object> profissionalOutrasRendas = {
    'renda': 0,
    'origem': '',
  };

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
      'profissionalEmpresa': profissionalEmpresa,
      'profissionalCargo': profissionalCargo,
      'profissionalTempoDeServicoAnos': profissionalTempoDeServicoAnos,
      'profissionalSalario': profissionalSalario,
      'profissionalOutrasRendas': profissionalOutrasRendas,
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
