import 'package:flutter/material.dart';
import 'package:flutter_application_1/views/baseView.dart';
import 'package:flutter_application_1/views/login.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import 'views/comun/Comun.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends HookWidget {
  MyApp({Key? key}) : super(key: key);

  var login = Login();

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Comun(login)
    );
  }
}

