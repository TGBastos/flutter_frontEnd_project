import 'package:dio/dio.dart';
import 'package:rio_das_pedras_front_end/core/entities/cliente.dart';
import 'package:wsda/core/values/access_token.dart';
import 'package:wsda/source/common/endpoints/access_token_endpoint.dart';
import 'package:wsda/source/common/endpoints/search_client.dart';

class buttonFuctions {
  Future<void> entrar(String ClientCPF) async {
    AccessTokenEndpoint accessTokenEndpoint = AccessTokenEndpoint(version: 1);
    Response response = await accessTokenEndpoint();
    AccessToken accessToken = AccessToken.from(response.data);

    SearchClient searchClient = SearchClient(
      cpf: ClientCPF,
      accessToken: accessToken,
      version: 2,
    );

    await searchClient().then(
      (value) => value.data['code'] == '100'
          ? Cliente.fromJson({})
          : Cliente.instance = Cliente.fromJson(value.data),
    );
  }

  Future<void> cadastrar() async {
    // print("Cadastrado");
    // Navigator.of(ctx)
    //     .push(MaterialPageRoute(builder: (context) => SingingUpPageWrapper()));
  }

  Future<void> forgotPassword() async {
    print("Nova senha");
  }
}
