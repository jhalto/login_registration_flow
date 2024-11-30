import 'package:flutter/material.dart';

whiteButton(BuildContext context,VoidCallback onpressed, Widget widget){
  return MaterialButton(
    onPressed: onpressed,
    child: widget,
    height: 50,
    minWidth: MediaQuery.of(context).size.width*.70,
    
    color: Colors.white,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(7)
    ),
  );
}