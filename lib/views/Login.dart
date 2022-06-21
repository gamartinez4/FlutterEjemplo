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
   
    var size = ref.watch(valueProviderSize);
    
    var listWidget = useState(
      <Widget>[
              Container(
                key: UniqueKey(),
                margin: EdgeInsets.only(top: 100),
                child: const TextField(
                decoration: InputDecoration(border: OutlineInputBorder(), label: Text("Input1"),)
            )
          ),
          Container(
            key: UniqueKey(),
              margin: EdgeInsets.only(top:20),
              child: const TextField(
              decoration: InputDecoration(border: OutlineInputBorder(), label: Text("Input2"),)
            )
          ),
          Container(
            key: UniqueKey(),
              margin: EdgeInsets.only(top:20),
              child: const TextField(
              decoration: InputDecoration(border: OutlineInputBorder(), label: Text("Input3"),)
            )
          )]
          );

    useEffect(() {
        print("login_useeffect");
      },
       [],
    );

    WidgetsBinding.instance.addPostFrameCallback((_) {
        print("login_callback");
        print(listWidget.value.last.toString());
      });

    return Container(
      color: Colors.white,
      child: Stack(
        children: [
         ListView(
            children: 
             listWidget.value
          ,
          ),
          Container(
              margin: EdgeInsets.only(top:400),
              child: FloatingActionButton(onPressed: (){
                  
            List<Widget> list  = <Widget>[];
            var ele;
            for(ele in listWidget.value){
              list.add(ele);
            }
            list.add(Container(
            key: UniqueKey(),
              margin: EdgeInsets.only(top:20),
              child: const TextField(
              decoration: InputDecoration(border: OutlineInputBorder(), label: Text("Input3"),)
            )
          ));
            listWidget.value = list;
                
                
              }
              ),
            )
        ],
      ),
    );
  }
}