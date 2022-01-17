import 'dart:convert';

class ContatosModel {
  String email = '';
  String confirmaEmail = '';
  String dddTelefone = '';
  String dddTelefoneFixo = '';
  String telefone = '';
  String telefoneFixo = '';
  ContatosModel(
      {email,
      confirmaEmail,
      dddTelefone,
      dddTelefoneFixo,
      telefone,
      telefoneFixo});

  Map<String, dynamic> toMap() {
    return {
      'email': email,
      'confirmaEmail': confirmaEmail,
      'dddTelefone': dddTelefone,
      'dddTelefoneFixo': dddTelefoneFixo,
      'telefone': telefone,
      'telefoneFixo': telefoneFixo,
    };
  }

  factory ContatosModel.fromMap(Map<String, dynamic> map) {
    return ContatosModel(
      email: map['email'] ?? '',
      confirmaEmail: map['confirmaEmail'] ?? '',
      dddTelefone: map['dddTelefone'] ?? '',
      dddTelefoneFixo: map['dddTelefoneFixo'] ?? '',
      telefone: map['telefone'] ?? '',
      telefoneFixo: map['telefoneFixo'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory ContatosModel.fromJson(String source) =>
      ContatosModel.fromMap(json.decode(source));
}
