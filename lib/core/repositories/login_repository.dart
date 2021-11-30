import 'package:dio/dio.dart';
import 'package:rio_das_pedras_front_end/core/model/user_model.dart';
import 'package:wsda/source/user_data_access/user_data_access.dart';
import '../model/cliente.dart';
import 'package:wsda/core/values/access_token.dart';
import 'package:wsda/source/common/endpoints/access_token_endpoint.dart';

class LoginRepository {
  Future<bool> entrar(UserModel user) async {
    AccessTokenEndpoint accessTokenEndpoint = AccessTokenEndpoint(version: 1);
    Response response = await accessTokenEndpoint();
    AccessToken accessToken = AccessToken.from(response.data);

    SignInEndpoint signInClient = SignInEndpoint(
      accessToken: accessToken,
      login: user.CPF,
      senha: user.senha,
      version: 2,
    );
    try {
      print('Ta aq');
      final Response response = await signInClient();
      //final Map<String, dynamic> responseBody = response.data;
      print(response.data);
      Cliente.instance = Cliente.fromMap(response.data);
      if (response.data['code'] == '000') {
        print(Cliente.instance.clienteNome + 'AQ PORRAAAA');
        return true;
      } else {
        print('Fudeu');
        return false;
      }
    } catch (e) {
      return false;
    }
  }
}
