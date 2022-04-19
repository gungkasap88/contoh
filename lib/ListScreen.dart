import 'package:flutter/material.dart';

import 'model/DataBulan.dart';

class ListScreen extends StatefulWidget {
  const ListScreen({Key? key}) : super(key: key);

  @override
  _ListScreenState createState() => _ListScreenState();
}

class _ListScreenState extends State<ListScreen> {
  final List bulan = [
    "Januari",
    "Fabruari",
    "Maret",
    "April",
    "Mei",
    "Juni",
    "Juli",
    "Agustus",
    "September",
    "Oktober",
    "November",
    "Desember"
  ];

  List<DataBulan> dataBulan = [];

  void setData() {
    dataBulan.add(DataBulan(namaBulan: "Januari", descriptonBulan: "Bulan Ke 1"));
    dataBulan.add(DataBulan(namaBulan: "Februari", descriptonBulan: "Bulan Ke 2"));
    dataBulan.add(DataBulan(namaBulan: "Maret", descriptonBulan: "Bulan Ke 3"));
    dataBulan.add(DataBulan(namaBulan: "April", descriptonBulan: "Bulan Ke 4"));
    dataBulan.add(DataBulan(namaBulan: "Mei", descriptonBulan: "Bulan Ke 5"));
    dataBulan.add(DataBulan(namaBulan: "Juni", descriptonBulan: "Bulan Ke 6"));
    dataBulan.add(DataBulan(namaBulan: "Juli", descriptonBulan: "Bulan Ke 7"));
    dataBulan.add(DataBulan(namaBulan: "Agustus", descriptonBulan: "Bulan Ke 8"));
    dataBulan.add(DataBulan(namaBulan: "September", descriptonBulan: "Bulan Ke 9"));
    dataBulan.add(DataBulan(namaBulan: "Oktober", descriptonBulan: "Bulan Ke 10"));
    dataBulan.add(DataBulan(namaBulan: "November", descriptonBulan: "Bulan Ke 11"));
    dataBulan.add(DataBulan(namaBulan: "Oktober", descriptonBulan: "Bulan Ke 12"));
  }

  @override
  void initState() {
    setData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Contoh List"),
        ),
        body: Container(
          margin: const EdgeInsets.all(16),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                //--------------- ListView Horizontal ---------------------
                const Text("Data Bulan Horizontal", style: TextStyle(fontWeight: FontWeight.bold),),
                const SizedBox(height: 16,),
                SizedBox(
                    width: double.infinity,
                    height: 180,
                    child: ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: dataBulan.length,
                      itemBuilder: (context, index) {
                        return InkWell(
                          onTap: () {
                            print("data : ${dataBulan[index].namaBulan}");
                          },
                          child: Container(
                              width: 150,
                              alignment: Alignment.center,
                              child: Card(
                                child: Container(
                                  width: double.infinity,
                                  margin: const EdgeInsets.all(12),
                                  child: Column(
                                    children: [
                                      Image.asset("assets/google_icon.png", width: 70, height: 70,),
                                      const SizedBox(height: 16,),
                                      Text(dataBulan[index].namaBulan, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                                      const SizedBox(height: 8,),
                                      Text(dataBulan[index].descriptonBulan),
                                    ],
                                  ),
                                ),
                              )
                          ),
                        );
                      },
                    )
                ),

                //-------------------- ListView Vertical ---------------------
                SizedBox(height: 16,),
                const Text("Data Bulan Vertical", style: TextStyle(fontWeight: FontWeight.bold),),
                const SizedBox(height: 16,),
                ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    return Card(
                      child: Container(
                        margin: const EdgeInsets.all(8),
                        child: Row(
                          children: [
                            Image.asset("assets/google_icon.png", width: 70, height: 70,),
                            const SizedBox(width: 12,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(dataBulan[index].namaBulan, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                                const SizedBox(height: 8,),
                                Text(dataBulan[index].descriptonBulan),
                              ],
                            )
                          ],
                        ),
                      ),
                    );
                  },
                  itemCount: dataBulan.length,
                ),
              ],
            ),
          ),
        )
    );
  }
}


