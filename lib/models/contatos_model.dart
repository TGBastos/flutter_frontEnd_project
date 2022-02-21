import 'dart:convert';

class ContatosModel {
  String email = '';
  String confirmaEmail = '';
  String dddTelefoneFixo = '';
  String celularDDD = '';
  String celular = '';
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
      'telefoneDDD': int.parse(dddTelefoneFixo),
      'telefoneNumero': int.parse(telefoneFixo),
      'celularDDD': int.parse(celularDDD),
      'celularNumero': int.parse(celular),
      'email': email,
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
