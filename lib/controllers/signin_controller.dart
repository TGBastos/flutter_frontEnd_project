import 'package:dio/dio.dart';
import 'package:rio_das_pedras_front_end/View/cadastro/widgets/SigningUp_Path%20Steps/Dados%20Pessoais/widgets/campo_cliente_cpf.dart';
import 'package:rio_das_pedras_front_end/View/cadastro/widgets/SigningUp_Path%20Steps/controllers.dart';
import 'package:rio_das_pedras_front_end/models/contatos_model.dart';
import 'package:rio_das_pedras_front_end/models/dados_pessoais_model.dart';
import 'package:rio_das_pedras_front_end/models/endereco_model.dart';
import 'package:rio_das_pedras_front_end/models/profissional_e_financeira_model.dart';
import 'package:rio_das_pedras_front_end/models/referencias_pessoais_models.dart';
import 'package:wsda/core/values/access_token.dart';
import 'package:wsda/source/common/endpoints/access_token_endpoint.dart';
import 'package:wsda/source/common/endpoints/client_proposal.dart';

class SigninController {
  Future<bool> signUp() async {
    DadosPessoaisModel _dadosPessoais =
        Controllers.dadosPessoaisController.dadosPessoais;
    EnderecoModel _enderecoModel = Controllers.enderecoController.enderecoModel;
    ContatosModel _contatosModel = Controllers.contatosController.contatosModel;
    ProfissionalEFinanceiraModel _profissionalEFinanceiraModel = Controllers
        .profissionalEFinanceiraController.profissionalEFinanceiraModel;
    ReferenciasPessoaisModel _referenciasPessoaisModel =
        Controllers.referenciasPessoaisController.referenciasPessoaisModel;
    AccessTokenEndpoint accessTokenEndpoint = AccessTokenEndpoint(version: 1);
    Response response = await accessTokenEndpoint();
    AccessToken accessToken = AccessToken.from(response.data);

    ClientProposal clientProposal =
        ClientProposal(accessToken: accessToken, version: 1, data: {
      "clienteCpf": _dadosPessoais.CPF,
      "clienteNome": _dadosPessoais.clienteNome,
      "clienteRgNumero": _dadosPessoais.rg,
      "clienteRgOrgaoEmissor": _dadosPessoais.orgaoEmissor,
      "clienteRgUFEmissor": _dadosPessoais.expedidorRg,
      "clienteNaturalidade": _dadosPessoais.naturalidade,
      "clienteNacionalidade": _dadosPessoais.nacionalidade,
      "clienteSexo": _dadosPessoais.sexo,
      "clienteDataNascimento": _dadosPessoais.dataDeNascimento,
      "clienteNomeMae": _dadosPessoais.nomeDaMae,
      "clienteNomePai": "",
      "clienteEstadoCivil": 0,
      "clienteConjugeNome": "",
      "clienteConjugeCpf": 0,
      "clienteGrauEscolaridade": 0,
      "clienteEndereco": _enderecoModel.toMap(),
      "clienteTrabalho": _profissionalEFinanceiraModel.toMap(),
      "clienteOutraRenda": {
        'valor': _profissionalEFinanceiraModel.profissionalOutraRendaValor,
        'origem': '',
      },
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
    });
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
