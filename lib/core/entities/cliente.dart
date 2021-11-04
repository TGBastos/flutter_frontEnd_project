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
  late final String code;
  late final int clienteCodigo;
  late final String clienteNome;
  late final String clienteIdWeb;
  late final String clienteStatusCadastro;
  late final String clienteTratamento;
  late final String clienteApelido;
  late final String clienteNacionalidade;
  late final String clienteRgNumero;
  late final String clienteRgOrgaoEmissor;
  late final String clienteEmailPrincipal;
  late final String clienteEmailAlternativo;
  late final String clienteCelularDDD;
  late final String clienteCelularNumero;
  late final String clienteResFoneDDD;
  late final String clienteResFoneNumero;
  late final String clienteTipoPessoa;
  late final String clienteSexo;
  late final String clienteNascimento;
  late final String clienteEstadoCivil;
  late final String clienteResCep;
  late final String clienteResLogradouro;
  late final String clienteResNumero;
  late final String clienteResComplemento;
  late final String clienteResBairro;
  late final String clienteResCidade;
  late final String clienteResUF;
  late final String clienteResLatitude;
  late final String clienteResLongitude;
  late final String clienteLojaCadastro;
  late final String clienteLojaPreferida;
  late final String clienteClassificacao;
  late final String clienteDtCadastro;
  late final String clienteDtFidelidade;
  late final int clienteSaldoPontos;
  late final int clientePermiteEnvioEmail;
  late final int clientePermiteEnvioSMS;
  late final String clienteAPPTerceiroId;
  late final String clienteAPPTerceiroDataRegistro;
  late final bool clientePossuiSenhaWeb;
  late final String clienteDataAceiteRegulamentoFidelidade;

  Cliente.fromJson(Map<String, dynamic> json) {
    code = json['code'];
    clienteCodigo = json['clienteCodigo'];
    clienteNome = json['clienteNome'];
    clienteIdWeb = json['clienteIdWeb'];
    clienteStatusCadastro = json['clienteStatusCadastro'];
    clienteTratamento = json['clienteTratamento'];
    clienteApelido = json['clienteApelido'];
    clienteNacionalidade = json['clienteNacionalidade'];
    clienteRgNumero = json['clienteRgNumero'];
    clienteRgOrgaoEmissor = json['clienteRgOrgaoEmissor'];
    clienteEmailPrincipal = json['clienteEmailPrincipal'];
    clienteEmailAlternativo = json['clienteEmailAlternativo'];
    clienteCelularDDD = json['clienteCelularDDD'];
    clienteCelularNumero = json['clienteCelularNumero'];
    clienteResFoneDDD = json['clienteResFoneDDD'];
    clienteResFoneNumero = json['clienteResFoneNumero'];
    clienteTipoPessoa = json['clienteTipoPessoa'];
    clienteSexo = json['clienteSexo'];
    clienteNascimento = json['clienteNascimento'];
    clienteEstadoCivil = json['clienteEstadoCivil'];
    clienteResCep = json['clienteResCep'];
    clienteResLogradouro = json['clienteResLogradouro'];
    clienteResNumero = json['clienteResNumero'];
    clienteResComplemento = json['clienteResComplemento'];
    clienteResBairro = json['clienteResBairro'];
    clienteResCidade = json['clienteResCidade'];
    clienteResUF = json['clienteResUF'];
    clienteResLatitude = json['clienteResLatitude'];
    clienteResLongitude = json['clienteResLongitude'];
    clienteLojaCadastro = json['clienteLojaCadastro'];
    clienteLojaPreferida = json['clienteLojaPreferida'];
    clienteClassificacao = json['clienteClassificacao'];
    clienteDtCadastro = json['clienteDtCadastro'];
    clienteDtFidelidade = json['clienteDtFidelidade'];
    clienteSaldoPontos = json['clienteSaldoPontos'];
    clientePermiteEnvioEmail = json['clientePermiteEnvioEmail'];
    clientePermiteEnvioSMS = json['clientePermiteEnvioSMS'];
    clienteAPPTerceiroId = json['clienteAPPTerceiroId'];
    clienteAPPTerceiroDataRegistro = json['clienteAPPTerceiroDataRegistro'];
    clientePossuiSenhaWeb = json['clientePossuiSenhaWeb'];
    clienteDataAceiteRegulamentoFidelidade =
        json['clienteDataAceiteRegulamentoFidelidade'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['code'] = code;
    _data['clienteCodigo'] = clienteCodigo;
    _data['clienteNome'] = clienteNome;
    _data['clienteIdWeb'] = clienteIdWeb;
    _data['clienteStatusCadastro'] = clienteStatusCadastro;
    _data['clienteTratamento'] = clienteTratamento;
    _data['clienteApelido'] = clienteApelido;
    _data['clienteNacionalidade'] = clienteNacionalidade;
    _data['clienteRgNumero'] = clienteRgNumero;
    _data['clienteRgOrgaoEmissor'] = clienteRgOrgaoEmissor;
    _data['clienteEmailPrincipal'] = clienteEmailPrincipal;
    _data['clienteEmailAlternativo'] = clienteEmailAlternativo;
    _data['clienteCelularDDD'] = clienteCelularDDD;
    _data['clienteCelularNumero'] = clienteCelularNumero;
    _data['clienteResFoneDDD'] = clienteResFoneDDD;
    _data['clienteResFoneNumero'] = clienteResFoneNumero;
    _data['clienteTipoPessoa'] = clienteTipoPessoa;
    _data['clienteSexo'] = clienteSexo;
    _data['clienteNascimento'] = clienteNascimento;
    _data['clienteEstadoCivil'] = clienteEstadoCivil;
    _data['clienteResCep'] = clienteResCep;
    _data['clienteResLogradouro'] = clienteResLogradouro;
    _data['clienteResNumero'] = clienteResNumero;
    _data['clienteResComplemento'] = clienteResComplemento;
    _data['clienteResBairro'] = clienteResBairro;
    _data['clienteResCidade'] = clienteResCidade;
    _data['clienteResUF'] = clienteResUF;
    _data['clienteResLatitude'] = clienteResLatitude;
    _data['clienteResLongitude'] = clienteResLongitude;
    _data['clienteLojaCadastro'] = clienteLojaCadastro;
    _data['clienteLojaPreferida'] = clienteLojaPreferida;
    _data['clienteClassificacao'] = clienteClassificacao;
    _data['clienteDtCadastro'] = clienteDtCadastro;
    _data['clienteDtFidelidade'] = clienteDtFidelidade;
    _data['clienteSaldoPontos'] = clienteSaldoPontos;
    _data['clientePermiteEnvioEmail'] = clientePermiteEnvioEmail;
    _data['clientePermiteEnvioSMS'] = clientePermiteEnvioSMS;
    _data['clienteAPPTerceiroId'] = clienteAPPTerceiroId;
    _data['clienteAPPTerceiroDataRegistro'] = clienteAPPTerceiroDataRegistro;
    _data['clientePossuiSenhaWeb'] = clientePossuiSenhaWeb;
    _data['clienteDataAceiteRegulamentoFidelidade'] =
        clienteDataAceiteRegulamentoFidelidade;
    return _data;
  }
}
