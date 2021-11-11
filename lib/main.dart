import 'package:flutter/material.dart';
import 'package:flutter_app_fastcall_thailand/views/home_ui.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

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