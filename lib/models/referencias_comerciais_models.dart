import 'dart:convert';

class ReferenciaComercialModel {
  String referenciaComercialEmpresa1 = '';
  String referenciaComercialEmpresa2 = '';
  String referenciaComercialDDDTelefone1 = '';
  String referenciaComercialTelefone1 = '';
  String referenciaComercialDDDTelefone2 = '';
  String referenciaComercialTelefone2 = '';

  ReferenciaComercialModel({
    referenciaComercialEmpresa1,
    referenciaComercialEmpresa2,
    referenciaComercialDDDTelefone1,
    referenciaComercialTelefone1,
    referenciaComercialDDDTelefone2,
    referenciaComercialTelefone2,
  });

  Map<String, dynamic> toMap() {
    return {
      'referenciaComercialEmpresa1': referenciaComercialEmpresa1,
      'referenciaComercialEmpresa2': referenciaComercialEmpresa2,
      'referenciaComercialDDDTelefone1': referenciaComercialDDDTelefone1,
      'referenciaComercialTelefone1': referenciaComercialTelefone1,
      'referenciaComercialDDDTelefone2': referenciaComercialDDDTelefone2,
      'referenciaComercialTelefone2': referenciaComercialTelefone2,
    };
  }

  factory ReferenciaComercialModel.fromMap(Map<String, dynamic> map) {
    return ReferenciaComercialModel(
      referenciaComercialEmpresa1: map['referenciaComercialEmpresa1'] ?? '',
      referenciaComercialEmpresa2: map['referenciaComercialEmpresa2'] ?? '',
      referenciaComercialDDDTelefone1:
          map['referenciaComercialDDDTelefone1'] ?? '',
      referenciaComercialTelefone1: map['referenciaComercialTelefone1'] ?? '',
      referenciaComercialDDDTelefone2:
          map['referenciaComercialDDDTelefone2'] ?? '',
      referenciaComercialTelefone2: map['referenciaComercialTelefone2'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory ReferenciaComercialModel.fromJson(String source) =>
      ReferenciaComercialModel.fromMap(json.decode(source));
}
