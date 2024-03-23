import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_3/HomeClock.dart';

class alarmPage extends StatefulWidget {
  const alarmPage({super.key});

  @override
  State<alarmPage> createState() => _alarmPageState();
}

class _alarmPageState extends State<alarmPage> {
  @override
  Widget build(BuildContext context) {
    bool _firstSwitch = true;
    // bool _secondSwitch= false;
    // bool _thirdSwitch = false;

    // Color _colorOn = Colors.yellow;
    // Color colorOff = Colors.yellow.withAlpha(100);// điều chỉnh độ trong suốt

    // Color _switchActiveColor = Colors.yellow;
    // Color _switchInActiveColor = Colors.yellow.withAlpha(100);
    // late Timer _time;

    return Scaffold(
      appBar: AppBar(
        title: Text('Báo Thứ'),
      ),
      body: Column(),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () => setState(
          () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => HomeClock()));
          },
        ),
      ),
    );
  }
}
