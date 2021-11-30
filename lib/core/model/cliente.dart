import 'dart:convert';

class Cliente {
  Cliente({
    required this.code,
    required this.clienteCodigo,
    required this.clienteNome,
    required this.clienteIdWeb,
    required this.clienteStatusCadastro,
    required this.clienteTratamento,
    required this.clienteApelido,
    required this.clienteNacionalidade,
    required this.clienteRgNumero,
    required this.clienteRgOrgaoEmissor,
    required this.clienteEmailPrincipal,
    required this.clienteEmailAlternativo,
    required this.clienteCelularDDD,
    required this.clienteCelularNumero,
    required this.clienteResFoneDDD,
    required this.clienteResFoneNumero,
    required this.clienteTipoPessoa,
    required this.clienteSexo,
    required this.clienteNascimento,
    required this.clienteEstadoCivil,
    required this.clienteResCep,
    required this.clienteResLogradouro,
    required this.clienteResNumero,
    required this.clienteResComplemento,
    required this.clienteResBairro,
    required this.clienteResCidade,
    required this.clienteResUF,
    required this.clienteResLatitude,
    required this.clienteResLongitude,
    required this.clienteLojaCadastro,
    required this.clienteLojaPreferida,
    required this.clienteClassificacao,
    required this.clienteDtCadastro,
    required this.clienteDtFidelidade,
    required this.clienteSaldoPontos,
    required this.clientePermiteEnvioEmail,
    required this.clientePermiteEnvioSMS,
    required this.clienteAPPTerceiroId,
    required this.clienteAPPTerceiroDataRegistro,
    required this.clientePossuiSenhaWeb,
    required this.clienteDataAceiteRegulamentoFidelidade,
  });
  final String code;
  final int clienteCodigo;
  final String clienteNome;
  final String clienteIdWeb;
  final String clienteStatusCadastro;
  final String clienteTratamento;
  final String clienteApelido;
  final String clienteNacionalidade;
  final String clienteRgNumero;
  final String clienteRgOrgaoEmissor;
  final String clienteEmailPrincipal;
  final String clienteEmailAlternativo;
  final String clienteCelularDDD;
  final String clienteCelularNumero;
  final String clienteResFoneDDD;
  final String clienteResFoneNumero;
  final String clienteTipoPessoa;
  final String clienteSexo;
  final String clienteNascimento;
  final String clienteEstadoCivil;
  final String clienteResCep;
  final String clienteResLogradouro;
  final String clienteResNumero;
  final String clienteResComplemento;
  final String clienteResBairro;
  final String clienteResCidade;
  final String clienteResUF;
  final String clienteResLatitude;
  final String clienteResLongitude;
  final String clienteLojaCadastro;
  final String clienteLojaPreferida;
  final String clienteClassificacao;
  final String clienteDtCadastro;
  final String clienteDtFidelidade;
  final int clienteSaldoPontos;
  final int clientePermiteEnvioEmail;
  final int clientePermiteEnvioSMS;
  final String clienteAPPTerceiroId;
  final String clienteAPPTerceiroDataRegistro;
  final bool clientePossuiSenhaWeb;
  final String clienteDataAceiteRegulamentoFidelidade;

  static Cliente instance = Cliente.fromMap({});

