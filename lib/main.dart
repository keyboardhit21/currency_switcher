import 'package:flutter/material.dart';
import './data/home_bloc.dart';
import 'dart:convert';
import './widgets/currency_list.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  HomeBloc _homeBloc;
  var rates;

  @override
  void initState() {
    _homeBloc = HomeBloc();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: StreamBuilder(
          stream: _homeBloc.resultStream,
          initialData: '',
          builder: (BuildContext context, AsyncSnapshot snapshot) {
            if(snapshot.hasData) {
              try{
                var rates = json.decode(snapshot.data);

                return SingleChildScrollView(
                  child: CurrenclyListWidget(rates, _homeBloc),
                ) ;
              }
              catch (e) {
                print(e.toString() + 'This is the error!');
              }

              return Center(
                child: CircularProgressIndicator(),
              );
              
            }
            else {
              return Center(
                child: CircularProgressIndicator(),
              );
            }
          },
        ),
      ),
    );
  }


}
