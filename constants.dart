import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

//Color(0xFFFCE4EC)
const kMainColor = Colors.amberAccent;

const kMessageEnterDesign = InputDecoration(
  contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
  hintText: 'Enter your message here......',
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(color: kMainColor , width: 2),
    borderRadius: BorderRadius.all(
      Radius.circular(15),
    ),
  ),
);