  Map<String, dynamic> toMap() {
    return {
      'code': code,
      'clienteCodigo': clienteCodigo,
      'clienteNome': clienteNome,
      'clienteIdWeb': clienteIdWeb,
      'clienteStatusCadastro': clienteStatusCadastro,
      'clienteTratamento': clienteTratamento,
      'clienteApelido': clienteApelido,
      'clienteNacionalidade': clienteNacionalidade,
      'clienteRgNumero': clienteRgNumero,
      'clienteRgOrgaoEmissor': clienteRgOrgaoEmissor,
      'clienteEmailPrincipal': clienteEmailPrincipal,
      'clienteEmailAlternativo': clienteEmailAlternativo,
      'clienteCelularDDD': clienteCelularDDD,
      'clienteCelularNumero': clienteCelularNumero,
      'clienteResFoneDDD': clienteResFoneDDD,
      'clienteResFoneNumero': clienteResFoneNumero,
      'clienteTipoPessoa': clienteTipoPessoa,
      'clienteSexo': clienteSexo,
      'clienteNascimento': clienteNascimento,
      'clienteEstadoCivil': clienteEstadoCivil,
      'clienteResCep': clienteResCep,
      'clienteResLogradouro': clienteResLogradouro,
      'clienteResNumero': clienteResNumero,
      'clienteResComplemento': clienteResComplemento,
      'clienteResBairro': clienteResBairro,
      'clienteResCidade': clienteResCidade,
      'clienteResUF': clienteResUF,
      'clienteResLatitude': clienteResLatitude,
      'clienteResLongitude': clienteResLongitude,
      'clienteLojaCadastro': clienteLojaCadastro,
      'clienteLojaPreferida': clienteLojaPreferida,
      'clienteClassificacao': clienteClassificacao,
      'clienteDtCadastro': clienteDtCadastro,
      'clienteDtFidelidade': clienteDtFidelidade,
      'clienteSaldoPontos': clienteSaldoPontos,
      'clientePermiteEnvioEmail': clientePermiteEnvioEmail,
      'clientePermiteEnvioSMS': clientePermiteEnvioSMS,
      'clienteAPPTerceiroId': clienteAPPTerceiroId,
      'clienteAPPTerceiroDataRegistro': clienteAPPTerceiroDataRegistro,
      'clientePossuiSenhaWeb': clientePossuiSenhaWeb,
      'clienteDataAceiteRegulamentoFidelidade':
          clienteDataAceiteRegulamentoFidelidade,
    };
  }

  factory Cliente.fromMap(Map<String, dynamic> map) {
    return Cliente(
      code: map['code'],
      clienteCodigo: map['clienteCodigo'],
      clienteNome: map['clienteNome'] ?? 'Ta null',
      clienteIdWeb: map['clienteIdWeb'],
      clienteStatusCadastro: map['clienteStatusCadastro'],
      clienteTratamento: map['clienteTratamento'],
      clienteApelido: map['clienteApelido'],
      clienteNacionalidade: map['clienteNacionalidade'],
      clienteRgNumero: map['clienteRgNumero'],
      clienteRgOrgaoEmissor: map['clienteRgOrgaoEmissor'],
      clienteEmailPrincipal: map['clienteEmailPrincipal'],
      clienteEmailAlternativo: map['clienteEmailAlternativo'],
      clienteCelularDDD: map['clienteCelularDDD'],
      clienteCelularNumero: map['clienteCelularNumero'],
      clienteResFoneDDD: map['clienteResFoneDDD'],
      clienteResFoneNumero: map['clienteResFoneNumero'],
      clienteTipoPessoa: map['clienteTipoPessoa'],
      clienteSexo: map['clienteSexo'],
      clienteNascimento: map['clienteNascimento'],
      clienteEstadoCivil: map['clienteEstadoCivil'],
      clienteResCep: map['clienteResCep'],
      clienteResLogradouro: map['clienteResLogradouro'],
      clienteResNumero: map['clienteResNumero'],
      clienteResComplemento: map['clienteResComplemento'],
      clienteResBairro: map['clienteResBairro'],
      clienteResCidade: map['clienteResCidade'],
      clienteResUF: map['clienteResUF'],
      clienteResLatitude: map['clienteResLatitude'],
      clienteResLongitude: map['clienteResLongitude'],
      clienteLojaCadastro: map['clienteLojaCadastro'],
      clienteLojaPreferida: map['clienteLojaPreferida'],
      clienteClassificacao: map['clienteClassificacao'],
      clienteDtCadastro: map['clienteDtCadastro'],
      clienteDtFidelidade: map['clienteDtFidelidade'],
      clienteSaldoPontos: map['clienteSaldoPontos'],
      clientePermiteEnvioEmail: map['clientePermiteEnvioEmail'],
      clientePermiteEnvioSMS: map['clientePermiteEnvioSMS'],
      clienteAPPTerceiroId: map['clienteAPPTerceiroId'],
      clienteAPPTerceiroDataRegistro: map['clienteAPPTerceiroDataRegistro'],
      clientePossuiSenhaWeb: map['clientePossuiSenhaWeb'],
      clienteDataAceiteRegulamentoFidelidade:
          map['clienteDataAceiteRegulamentoFidelidade'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Cliente.fromJson(String source) =>
      Cliente.fromMap(json.decode(source));
}
