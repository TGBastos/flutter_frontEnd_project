import 'dart:convert';

class Permissoes {
  bool envioEmail = false;
  bool envioSMS = false;
  bool envioOfertas = false;

  Permissoes({
    envioEmail,
    envioSMS,
    envioOfertas,
  });

  Map<String, dynamic> toMap() {
    return {
      'envioEmail': envioEmail,
      'envioSMS': envioSMS,
      'envioOfertas': envioOfertas,
    };
  }

  factory Permissoes.fromMap(Map<String, dynamic> map) {
    return Permissoes(
      envioEmail: map['envioEmail'] ?? false,
      envioSMS: map['envioSMS'] ?? false,
      envioOfertas: map['envioOfertas'] ?? false,
    );
  }

  String toJson() => json.encode(toMap());

  factory Permissoes.fromJson(String source) =>
      Permissoes.fromMap(json.decode(source));
}
