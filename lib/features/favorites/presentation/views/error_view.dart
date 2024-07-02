import 'package:flutter/material.dart';
import 'package:nectar_app/core/common/widgets/custom_buttom.dart';

 showErrorDialog(BuildContext context){
   showDialog(
     context: context,
     builder: (BuildContext context) {
       return AlertDialog(
         title: Text("Error"),
         content: Text("Please try again"),
         actions: <Widget>[
           CustomButtom(
             child: Text("Ok"),
             onPressed: () {
               Navigator.of(context).pop();
             },
           ),
         ],
       );
     },
   );
 }