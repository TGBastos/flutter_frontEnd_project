import 'dart:convert';

class DadosPessoaisModel {
  String vencimentoDaFatura = '';
  int CPF = 0;
  String orgaoEmissor = '';
  String ufDeNascimento = '';
  String sexo = '';
  String escolaridade = '';
  String lojaRetiradaCartao = '';
  String rg = '';
  String nacionalidade = '';
  String tratamento = '';
  String estadoCivil = '';
  String clienteNome = '';
  String expedidorRg = '';
  String naturalidade = '';
  String dataDeNascimento = '';
  String nomeDaMae = '';

  DadosPessoaisModel({
    vencimentoDaFatura,
    CPF,
    orgaoEmissor,
    ufDeNascimento,
    sexo,
    escolaridade,
    lojaRetiradaCartao,
    rg,
    nacionalidade,
    tratamento,
    estadoCivil,
    clienteNome,
    expedidorRg,
    naturalidade,
    dataDeNascimento,
    nomeDaMae,
  });

  Map<String, dynamic> toMap() {
    return {
      'vencimentoDaFatura': vencimentoDaFatura,
      'CPF': CPF,
      'orgaoEmissor': orgaoEmissor,
      'ufDeNascimento': ufDeNascimento,
      'sexo': sexo,
      'escolaridade': escolaridade,
      'lojaRetiradaCartao': lojaRetiradaCartao,
      'rg': rg,
      'nacionalidade': nacionalidade,
      'tratamento': tratamento,
      'estadoCivil': estadoCivil,
      'clienteNome': clienteNome,
      'expedidorRg': expedidorRg,
      'naturalidade': naturalidade,
      'dataDeNascimento': dataDeNascimento,
      'nomeDaMae': nomeDaMae,
    };
  }

  factory DadosPessoaisModel.fromMap(Map<String, dynamic> map) {
    return DadosPessoaisModel(
      vencimentoDaFatura: map['vencimentoDaFatura'] ?? '',
      CPF: map['CPF'] ?? '',
      orgaoEmissor: map['orgaoEmissor'] ?? '',
      ufDeNascimento: map['ufDeNascimento'] ?? '',
      sexo: map['sexo'] ?? '',
      escolaridade: map['escolaridade'] ?? '',
      lojaRetiradaCartao: map['lojaRetiradaCartao'] ?? '',
      rg: map['rg'] ?? '',
      nacionalidade: map['nacionalidade'] ?? '',
      tratamento: map['tratamento'] ?? '',
      estadoCivil: map['estadoCivil'] ?? '',
      clienteNome: map['clienteNome'] ?? '',
      expedidorRg: map['expedidorRg'] ?? '',
      naturalidade: map['naturalidade'] ?? '',
      dataDeNascimento: map['dataDeNascimento'] ?? '',
      nomeDaMae: map['nomeDaMae'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory DadosPessoaisModel.fromJson(String source) =>
      DadosPessoaisModel.fromMap(json.decode(source));
}
