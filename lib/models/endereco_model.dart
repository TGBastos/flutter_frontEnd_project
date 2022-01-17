import 'dart:convert';

class EnderecoModel {
  String enderecoCidade = '';
  String enderecoCep = '';
  String enderecoUf = '';
  String enderecoComplemento = '';
  String enderecoNumero = '';
  String endereco = '';
  String enderecoBairro = '';
  String enderecoTempoDeResidenciaAnos = '';
  String enderecoTempoDeResidenciaMeses = '';

  EnderecoModel({
    enderecoCidade,
    enderecoCep,
    enderecoUf,
    enderecoComplemento,
    enderecoNumero,
    endereco,
    enderecoBairro,
    enderecoTempoDeResidenciaAnos,
    enderecoTempoDeResidenciaMeses,
  });

  Map<String, dynamic> toMap() {
    return {
      'enderecoCidade': enderecoCidade,
      'enderecoCep': enderecoCep,
      'enderecoUf': enderecoUf,
      'enderecoComplemento': enderecoComplemento,
      'enderecoNumero': enderecoNumero,
      'endereco': endereco,
      'enderecoBairro': enderecoBairro,
      'enderecoTempoDeResidenciaAnos': enderecoTempoDeResidenciaAnos,
      'enderecoTempoDeResidenciaMeses': enderecoTempoDeResidenciaMeses,
    };
  }

  factory EnderecoModel.fromMap(Map<String, dynamic> map) {
    return EnderecoModel(
      enderecoCidade: map['enderecoCidade'] ?? '',
      enderecoCep: map['enderecoCep'] ?? '',
      enderecoUf: map['enderecoUf'] ?? '',
      enderecoComplemento: map['enderecoComplemento'] ?? '',
      enderecoNumero: map['enderecoNumero'] ?? '',
      endereco: map['endereco'] ?? '',
      enderecoBairro: map['enderecoBairro'] ?? '',
      enderecoTempoDeResidenciaAnos: map['enderecoTempoDeResidenciaAnos'] ?? '',
      enderecoTempoDeResidenciaMeses:
          map['enderecoTempoDeResidenciaMeses'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory EnderecoModel.fromJson(String source) =>
      EnderecoModel.fromMap(json.decode(source));
}
