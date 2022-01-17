import 'dart:convert';

class ProfissionalEFinanceiraModel {
  String profissionalEmpresa = '';
  String profissionalCEP = '';
  String profissionalComplemento = '';
  String profissionalNumero = '';
  String profissionalCargo = '';
  String profissionalMatricula = '';
  String profissionalEndereco = '';
  String profissionalBairro = '';
  String profissionalTempoDeServicoAnos = '';
  String profissionalTempoDeServicoMeses = '';
  String profissionalSalario = '';
  String profissionalOutrasRendas = '';

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
    profissionalTempoDeServicoMeses,
    profissionalSalario,
    profissionalOutrasRendas,
  });
  Map<String, dynamic> toMap() {
    return {
      'profissionalEmpresa': profissionalEmpresa,
      'profissionalCEP': profissionalCEP,
      'profissionalComplemento': profissionalComplemento,
      'profissionalNumero': profissionalNumero,
      'profissionalCargo': profissionalCargo,
      'profissionalMatricula': profissionalMatricula,
      'profissionalEndereco': profissionalEndereco,
      'profissionalBairro': profissionalBairro,
      'profissionalTempoDeServicoAnos': profissionalTempoDeServicoAnos,
      'profissionalTempoDeServicoMeses': profissionalTempoDeServicoMeses,
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
      profissionalTempoDeServicoMeses:
          map['profissionalTempoDeServicoMeses'] ?? '',
      profissionalSalario: map['profissionalSalario'] ?? '',
      profissionalOutrasRendas: map['profissionalOutrasRendas'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory ProfissionalEFinanceiraModel.fromJson(String source) =>
      ProfissionalEFinanceiraModel.fromMap(json.decode(source));
}
