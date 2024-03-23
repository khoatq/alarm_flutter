import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_3/form.dart';

class HomeClock extends StatefulWidget {
  const HomeClock({super.key});

  @override
  State<HomeClock> createState() => _HomeClockState();
}

class _HomeClockState extends State<HomeClock> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text(
      //     'Báo Thức',
      //     style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
      //   ),
      // ),
      // silve: <Widget>[
      //   Container(
      //     height: 200,
      //     child: HomeClock(),
      //   ),
      // ],
      appBar: AppBar(
        title: Text('Tạo báo thức'),
        actions: <Widget>[TextButton(onPressed: () {}, child: Text('Xong'))],
      ),
      backgroundColor: Colors.deepPurple[100],
      body: CustomScrollView(
        slivers: [
          // SliverAppBar(
          //   title: Text('Tạo báo thức'),

          // ),
          SliverToBoxAdapter(
              child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              height: 200,
              child: HomePage(),
            ),
          )),
        ],
      ),
    );
  }
}
