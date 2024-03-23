import 'package:flutter/material.dart';
import 'package:flutter_application_3/HomeClock.dart';
import 'package:flutter_application_3/alarm_page.dart';
import 'package:flutter_application_3/form.dart';

void main() {
  runApp(myApp());
}

class myApp extends StatelessWidget {
  const myApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.black,
        brightness: Brightness.light,
      ),
      home: alarmPage(),
    );
  }
}
