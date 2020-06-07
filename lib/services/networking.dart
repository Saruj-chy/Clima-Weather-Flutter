import 'package:http/http.dart' as http;
import 'dart:convert';

class NetworkHelper {
  final String url;

  NetworkHelper(this.url);

  Future getData() async {
    http.Response response = await http.get(url);
//    print(response.body);

    if (response.statusCode == 200) {
      String data = response.body;
      /* print(data);

      var longitude = jsonDecode(data)['coord']['lon'];
      print(longitude);*/

      var decodedData = jsonDecode(data);

      return decodedData;
    } else {
      print(response.statusCode);
    }
  }
}
