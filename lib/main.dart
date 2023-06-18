import 'dart:developer' as devtools show log;

import 'package:flutter/material.dart';
import 'package:kobe_tab_bar/hoop.dart';

extension Log on Object {
  void log() => devtools.log(toString());
}

void main() {
  runApp(
    MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        brightness: Brightness.dark,
      ),
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    ),
  );
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: Center(
        child: Container(
          child: Center(
            child: CustomPaint(
              size: Size(400, 400),
              painter: HoopPainter(),
            ),
          ),
        ),
      ),
    );
  }
}
