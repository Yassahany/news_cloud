import 'package:flutter/material.dart';

Widget appBarTitle() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Text('News', style: TextStyle(fontSize: 24, color: Colors.black)),
      Text(
        'Cloud',
        style: TextStyle(
          fontSize: 24,
          color: Colors.blue,
          fontWeight: FontWeight.bold,
        ),
      ),
    ],
  );
}
