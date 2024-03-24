import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_3/hour.dart';
import 'package:flutter_application_3/minute.dart';
import 'package:flutter_application_3/tile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late FixedExtentScrollController _controller;
  int currenHour = 0;
  int currtenMinute = 0;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = FixedExtentScrollController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 70,
              child: ListWheelScrollView.useDelegate(
                controller: _controller,
                onSelectedItemChanged: (value) {
                  setState(() {
                    currenHour = value;
                  });
                },
                itemExtent: 55,
                //perspective: 0.01,
                //diameterRatio: 1.5,
                physics: FixedExtentScrollPhysics(),
                childDelegate: ListWheelChildBuilderDelegate(
                  childCount: 24,
                  builder: (context, index) {
                    return MyHour(
                      hours: index,
                    );
                  },
                ),
              ),
            ),
            Container(// test
              width: 70,
              child: ListWheelScrollView.useDelegate(
                onSelectedItemChanged: (value) {
                  setState(() {
                    currtenMinute = value;
                  });
                },
                controller: _controller,
                itemExtent: 55,
                //perspective: 0.01,
                //diameterRatio: 1.5,

                physics: FixedExtentScrollPhysics(),
                childDelegate: ListWheelChildBuilderDelegate(
                  childCount: 60,
                  builder: (context, index) {
                    return MyMinute(
                      mins: index,
                    );
                  },
                ),
              ),
            ),
          ],
        ));
  }
}
