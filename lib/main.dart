import 'dart:math';

import 'package:flutter/material.dart';

void main()  => runApp(MyApp());


class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  late Color _colorBac;
  late Color _colorText;

  void generateColorBac(){
    setState(() {
      _colorBac = Color((Random().nextDouble() * 0xFFFFFF).toInt() << 0).withOpacity(1.0);
    });
  }

  void generateColorText() {
    setState(() {
      _colorText = Color.fromARGB(255, Random().nextInt(255), Random().nextInt(255), Random().nextInt(255));
    });
  }

  @override
  void initState() {
    generateColorBac();
    generateColorText();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => generateColorBac(),
      onDoubleTap: () => generateColorText(),
      child: Container(
        alignment: Alignment.center,
        color: _colorBac,
        child: Text(
          "Hey there",
          style: TextStyle(fontSize: 50, color: _colorText, fontFamily: "StickNoBills"),
          textDirection: TextDirection.ltr,
        ),
      ),
    );
  }
}