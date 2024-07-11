import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Padding row({required IconData icon ,required String name, required Color color}) {
  return Padding(
    padding: const EdgeInsets.only(left: 35.0,right: 20),
    child: Row(
      children: [
        Icon(icon,size: 28, color: color,),
        SizedBox(width: 25,),
        Text(name,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
      ],
    ),
  );
}