import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/Constants.dart';
import 'package:flutter_application_1/views/baseView.dart';
import 'package:flutter_application_1/views/comun/Comun.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class Login extends HookConsumerWidget {
  Login({Key? key}):super(key:key);

  @override
  Widget build(BuildContext context, WidgetRef ref){
    
    var listWidget = useState(2
          );

    useEffect(() {
        print("login_useeffect");
      },
       [],
    );

    WidgetsBinding.instance.addPostFrameCallback((_) {
        print("login_callback");
      });

    var size = ref.watch(valueProviderSize);

    return Scaffold(

      body:Container(
              margin: EdgeInsets.only(top: 100),
              width: size,
              child: const TextField(
              decoration: InputDecoration(border: OutlineInputBorder(), label: Text("Input1"),)
            )
          ),
          
    );
  }
}