import 'package:dio/dio.dart';
import 'package:rio_das_pedras_front_end/models/loja_organizadora.dart';
import 'package:wsda/core/values/access_token.dart';
import 'package:wsda/source/common/endpoints/access_token_endpoint.dart';
import 'package:wsda/source/user_data_access/endpoints/consult_stores_organization.dart';

class OrganizadoraController {
  Future<bool> consultaOrganizadora() async {
    AccessTokenEndpoint accessTokenEndpoint = AccessTokenEndpoint(version: 1);
    Response response = await accessTokenEndpoint();
    AccessToken accessToken = AccessToken.from(response.data);

    ConsultStoreOrganization consultStoreOrganization =
        ConsultStoreOrganization(
      accessToken: accessToken,
      version: 1,
    );

    try {
      final Response response = await consultStoreOrganization();

      if (response.data['code'] == '000') {
        Organizadoras.instance = Organizadoras.fromMap(response.data);
        return true;
      } else {
        print(response.data);
        return false;
      }
    } catch (e) {
      print(e);
      return false;
    }
  }
}
