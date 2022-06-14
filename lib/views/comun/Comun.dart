import 'package:flutter/material.dart';

class Comun extends StatelessWidget {
  const Comun({Key? key}):super(key: key);
  
  @override
  Widget build(BuildContext context){
    return Center(
      child: Container(
        color: Colors.yellow,
        height: MediaQuery.of(context).size.height * 0.7,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          children:[

              LayoutBuilder(
                builder: (BuildContext context, BoxConstraints constraints) {
                  return Container(
                    margin: EdgeInsets.only(left: (constraints.maxWidth- 0.6*constraints.maxWidth)/2, top: 20),
                    color: Colors.red,
                    height: 0.5*constraints.maxHeight,
                    width: 0.6*constraints.maxWidth,
                  );
                }
            ),
            LayoutBuilder(
                builder: (BuildContext context, BoxConstraints constraints) {
                  return Container(
                    margin: EdgeInsets.only(left: (constraints.maxWidth- 0.6*constraints.maxWidth)/2-30, top: 20),
                    color: Colors.blue,
                    height: 60,
                    width:60 ,
                  );
                }
            )
          ]
        )
      )
    );
  }
}
      