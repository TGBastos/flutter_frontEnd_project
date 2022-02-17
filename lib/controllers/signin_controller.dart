import 'package:dio/dio.dart';
import 'package:rio_das_pedras_front_end/View/cadastro/widgets/SigningUp_Path%20Steps/controllers.dart';
import 'package:rio_das_pedras_front_end/models/contatos_model.dart';
import 'package:rio_das_pedras_front_end/models/dados_pessoais_model.dart';
import 'package:rio_das_pedras_front_end/models/endereco_model.dart';
import 'package:wsda/core/values/access_token.dart';
import 'package:wsda/source/common/endpoints/access_token_endpoint.dart';
import 'package:wsda/source/common/endpoints/client_proposal.dart';

class SigninController {
  Future<bool> signUp() async {
    DadosPessoaisModel _dadosPessoais =
        Controllers.dadosPessoaisController.dadosPessoais;
    EnderecoModel _enderecoModel = Controllers.enderecoController.enderecoModel;
    ContatosModel _contatosModel = Controllers.contatosController.contatosModel;
    AccessTokenEndpoint accessTokenEndpoint = AccessTokenEndpoint(version: 1);
    Response response = await accessTokenEndpoint();
    AccessToken accessToken = AccessToken.from(response.data);

    ClientProposal clientProposal = ClientProposal(
      accessToken: accessToken,
      version: 1,
      data: {
        "clienteCpf": 41668761718,
        "clienteNome": "JOSE DA SILVA PEREIRA",
        "clienteRgNumero": "12345678-01",
        "clienteRgOrgaoEmissor": "SSP",
        "clienteRgUFEmissor": "BA",
        "clienteNaturalidade": "Itabuna",
        "clienteNacionalidade": "Brasileira",
        "clienteSexo": "M",
        "clienteDataNascimento": "1980-10-01",
        "clienteNomeMae": "Mãe Pereira",
        "clienteNomePai": "",
        "clienteEstadoCivil": 0,
        "clienteConjugeNome": "",
        "clienteConjugeCpf": 0,
        "clienteGrauEscolaridade": 0,
        "clienteEndereco": {
          "cep": "45600-098",
          "logradouro": "Av. José Soares Pinheiro",
          "numero": "396",
          "complemento": "1 Andar",
          "bairro": "Centro",
          "cidade": "Itabuna",
          "uf": "BA",
          "coordenadas": {"latitude": 0, "longitude": 0}
        },
        "clienteTrabalho": {
          "profissao": 0,
          "razaoSocial": "",
          "telefoneDDD": 0,
          "telefoneNumero": 0,
          "cargo": "",
          "salario": 0,
          "dataAdmissao": "",
          "endereco": {
            "cep": "",
            "logradouro": "",
            "numero": "",
            "complemento": "",
            "bairro": "",
            "cidade": "",
            "uf": ""
          }
        },
        "clienteOutraRenda": {"valor": 0, "origem": ""},
        "clienteBancos": [
          {"numero": 0, "agencia": 0, "conta": "", "dataAbertura": ""}
        ],
        "clienteReferencias": [
          {"nome": "", "celularDDD": "", "celularNumero": ""}
        ],
        "clienteContato": {
          "telefoneDDD": 0,
          "telefoneNumero": 0,
          "celularDDD": 0,
          "celularNumero": 0,
          "email": "sac@intellisys.com.br"
        },
        "clienteLojaPreferida": 1,
        "clienteGrupoFaturamento": 1,
        "clientePermissoes": {
          "envioEmail": false,
          "envioSMS": false,
          "envioOfertas": false
        },
        "clienteAceites": {
          "regulamentoCartaoProprio": false,
          "regulamentoFidelidade": false
        }
      },
    );
    try {
      final Response response = await clientProposal();
      if (response.data['code'] == '000') {
        print('Ta indo');
        return true;
      } else {
        return false;
      }
    } catch (e) {
      print(e);
      return false;
    }
  }
}
