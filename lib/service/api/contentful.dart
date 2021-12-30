import 'package:fpdart/fpdart.dart';
import 'package:http/http.dart' as http;
class ContentfulService {
  Future<Unit> fetchData() async {
    final response = await http.get(Uri.parse('https://cdn.contentful.com/spaces/r3npjoykim95/environments/master/entries?access_token=K_TBUAwGk9xjGj_x2sN0wJdSC1wDDtmCmDXB-JuDOJc&content_type=post'));
    print(response.body);
    return unit;
  }
}