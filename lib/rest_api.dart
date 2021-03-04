import 'dart:convert';

import 'package:http/http.dart' as http;

// class URLS {
//   static const String BASE_URL = 'https://aodapi.eralpsoftware.net';
// }

class ApiService {
  static Future<List<dynamic>> getListTodo() async {

    final response = await http.get('https://aodapi.eralpsoftware.net/todo', headers: {
      "token":"eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VybmFtZSI6IkRvZ3VrYW4gQ2FnbGFrcGluYXIiLCJpZCI6NDIsImlhdCI6MTYxNDg4NzMwNiwiZXhwIjoxNjE0OTU5MzA2fQ.GPlbjFyzkgflpzUb8emDySJDSVLFd4kToKpWcQjx0yM",
    },);
    if (response.statusCode == 200) {

      return json.decode(response.body);
    } else {
      return null;
    }
  }
  //
  // static Future<bool> addEmployee(body) async {
  //
  //   final response = await http.post('${URLS.BASE_URL}/create', body: jsonEncode);
  //   if (response.statusCode == 200) {
  //     return true;
  //   } else {
  //     return false;
  //   }
  // }
}