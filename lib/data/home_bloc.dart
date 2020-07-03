import 'dart:async';
import '../utils/http_helper.dart';

class HomeBloc {

  HttpHelper _httpHelper;
  StreamController<String> _resultController = StreamController<String>.broadcast();
  Stream<String> get resultStream => _resultController.stream;
  StreamSink<String> get resultSink => _resultController.sink;

  HomeBloc() {
    _httpHelper = HttpHelper();
    results();
  }

  Future results() async {
    var httpResult = await _httpHelper.result;
    print('Went through!');
    resultSink.add(httpResult);
  }

  Future targetResults(String code) async {
    var httpResult = await _httpHelper.targetBase(code);
    print('Went through second!');
    resultSink.add(httpResult);
  }

  void dispose() {
    _resultController.close();
  }

}