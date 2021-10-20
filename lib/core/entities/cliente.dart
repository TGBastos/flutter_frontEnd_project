class Cliente {
  Cliente({
    required this.code,
    required this.clienteCodigo,
    required this.clienteNome,
    required this.clienteCpf,
    required this.clienteIdWeb,
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
    required this.clienteClassificacao,
    required this.clienteDtCadastro,
    required this.clienteDtFidelidade,
    required this.clienteSaldoPontos,
    required this.clientePermiteEnvioEmail,
    required this.clientePermiteEnvioSMS,
    required this.clienteTrocaSenha,
    required this.clienteRgEmissor,
    required this.clienteCelular2DDD,
    required this.clienteCelular2Numero,
    required this.clienteEmailAnterior,
    required this.clienteTipo,
    required this.clienteGrupoFaturamento,
    required this.convenioCodigo,
    required this.convenioNomeFantasia,
    required this.convenioCnpj,
    required this.clienteNomeSocial,
    required this.clienteBlqCliente,
    required this.clienteBlqFlag1,
    required this.clienteBlqFlag2,
    required this.clienteBlqCheque,
    required this.clienteBlqFatura,
    required this.clienteBlqSerasa,
    required this.clienteBlqAnaliseCredito,
    required this.clienteBlqPrePago,
    required this.clienteBlqSpc,
    required this.clienteBlqContrato,
    required this.clienteBlqConvenio,
    required this.clienteBlqFaturaConvenio,
    required this.clienteLojaCadastro,
    required this.clienteLojaPreferida,
    required this.lojaNomeFantasia,
    required this.lojaCnpj,
    required this.lojaEndereco,
    required this.lojaEnderecoNumero,
    required this.lojaBairro,
    required this.lojaCidade,
    required this.lojaUF,
    required this.lojaCep,
    required this.lojaFoneDDD,
    required this.lojaFone,
    required this.lojaEmail,
    required this.lojaLatitude,
    required this.lojaLongitude,
    required this.lojaHorario,
    required this.cartaoFidelidade,
    required this.aceiteOcorrenciaNumero,
    required this.aceiteOcorrenciaData,
    required this.login,
    required this.logDiversosCodigo,
  });
  late final String code;
  late final int clienteCodigo;
  late final String clienteNome;
  late final String clienteCpf;
  late final String clienteIdWeb;
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
  late final String clienteClassificacao;
  late final String clienteDtCadastro;
  late final String clienteDtFidelidade;
  late final int clienteSaldoPontos;
  late final int clientePermiteEnvioEmail;
  late final int clientePermiteEnvioSMS;
  late final String clienteTrocaSenha;
  late final String clienteRgEmissor;
  late final String clienteCelular2DDD;
  late final String clienteCelular2Numero;
  late final String clienteEmailAnterior;
  late final String clienteTipo;
  late final int clienteGrupoFaturamento;
  late final int convenioCodigo;
  late final String convenioNomeFantasia;
  late final String convenioCnpj;
  late final String clienteNomeSocial;
  late final String clienteBlqCliente;
  late final String clienteBlqFlag1;
  late final String clienteBlqFlag2;
  late final String clienteBlqCheque;
  late final String clienteBlqFatura;
  late final String clienteBlqSerasa;
  late final String clienteBlqAnaliseCredito;
  late final String clienteBlqPrePago;
  late final String clienteBlqSpc;
  late final String clienteBlqContrato;
  late final String clienteBlqConvenio;
  late final String clienteBlqFaturaConvenio;
  late final String clienteLojaCadastro;
  late final String clienteLojaPreferida;
  late final String lojaNomeFantasia;
  late final String lojaCnpj;
  late final String lojaEndereco;
  late final String lojaEnderecoNumero;
  late final String lojaBairro;
  late final String lojaCidade;
  late final String lojaUF;
  late final String lojaCep;
  late final String lojaFoneDDD;
  late final String lojaFone;
  late final String lojaEmail;
  late final String lojaLatitude;
  late final String lojaLongitude;
  late final String lojaHorario;
  late final String cartaoFidelidade;
  late final String aceiteOcorrenciaNumero;
  late final String aceiteOcorrenciaData;
  late final List<Login> login;
  late final int logDiversosCodigo;

  Cliente.fromJson(Map<String, dynamic> json) {
    code = json['code'];
    clienteCodigo = json['clienteCodigo'];
    clienteNome = json['clienteNome'];
    clienteCpf = json['clienteCpf'];
    clienteIdWeb = json['clienteIdWeb'];
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
    clienteClassificacao = json['clienteClassificacao'];
    clienteDtCadastro = json['clienteDtCadastro'];
    clienteDtFidelidade = json['clienteDtFidelidade'];
    clienteSaldoPontos = json['clienteSaldoPontos'];
    clientePermiteEnvioEmail = json['clientePermiteEnvioEmail'];
    clientePermiteEnvioSMS = json['clientePermiteEnvioSMS'];
    clienteTrocaSenha = json['clienteTrocaSenha'];
    clienteRgEmissor = json['clienteRgEmissor'];
    clienteCelular2DDD = json['clienteCelular2DDD'];
    clienteCelular2Numero = json['clienteCelular2Numero'];
    clienteEmailAnterior = json['clienteEmailAnterior'];
    clienteTipo = json['clienteTipo'];
    clienteGrupoFaturamento = json['clienteGrupoFaturamento'];
    convenioCodigo = json['convenioCodigo'];
    convenioNomeFantasia = json['convenioNomeFantasia'];
    convenioCnpj = json['convenioCnpj'];
    clienteNomeSocial = json['clienteNomeSocial'];
    clienteBlqCliente = json['clienteBlqCliente'];
    clienteBlqFlag1 = json['clienteBlqFlag1'];
    clienteBlqFlag2 = json['clienteBlqFlag2'];
    clienteBlqCheque = json['clienteBlqCheque'];
    clienteBlqFatura = json['clienteBlqFatura'];
    clienteBlqSerasa = json['clienteBlqSerasa'];
    clienteBlqAnaliseCredito = json['clienteBlqAnaliseCredito'];
    clienteBlqPrePago = json['clienteBlqPrePago'];
    clienteBlqSpc = json['clienteBlqSpc'];
    clienteBlqContrato = json['clienteBlqContrato'];
    clienteBlqConvenio = json['clienteBlqConvenio'];
    clienteBlqFaturaConvenio = json['clienteBlqFaturaConvenio'];
    clienteLojaCadastro = json['clienteLojaCadastro'];
    clienteLojaPreferida = json['clienteLojaPreferida'];
    lojaNomeFantasia = json['lojaNomeFantasia'];
    lojaCnpj = json['lojaCnpj'];
    lojaEndereco = json['lojaEndereco'];
    lojaEnderecoNumero = json['lojaEnderecoNumero'];
    lojaBairro = json['lojaBairro'];
    lojaCidade = json['lojaCidade'];
    lojaUF = json['lojaUF'];
    lojaCep = json['lojaCep'];
    lojaFoneDDD = json['lojaFoneDDD'];
    lojaFone = json['lojaFone'];
    lojaEmail = json['lojaEmail'];
    lojaLatitude = json['lojaLatitude'];
    lojaLongitude = json['lojaLongitude'];
    lojaHorario = json['lojaHorario'];
    cartaoFidelidade = json['cartaoFidelidade'];
    aceiteOcorrenciaNumero = json['aceiteOcorrenciaNumero'];
    aceiteOcorrenciaData = json['aceiteOcorrenciaData'];
    login = List.from(json['login']).map((e) => Login.fromJson(e)).toList();
    logDiversosCodigo = json['logDiversosCodigo'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['code'] = code;
    _data['clienteCodigo'] = clienteCodigo;
    _data['clienteNome'] = clienteNome;
    _data['clienteCpf'] = clienteCpf;
    _data['clienteIdWeb'] = clienteIdWeb;
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
    _data['clienteClassificacao'] = clienteClassificacao;
    _data['clienteDtCadastro'] = clienteDtCadastro;
    _data['clienteDtFidelidade'] = clienteDtFidelidade;
    _data['clienteSaldoPontos'] = clienteSaldoPontos;
    _data['clientePermiteEnvioEmail'] = clientePermiteEnvioEmail;
    _data['clientePermiteEnvioSMS'] = clientePermiteEnvioSMS;
    _data['clienteTrocaSenha'] = clienteTrocaSenha;
    _data['clienteRgEmissor'] = clienteRgEmissor;
    _data['clienteCelular2DDD'] = clienteCelular2DDD;
    _data['clienteCelular2Numero'] = clienteCelular2Numero;
    _data['clienteEmailAnterior'] = clienteEmailAnterior;
    _data['clienteTipo'] = clienteTipo;
    _data['clienteGrupoFaturamento'] = clienteGrupoFaturamento;
    _data['convenioCodigo'] = convenioCodigo;
    _data['convenioNomeFantasia'] = convenioNomeFantasia;
    _data['convenioCnpj'] = convenioCnpj;
    _data['clienteNomeSocial'] = clienteNomeSocial;
    _data['clienteBlqCliente'] = clienteBlqCliente;
    _data['clienteBlqFlag1'] = clienteBlqFlag1;
    _data['clienteBlqFlag2'] = clienteBlqFlag2;
    _data['clienteBlqCheque'] = clienteBlqCheque;
    _data['clienteBlqFatura'] = clienteBlqFatura;
    _data['clienteBlqSerasa'] = clienteBlqSerasa;
    _data['clienteBlqAnaliseCredito'] = clienteBlqAnaliseCredito;
    _data['clienteBlqPrePago'] = clienteBlqPrePago;
    _data['clienteBlqSpc'] = clienteBlqSpc;
    _data['clienteBlqContrato'] = clienteBlqContrato;
    _data['clienteBlqConvenio'] = clienteBlqConvenio;
    _data['clienteBlqFaturaConvenio'] = clienteBlqFaturaConvenio;
    _data['clienteLojaCadastro'] = clienteLojaCadastro;
    _data['clienteLojaPreferida'] = clienteLojaPreferida;
    _data['lojaNomeFantasia'] = lojaNomeFantasia;
    _data['lojaCnpj'] = lojaCnpj;
    _data['lojaEndereco'] = lojaEndereco;
    _data['lojaEnderecoNumero'] = lojaEnderecoNumero;
    _data['lojaBairro'] = lojaBairro;
    _data['lojaCidade'] = lojaCidade;
    _data['lojaUF'] = lojaUF;
    _data['lojaCep'] = lojaCep;
    _data['lojaFoneDDD'] = lojaFoneDDD;
    _data['lojaFone'] = lojaFone;
    _data['lojaEmail'] = lojaEmail;
    _data['lojaLatitude'] = lojaLatitude;
    _data['lojaLongitude'] = lojaLongitude;
    _data['lojaHorario'] = lojaHorario;
    _data['cartaoFidelidade'] = cartaoFidelidade;
    _data['aceiteOcorrenciaNumero'] = aceiteOcorrenciaNumero;
    _data['aceiteOcorrenciaData'] = aceiteOcorrenciaData;
    _data['login'] = login.map((e) => e.toJson()).toList();
    _data['logDiversosCodigo'] = logDiversosCodigo;
    return _data;
  }
}

class Login {
  Login({
    required this.sistemaOrigem,
    required this.dataUltimoAcesso,
  });
  late final String sistemaOrigem;
  late final String dataUltimoAcesso;

  Login.fromJson(Map<String, dynamic> json) {
    sistemaOrigem = json['sistemaOrigem'];
    dataUltimoAcesso = json['dataUltimoAcesso'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['sistemaOrigem'] = sistemaOrigem;
    _data['dataUltimoAcesso'] = dataUltimoAcesso;
    return _data;
  }
}
