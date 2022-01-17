import 'dart:convert';

class ReferenciasPessoaisModel {
  String referenciaPessoalNome1 = '';
  String referenciaPessoalNome2 = '';
  String referenciaPessoalDDDTelefone1 = '';
  String referenciaPessoalTelefone1 = '';
  String referenciaPessoalDDDTelefone2 = '';
  String referenciaPessoalTelefone2 = '';

  ReferenciasPessoaisModel({
    referenciaPessoalNome1,
    referenciaPessoalNome2,
    referenciaPessoalDDDTelefone1,
    referenciaPessoalTelefone1,
    referenciaPessoalDDDTelefone2,
    referenciaPessoalTelefone2,
  });

  Map<String, dynamic> toMap() {
    return {
      'referenciaPessoalNome1': referenciaPessoalNome1,
      'referenciaPessoalNome2': referenciaPessoalNome2,
      'referenciaPessoalDDDTelefone1': referenciaPessoalDDDTelefone1,
      'referenciaPessoalTelefone1': referenciaPessoalTelefone1,
      'referenciaPessoalDDDTelefone2': referenciaPessoalDDDTelefone2,
      'referenciaPessoalTelefone2': referenciaPessoalTelefone2,
    };
  }

  factory ReferenciasPessoaisModel.fromMap(Map<String, dynamic> map) {
    return ReferenciasPessoaisModel(
      referenciaPessoalNome1: map['referenciaPessoalNome1'] ?? '',
      referenciaPessoalNome2: map['referenciaPessoalNome2'] ?? '',
      referenciaPessoalDDDTelefone1: map['referenciaPessoalDDDTelefone1'] ?? '',
      referenciaPessoalTelefone1: map['referenciaPessoalTelefone1'] ?? '',
      referenciaPessoalDDDTelefone2: map['referenciaPessoalDDDTelefone2'] ?? '',
      referenciaPessoalTelefone2: map['referenciaPessoalTelefone2'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory ReferenciasPessoaisModel.fromJson(String source) =>
      ReferenciasPessoaisModel.fromMap(json.decode(source));
}
