import 'package:fpdart/fpdart.dart';
import 'package:http/http.dart' as http;
class ContentfulService {
  static const String accessToken = 'K_TBUAwGk9xjGj_x2sN0wJdSC1wDDtmCmDXB-JuDOJc';
  Uri _getUri(String accessToken, String contentType) {
    return Uri.parse('https://cdn.contentful.com/spaces/r3npjoykim95/environments/master/entries?access_token=$accessToken&content_type=$contentType');
  }
  Future<Unit> fetchData() async {
    final response = await http.get(_getUri(accessToken, 'post'));
    print(response.body);
    return unit;
  }
}