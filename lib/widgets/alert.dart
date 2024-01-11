import 'package:flutter/material.dart';

void alert(BuildContext context){
  showDialog(context: context, 
  builder: (context) {
    return AlertDialog(
      content:const Text("Preencha todos os campos"),
      actions: [
        TextButton(onPressed: (){
          Navigator.of(context).pop();
        }, child:const Text("OK"))
      ],
    );
  });
}