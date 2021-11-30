import 'package:dio/dio.dart';
import '../../model/cliente.dart';
import 'package:wsda/core/values/access_token.dart';
import 'package:wsda/source/common/endpoints/access_token_endpoint.dart';
import 'package:wsda/source/common/endpoints/search_client.dart';

class ButtonFuctions {
  Future<void> cadastrar() async {
    // print("Cadastrado");
    // Navigator.of(ctx)
    //     .push(MaterialPageRoute(builder: (context) => SingingUpPageWrapper()));
  }

  Future<void> forgotPassword() async {
    print("Nova senha");
  }
}
