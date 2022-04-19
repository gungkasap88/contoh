import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class list_screen extends StatefulWidget {
  const list_screen({Key? key}) : super(key: key);

  @override
  State<list_screen> createState() => _list_screenState();
}

class _list_screenState extends State<list_screen> {
  final List Bulan =[
    "Januari",
    "Februari",
    "Maret"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Contoh List"),
      ),
      body: Container(
        child: ListView.builder(
            itemBuilder: (context, index) {
              return Card(
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: Text(Bulan[index], style: TextStyle(fontSize: 16),),
                ),
              );
    },
    itemCount: Bulan.length,
      ),
      ),
    );
  }
}
