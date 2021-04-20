import 'package:flutter/material.dart';
import 'package:dicepok/pages/heropage.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(DicepokApp());
}

var cPrimary = Colors.orange;
var cPrimaryDark = Color(0xFFc66900);
var cPrimaryLight = Color(0xFFffc947);
var cBackground = Color(0xFFF9F9F9);
var cDisabled = Color(0xFF707070);

class DicepokApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(statusBarColor: cPrimaryDark));

    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
    
    return MaterialApp(
      home: SafeArea(child: HeroPage()),
      theme: ThemeData(
        primaryColor: cPrimary,
        primaryColorDark: cPrimaryDark,
        primaryColorLight: cPrimaryLight,
        backgroundColor: Color(0xFFFFFFFF),
        disabledColor: cDisabled,
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            primary: cPrimary,
            onPrimary: Colors.black,
          ),
        )

      ),
    );
  }
}