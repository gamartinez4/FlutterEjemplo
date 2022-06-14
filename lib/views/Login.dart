import 'package:flutter/material.dart';
import 'package:flutter_application_1/views/comun/Comun.dart';

class Login extends StatelessWidget {
  const Login({Key? key}):super(key: key);
  
  @override
  Widget build(BuildContext context){
    return const Scaffold(
      body: Comun(),
    );
  }
}