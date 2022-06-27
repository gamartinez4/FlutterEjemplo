import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter_application_1/utils/Constants.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';



bool verifStrings(List<String> textListString){
   
    var text;
  
    for (text in textListString){
      print("textos: $text");
      if(text == "")return false;
    }

    return true;
}

bool verifyStrings(WidgetRef ref){
    var textListString = ref.read(textsList.state).state;
    var text;
  
    for (text in textListString){
      print("textos: $text");
      if(text == "")return false;
    }

    return true;
}