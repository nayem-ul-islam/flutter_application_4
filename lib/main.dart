//import 'package:flutter/material.dart';
//import 'HomePage.dart';
import 'dart:convert';

import 'package:flutter/material.dart';
//import 'package:http/http.dart' as http;
import 'package:httpservice/httpservice.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dice Roller',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.yellow,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //late Future<Bndr> futureBndr;

  @override
  void initState() {
    super.initState();
    //futureBndr = fetchBndr();
    getapidata('http:192.168.0.177/php-rest-api/api-fetch-all.php');
    //192.168.0.177/php-rest-api/api-fetch-single.php
    //
  }

  void getapidata(String apix) async {
    HttpService httpService = HttpService('$apix');
    var data = await httpService.getContents();
    var decodedData = jsonDecode(data);
    print(decodedData);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
