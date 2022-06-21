import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/Constants.dart';
import 'package:flutter_application_1/views/baseView.dart';
import 'package:flutter_application_1/views/login.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:provider/provider.dart';

class Comun extends HookConsumerWidget{

  HookConsumerWidget child;
  double tamano = 0.0;

  Comun(this.child,{Key? key});
  

  @override
  Widget build(BuildContext context,WidgetRef ref){
      useEffect(() {
        print("comun_useeffect");
      },
       [],
    );

    WidgetsBinding.instance.addPostFrameCallback((_) {
        print("comun_callback");
        ref.read(valueProviderSize.state).state = tamano;
      });

    return  Scaffold(
      backgroundColor: Colors.yellow,
      body: Center(
      child: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width*0.7,
        child: LayoutBuilder(builder: (contextLayout, constraints){
          
          tamano = constraints.maxWidth;
            return Container(child: child);
           }
          )
        )
      )
    );
    
  }
}
      