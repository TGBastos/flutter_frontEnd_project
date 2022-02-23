import 'package:dio/dio.dart';
import 'package:wsda/core/values/access_token.dart';
import 'package:wsda/source/common/endpoints/access_token_endpoint.dart';
import 'package:wsda/source/common/endpoints/stores_list.dart';

class ListaLojas {
  Future<bool> ConsultaListaLojas() async {
    AccessTokenEndpoint accessTokenEndpoint = AccessTokenEndpoint(version: 1);
    Response response = await accessTokenEndpoint();
    AccessToken accessToken = AccessToken.from(response.data);

    StoresList storesList = StoresList(
      version: 2,
      accessToken: accessToken,
      filter: {
        "_page": 1,
        "_pageSize": 100,
        "lojaRazaoSocial": "",
        "lojaNomeFantasia": "",
        "lojaCidade": "",
        "lojaUF": "",
        "lojaPertenceGrupo": "",
        "lojaRegionalNumero": "",
      },
    );
    return false;
  }
}
