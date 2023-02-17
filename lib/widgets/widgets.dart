import 'package:flutter/material.dart';

const textInputDecoration = InputDecoration(
  labelStyle: TextStyle(color: Colors.black, fontWeight: FontWeight.w400),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Color(0xffee7b64), width: 2),
  ),
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Color(0xffee7b64), width: 2),
  ),
  disabledBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Color(0xffee7b64), width: 2),
  ),
  errorBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Color(0xffee7b64), width: 2),
  ),
  focusedErrorBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Color(0xffee7b64), width: 2),
  ),
);

void nextScrrenReplace(context, page) {
  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => page));
}
