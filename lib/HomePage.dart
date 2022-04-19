import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List kontak =[
    "Agung",
    "Azwar",
    "Dwiki",
    "Kukuh",
    "Lasmana",
    "Syelli",
    "Zunessa",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Contact",
            style: TextStyle(fontSize: 30)),
        leading: Icon(Icons.water_damage_rounded,
          size: 30,),
      ),
      body: Container(
        child: Column(
          children: [
            const SizedBox(height: 16,),
            Text("List view search",
            style: TextStyle(fontWeight: FontWeight.bold)),
            SizedBox(height: 10),
            TextFormField(
              decoration: InputDecoration(
                hintText: "Search",
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(4.0)),
                focusedBorder: OutlineInputBorder(borderSide: BorderSide(
                  color: Colors.black
                )),
                prefixIcon: Icon(Icons.search),
                )
              ),
            ListView.builder(
              itemBuilder: (context, index) {
                return Card(
                  child: ListTile(
                    title: Text(kontak[index],
                        style: TextStyle(fontSize: 30)),
                    subtitle: Text('Klik untuk melihat informasi kontak ' + kontak[index]),
                    leading: CircleAvatar(
                      child: Text(
                        kontak[index][0],
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                  ),
                );
              },
              itemCount: kontak.length,
            ),
          ],
        ),
      ),
    );
  }
}
