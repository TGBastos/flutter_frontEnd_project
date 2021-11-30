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

  static Cliente instance = Cliente.fromJson({});
}
