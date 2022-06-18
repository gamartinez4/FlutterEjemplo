import 'package:flutter/material.dart';
import 'package:flutter_application_1/views/baseView.dart';
import 'package:flutter_application_1/views/login.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class Comun<T extends BaseView> extends HookWidget{

  T child;

  Comun(this.child,{Key? key});
  

  @override
  Widget build(BuildContext context){
    return  Scaffold(
      backgroundColor: Colors.yellow,
      body: Center(
      child: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width*0.7,
        child: LayoutBuilder(builder: (context, constraints){
            child.size = constraints.maxWidth;
            return Container(child: child);
           }
          )
        
        )
      )
    );
    
  }
}
      