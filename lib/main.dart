import 'package:flutter/material.dart';
import 'package:flutter_app_fastcall_thailand/views/home_ui.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeUI(),
      theme: ThemeData(
        fontFamily: 'Kanit'
      ),
    ),
  );
}