import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rio_das_pedras_front_end/Screens/commun/widgets/PageWrappers/SingingUpPageWrapper.dart';
import 'package:rio_das_pedras_front_end/Screens/commun/widgets/PageWrappers/logedPageWrapper.dart';
import 'package:rio_das_pedras_front_end/core/entities/cliente.dart';
import 'package:rio_das_pedras_front_end/core/entities/cliente.dart';
import 'package:rio_das_pedras_front_end/core/entities/cpf.dart';
import 'package:wsda/core/values/access_token.dart';
import 'package:wsda/source/common/endpoints/access_token_endpoint.dart';
import 'package:wsda/source/common/endpoints/search_client.dart';

class buttonFuctions {
  static late Cliente clienteInfos;
  var cliente;
  BuildContext ctx;
  buttonFuctions(this.ctx);
  entrar(
    String ClientCPF,
  ) async {
    print(CPF(ClientCPF));

    AccessTokenEndpoint accessTokenEndpoint = AccessTokenEndpoint(version: 1);
    Response response = await accessTokenEndpoint();
    AccessToken accessToken = AccessToken.from(response.data);

    SearchClient searchClient = SearchClient(
      cpf: ClientCPF,
      accessToken: accessToken,
      version: 2,
    );

    Cliente teste = await searchClient().then(
      (value) => value.data['code'] == '100'
          ? Cliente.fromJson({})
          : Cliente.fromJson(value.data),
    );

    clienteInfos = teste;

    if (teste.clienteNome != '') {
      await teste;
      Navigator.of(ctx).pushReplacement(
        MaterialPageRoute(
          builder: (context) => logedPageWrapper(),
        ),
      );
    }
    print(teste.clienteNome);
    searchClient().then(
      (value) =>
          value.data['code'] == '000' ? print('Deu bom') : print('Deu ruim'),
    );

    //signInEndpoint().then((value) => print(value.data));
  }

  cadastrar() {
    print("Cadastrado");
    Navigator.of(ctx).pushReplacement(
        MaterialPageRoute(builder: (context) => SingingUpPageWrapper()));
  }

  forgotPassword() {
    print("Nova senha");
  }
}
