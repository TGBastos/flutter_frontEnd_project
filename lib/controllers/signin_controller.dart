import 'package:dio/dio.dart';
import 'package:rio_das_pedras_front_end/controllers/dados_pessoais_controller.dart';
import 'package:rio_das_pedras_front_end/controllers/endereco_controller.dart';
import 'package:rio_das_pedras_front_end/models/dados_pessoais_model.dart';
import 'package:rio_das_pedras_front_end/models/endereco_model.dart';
import 'package:wsda/core/values/access_token.dart';
import 'package:wsda/source/common/endpoints/access_token_endpoint.dart';
import 'package:wsda/wsda.dart';

class SigninController {
  Future<bool> signUp() async {
    DadosPessoaisModel _dadosPessoais = DadosPessoaisController.dadosPessoais;
    EnderecoModel _dadosEdereco = EnderecoController.enderecoModel;
    AccessTokenEndpoint accessTokenEndpoint = AccessTokenEndpoint(version: 1);
    Response response = await accessTokenEndpoint();
    AccessToken accessToken = AccessToken.from(response.data);
    Map<String, dynamic> data = {};

    SignupUser signupUser = SignupUser(
      accessToken: accessToken,
      version: 2,
      data: <String, dynamic>{
        "clienteNome": _dadosPessoais.clienteNome,
        "clienteCpf": _dadosPessoais.CPF,
        "clienteNascimento": _dadosPessoais.dataDeNascimento,
        "clienteSexo": _dadosPessoais.sexo,
        "clienteResLogradouro": _dadosEdereco.endereco,
        "clienteResNumero": _dadosEdereco.enderecoNumero,
        "clienteResComplemento": _dadosEdereco.enderecoComplemento,
        "clienteResBairro": _dadosEdereco.enderecoBairro,
        "clienteRgNumero": _dadosPessoais.rg,
        "clienteRgOrgaoEmissor": _dadosPessoais.orgaoEmissor,
        "clienteResCidade": _dadosEdereco.enderecoCidade,
        "clienteResUF": _dadosEdereco.enderecoUf,
        "clienteResCep": _dadosEdereco.enderecoCep,
        "clienteResLatitude": '',
        "clienteResLongitude": "",
        "clienteResFoneDDD": "",
        "clienteResFoneNumero": "",
        "clienteCelularDDD": "73",
        "clienteCelularNumero": "981423700",
        "clienteEmailPrincipal": "principal@intellisys.com.br",
        "clienteEmailAlternativo": "",
        "clienteLojaPreferida": "1",
        "clienteSenhaWeb": "123456",
        "clientePermiteEnvioEmail": "1",
        "clientePermiteEnvioSMS": "1",
        "clienteAceiteRegulamento": "1"
      },
    );
    try {
      final Response response = await signupUser();
      if (response.data['code'] == '000') {
        print('Ta indo');
        return true;
      } else {
        return false;
      }
    } catch (e) {
      print(DadosPessoaisController.dadosPessoais.clienteNome);
      print(DadosPessoaisController.dadosPessoais.dataDeNascimento);
      print('ta não');
      print(e);
      return false;
    }
  }
}
