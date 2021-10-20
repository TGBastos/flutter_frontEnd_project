import 'dart:js';

import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rio_das_pedras_front_end/Screens/LogedScreens/DesktoLogedScreen.dart';
import 'package:rio_das_pedras_front_end/Screens/commun/widgets/PageWrappers/SingingUpPageWrapper.dart';
import 'package:rio_das_pedras_front_end/Screens/commun/widgets/PageWrappers/logedPageWrapper.dart';
import 'package:rio_das_pedras_front_end/core/entities/cpf.dart';
import 'package:wsda/core/values/access_token.dart';
import 'package:wsda/source/common/endpoints/access_token_endpoint.dart';
import 'package:wsda/wsda.dart';

class buttonFuctions {
  BuildContext ctx;
  buttonFuctions(this.ctx);
  entrar(
    String ClientCPF,
  ) async {
    print(CPF(ClientCPF));
    WSDA.init(
      apiAccessTokenVersion: 1,
      apiKey: 'SU5URUxMSVNZUzEyMzQ1Njc4OTA6ZTEyMzQ1Njc4OTBm',
      baseUrl: 'https://crm.intellisys.com.br/',
      apiHost: 'https://crm.intellisys.com.br',
    );

    AccessTokenEndpoint accessTokenEndpoint = AccessTokenEndpoint(version: 1);
    Response response = await accessTokenEndpoint();
    AccessToken accessToken = AccessToken.from(response.data);
    SignInEndpoint signInEndpoint = SignInEndpoint(
      accessToken: accessToken,
      login: '04578563510',
      senha: 'MTIzNDU2',
      version: 2,
    );
    signInEndpoint().then((value) => print(value.data));

    Navigator.of(ctx).pushReplacement(
        MaterialPageRoute(builder: (context) => logedPageWrapper()));
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
