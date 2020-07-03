import 'dart:io';

import 'package:http/http.dart' as http;

class HttpHelper {

  String baseUrl = 'https://api.exchangeratesapi.io/';


  Future<String> get result async {
    var status = await http.get(this.baseUrl + 'latest?base=USD');
    if(status.statusCode == HttpStatus.ok) {
      return status.body;
    }
    return '';
  }

  Future<String> targetBase(String code) async {
    var status = await http.get(this.baseUrl + 'latest?base=$code');
    if(status.statusCode == HttpStatus.ok) {
      return status.body;
    }
    return '';
  }

}