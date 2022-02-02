import 'package:dio/dio.dart';
import 'package:rio_das_pedras_front_end/models/contatos_model.dart';
import 'package:rio_das_pedras_front_end/models/dados_pessoais_model.dart';
import 'package:rio_das_pedras_front_end/models/endereco_model.dart';
import 'package:wsda/core/values/access_token.dart';
import 'package:wsda/source/common/endpoints/access_token_endpoint.dart';
import 'package:wsda/wsda.dart';

class SigninController {
  Future<bool> signUp(DadosPessoaisModel dadosPessoaisModel,
      EnderecoModel enderecoModel) async {
    AccessTokenEndpoint accessTokenEndpoint = AccessTokenEndpoint(version: 1);
    Response response = await accessTokenEndpoint();
    AccessToken accessToken = AccessToken.from(response.data);
    Map<String, dynamic> data = {};
    data.addAll(dadosPessoaisModel.toMap());

    SignupUser signupUser = SignupUser(
      accessToken: accessToken,
      version: 2,
      data: <String, dynamic>{
        'clienteNome': dadosPessoaisModel.clienteNome,
        "clienteCpf": dadosPessoaisModel.CPF,
        "clienteNascimento": dadosPessoaisModel.dataDeNascimento,
        "clienteSexo": dadosPessoaisModel.sexo,
        "clienteResLogradouro": enderecoModel.endereco,
        "clienteResNumero": enderecoModel.enderecoNumero,
        "clienteResComplemento": enderecoModel.enderecoComplemento,
        "clienteResBairro": enderecoModel.enderecoBairro,
        "clienteRgNumero": dadosPessoaisModel.rg,
        "clienteRgOrgaoEmissor": dadosPessoaisModel.expedidorRg,
        "clienteResCidade": enderecoModel.enderecoCidade,
        "clienteResUF": "BA",
        "clienteResCep": enderecoModel.enderecoCep,
        "clienteResLatitude": "",
        "clienteResLongitude": "",
        "clienteResFoneDDD": "",
        "clienteResFoneNumero": "",
        "clienteCelularDDD": "73",
        "clienteCelularNumero": "981423700",
        "clienteEmailPrincipal": "principal@intellisys.com.br",
        "clienteEmailAlternativo": "",
        "clienteLojaPreferida": dadosPessoaisModel.lojaRetiradaCartao,
        "clienteSenhaWeb": "123456",
        "clientePermiteEnvioEmail": "1",
        "clientePermiteEnvioSMS": "1",
        "clienteAceiteRegulamento": "1",
      },
    );
    return true;
  }
}
