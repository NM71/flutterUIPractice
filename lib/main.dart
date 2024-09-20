import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:practice/home.dart';

// void main() => runApp(MyApp());

void main() => runApp(DevicePreview(
// enabled: !kReleaseMode,
      builder: (context) => MyApp(),
    ));

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Poppins'),
      home: Home(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int num = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Demo'),
        centerTitle: true,
      ),
      body: Center(
          child: RichText(
              text: TextSpan(
        style: TextStyle(fontSize: 20, color: Colors.black),
        children: <TextSpan>[
          TextSpan(text: 'I have eaten '),
          TextSpan(
              text: ' $num ',
              style: TextStyle(color: Colors.yellow, fontSize: 50)),
          TextSpan(text: 'candies today'),
        ],
      ))),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            num++;
          });
        },
        backgroundColor: Colors.yellow,
        child: Icon(Icons.add),
      ),
    );
  }
}
