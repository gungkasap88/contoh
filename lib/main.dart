import 'package:contoh/HomePage.dart';
import 'package:contoh/ListScreen.dart';
import 'package:contoh/list_latihan.dart';
import 'package:contoh/list_screen.dart';
import 'package:flutter/material.dart';
import 'package:contoh/login.dart';
import 'package:contoh/register.dart';
import 'package:contoh/gridview_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: const GridViewScreen(),
    );
  }
}
