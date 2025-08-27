import 'package:flutter/material.dart';
import 'package:new_app/views/home_view.dart';

void main() {
  runApp(const NewsCloud());
}

// ignore: camel_case_types
class NewsCloud extends StatelessWidget {
  const NewsCloud({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: HomePage());
  }
}
