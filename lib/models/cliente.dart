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
      code: map['code'] ?? 'Ta null',
      clienteCodigo: map['clienteCodigo'] ?? 0,
      clienteNome: map['clienteNome'] ?? 'Ta null',
      clienteIdWeb: map['clienteIdWeb'] ?? 'Ta null',
      clienteStatusCadastro: map['clienteStatusCadastro'] ?? 'Ta null',
      clienteTratamento: map['clienteTratamento'] ?? 'Ta null',
      clienteApelido: map['clienteApelido'] ?? 'Ta null',
      clienteNacionalidade: map['clienteNacionalidade'] ?? 'Ta null',
      clienteRgNumero: map['clienteRgNumero'] ?? 'Ta null',
      clienteRgOrgaoEmissor: map['clienteRgOrgaoEmissor'] ?? 'Ta null',
      clienteEmailPrincipal: map['clienteEmailPrincipal'] ?? 'Ta null',
      clienteEmailAlternativo: map['clienteEmailAlternativo'] ?? 'Ta null',
      clienteCelularDDD: map['clienteCelularDDD'] ?? 'Ta null',
      clienteCelularNumero: map['clienteCelularNumero'] ?? 'Ta null',
      clienteResFoneDDD: map['clienteResFoneDDD'] ?? 'Ta null',
      clienteResFoneNumero: map['clienteResFoneNumero'] ?? 'Ta null',
      clienteTipoPessoa: map['clienteTipoPessoa'] ?? 'Ta null',
      clienteSexo: map['clienteSexo'] ?? 'Ta null',
      clienteNascimento: map['clienteNascimento'] ?? 'Ta null',
      clienteEstadoCivil: map['clienteEstadoCivil'] ?? 'Ta null',
      clienteResCep: map['clienteResCep'] ?? 'Ta null',
      clienteResLogradouro: map['clienteResLogradouro'] ?? 'Ta null',
      clienteResNumero: map['clienteResNumero'] ?? 'Ta null',
      clienteResComplemento: map['clienteResComplemento'] ?? 'Ta null',
      clienteResBairro: map['clienteResBairro'] ?? 'Ta null',
      clienteResCidade: map['clienteResCidade'] ?? 'Ta null',
      clienteResUF: map['clienteResUF'] ?? 'Ta null',
      clienteResLatitude: map['clienteResLatitude'] ?? 'Ta null',
      clienteResLongitude: map['clienteResLongitude'] ?? 'Ta null',
      clienteLojaCadastro: map['clienteLojaCadastro'] ?? 'Ta null',
      clienteLojaPreferida: map['clienteLojaPreferida'] ?? 'Ta null',
      clienteClassificacao: map['clienteClassificacao'] ?? 'Ta null',
      clienteDtCadastro: map['clienteDtCadastro'] ?? 'Ta null',
      clienteDtFidelidade: map['clienteDtFidelidade'] ?? 'Ta null',
      clienteSaldoPontos: map['clienteSaldoPontos'] ?? 0,
      clientePermiteEnvioEmail: map['clientePermiteEnvioEmail'] ?? 0,
      clientePermiteEnvioSMS: map['clientePermiteEnvioSMS'] ?? 0,
      clienteAPPTerceiroId: map['clienteAPPTerceiroId'] ?? 'Ta null',
      clienteAPPTerceiroDataRegistro:
          map['clienteAPPTerceiroDataRegistro'] ?? 'Ta null',
      clientePossuiSenhaWeb: map['clientePossuiSenhaWeb'] ?? false,
      clienteDataAceiteRegulamentoFidelidade:
          map['clienteDataAceiteRegulamentoFidelidade'] ?? 'Ta null',
    );
  }

  String toJson() => json.encode(toMap());

  factory Cliente.fromJson(String source) =>
      Cliente.fromMap(json.decode(source));
}
