import 'package:flutter/material.dart';
import 'package:grid_app/presentation/home/home_widget.dart';

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final controller = PageController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: PageView(
        controller: controller,
        children: [
          Page1(),
          Text('Page 2'),
          Text('Page 3'),

        ],
      ),
    );
  }
}
