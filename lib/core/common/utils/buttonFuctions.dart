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
  buttonFuctions();
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
          : Cliente.instance = Cliente.fromJson(value.data),
    );
  }

  cadastrar() {
    // print("Cadastrado");
    // Navigator.of(ctx)
    //     .push(MaterialPageRoute(builder: (context) => SingingUpPageWrapper()));
  }

  forgotPassword() {
    print("Nova senha");
  }
}
