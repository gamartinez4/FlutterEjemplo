import 'package:flutter/material.dart';
import 'package:flutter_application_1/views/baseView.dart';
import 'package:flutter_application_1/views/comun/Comun.dart';

class Login extends BaseView {
  Login({Key? key}):super(key:key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Row(
        children: [
          Container(
            margin: EdgeInsets.only(top: 100),
            width: super.size,
            child: const TextField(
            decoration: InputDecoration(border: OutlineInputBorder(), label: Text("Input1"),)
            )
          ),
        ],
      ),
    );
  }
}