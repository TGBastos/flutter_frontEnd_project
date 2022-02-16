class Organizadoras {
  Organizadoras({
    required this.code,
    required this.message,
    required this.codigoISGA,
    required this.orgCodigo,
    required this.orgNome,
    required this.orgCnpj,
    required this.orgLojaMatriz,
    required this.cartaoProprio,
  });
  late final String code;
  late final String message;
  late final int codigoISGA;
  late final int orgCodigo;
  late final String orgNome;
  late final int orgCnpj;
  late final OrgLojaMatriz orgLojaMatriz;
  late final CartaoProprio cartaoProprio;

  static Organizadoras instance = Organizadoras.fromMap({});

  Organizadoras.fromMap(Map<String, dynamic> json) {
    code = json['code'];
    message = json['message'];
    codigoISGA = json['codigoISGA'];
    orgCodigo = json['orgCodigo'];
    orgNome = json['orgNome'];
    orgCnpj = json['orgCnpj'];
    orgLojaMatriz = OrgLojaMatriz.fromJson(json['orgLojaMatriz']);
    cartaoProprio = CartaoProprio.fromJson(json['cartaoProprio']);
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['code'] = code;
    _data['message'] = message;
    _data['codigoISGA'] = codigoISGA;
    _data['orgCodigo'] = orgCodigo;
    _data['orgNome'] = orgNome;
    _data['orgCnpj'] = orgCnpj;
    _data['orgLojaMatriz'] = orgLojaMatriz.toJson();
    _data['cartaoProprio'] = cartaoProprio.toJson();
    return _data;
  }
}

class OrgLojaMatriz {
  OrgLojaMatriz({
    required this.numero,
    required this.razaoSocial,
    required this.nomeFantasia,
    required this.cnpj,
    required this.endereco,
    required this.contato,
  });
  late final int numero;
  late final String razaoSocial;
  late final String nomeFantasia;
  late final String cnpj;
  late final Endereco endereco;
  late final Contato contato;

  OrgLojaMatriz.fromJson(Map<String, dynamic> json) {
    numero = json['numero'];
    razaoSocial = json['razaoSocial'];
    nomeFantasia = json['nomeFantasia'];
    cnpj = json['cnpj'];
    endereco = Endereco.fromJson(json['endereco']);
    contato = Contato.fromJson(json['contato']);
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['numero'] = numero;
    _data['razaoSocial'] = razaoSocial;
    _data['nomeFantasia'] = nomeFantasia;
    _data['cnpj'] = cnpj;
    _data['endereco'] = endereco.toJson();
    _data['contato'] = contato.toJson();
    return _data;
  }
}

class Endereco {
  Endereco({
    required this.logradouro,
    required this.numero,
    required this.complemento,
    required this.bairro,
    required this.cidade,
    required this.uf,
    required this.cep,
    required this.coordenadas,
  });
  late final String logradouro;
  late final String numero;
  late final String complemento;
  late final String bairro;
  late final String cidade;
  late final String uf;
  late final String cep;
  late final Coordenadas coordenadas;

  Endereco.fromJson(Map<String, dynamic> json) {
    logradouro = json['logradouro'];
    numero = json['numero'];
    complemento = json['complemento'];
    bairro = json['bairro'];
    cidade = json['cidade'];
    uf = json['uf'];
    cep = json['cep'];
    coordenadas = Coordenadas.fromJson(json['coordenadas']);
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['logradouro'] = logradouro;
    _data['numero'] = numero;
    _data['complemento'] = complemento;
    _data['bairro'] = bairro;
    _data['cidade'] = cidade;
    _data['uf'] = uf;
    _data['cep'] = cep;
    _data['coordenadas'] = coordenadas.toJson();
    return _data;
  }
}

class Coordenadas {
  Coordenadas({
    required this.latitide,
    required this.longitude,
  });
  late final String latitide;
  late final String longitude;

  Coordenadas.fromJson(Map<String, dynamic> json) {
    latitide = json['latitide'];
    longitude = json['longitude'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['latitide'] = latitide;
    _data['longitude'] = longitude;
    return _data;
  }
}

class Contato {
  Contato({
    required this.foneDDD,
    required this.foneNumero,
    required this.email,
  });
  late final String foneDDD;
  late final String foneNumero;
  late final String email;

  Contato.fromJson(Map<String, dynamic> json) {
    foneDDD = json['foneDDD'];
    foneNumero = json['foneNumero'];
    email = json['email'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['foneDDD'] = foneDDD;
    _data['foneNumero'] = foneNumero;
    _data['email'] = email;
    return _data;
  }
}

class CartaoProprio {
  CartaoProprio({
    required this.grupoFaturamento,
  });
  late final List<GrupoFaturamento> grupoFaturamento;

  CartaoProprio.fromJson(Map<String, dynamic> json) {
    grupoFaturamento = List.from(json['grupoFaturamento'])
        .map((e) => GrupoFaturamento.fromJson(e))
        .toList();
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['grupoFaturamento'] =
        grupoFaturamento.map((e) => e.toJson()).toList();
    return _data;
  }
}

class GrupoFaturamento {
  GrupoFaturamento({
    required this.numero,
    required this.diaCorte,
    required this.diaVencimento,
  });
  late final int numero;
  late final int diaCorte;
  late final int diaVencimento;

  GrupoFaturamento.fromJson(Map<String, dynamic> json) {
    numero = json['numero'];
    diaCorte = json['diaCorte'];
    diaVencimento = json['diaVencimento'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['numero'] = numero;
    _data['diaCorte'] = diaCorte;
    _data['diaVencimento'] = diaVencimento;
    return _data;
  }
}
