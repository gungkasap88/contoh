import 'package:contoh/model/DataBulan.dart';
import 'package:flutter/material.dart';

class GridViewScreen extends StatefulWidget {
  const GridViewScreen({Key? key}) : super(key: key);

  @override
  _GridViewScreenState createState() => _GridViewScreenState();
}

class _GridViewScreenState extends State<GridViewScreen> {
  List<DataBulan> dataBulan = [];

  void setData() {
    dataBulan.add(DataBulan(namaBulan: "Januari", descriptonBulan: "Bulan Ke 1", image: "https://images.tokopedia.net/img/cache/200-square/VqbcmM/2021/9/23/2fb2da53-88ae-4988-bf8f-2da8a705b630.jpg.webp?ect=4g"));
    dataBulan.add(DataBulan(namaBulan: "Februari", descriptonBulan: "Bulan Ke 2", image: "https://images.tokopedia.net/img/cache/300-square/product-1/2020/9/11/85364116/85364116_ee5b7911-f37d-4ece-b042-d04ed6b9df7e_1000_1000.webp?ect=4g"));
    dataBulan.add(DataBulan(namaBulan: "Maret", descriptonBulan: "Bulan Ke 3", image: "https://images.tokopedia.net/img/cache/200-square/VqbcmM/2022/2/19/d7d65d6f-d744-4bc6-af09-9e9a24a5bae5.jpg.webp?ect=4g"));
    dataBulan.add(DataBulan(namaBulan: "April", descriptonBulan: "Bulan Ke 4", image: "https://images.tokopedia.net/img/cache/300-square/VqbcmM/2021/11/30/37d719ba-4719-4ee7-84fb-d683646f6cae.jpg.webp?ect=4g"));
    dataBulan.add(DataBulan(namaBulan: "Mei", descriptonBulan: "Bulan Ke 5", image: "https://images.tokopedia.net/img/cache/200-square/VqbcmM/2022/3/25/b8479e91-fcde-4f4a-88b7-492bd688e932.jpg.webp?ect=4g"));
    dataBulan.add(DataBulan(namaBulan: "Juni", descriptonBulan: "Bulan Ke 6", image: "https://images.tokopedia.net/img/cache/200-square/VqbcmM/2020/9/14/12517666-c1cd-4b8d-8956-e1e5f89594f5.jpg.webp?ect=4g"));
    dataBulan.add(DataBulan(namaBulan: "Juli", descriptonBulan: "Bulan Ke 7", image: "https://images.tokopedia.net/img/cache/200-square/VqbcmM/2021/11/17/c97bd1a0-a5a8-4288-8228-f7220b420e08.jpg.webp?ect=4g"));
    dataBulan.add(DataBulan(namaBulan: "Agustus", descriptonBulan: "Bulan Ke 8", image: "https://cdn.iconscout.com/icon/free/png-256/facebook-logo-2019-1597680-1350125.png"));
    dataBulan.add(DataBulan(namaBulan: "September", descriptonBulan: "Bulan Ke 9", image: "https://cdn.iconscout.com/icon/free/png-256/facebook-logo-2019-1597680-1350125.png"));
    dataBulan.add(DataBulan(namaBulan: "Oktober", descriptonBulan: "Bulan Ke 10", image: "https://cdn.iconscout.com/icon/free/png-256/facebook-logo-2019-1597680-1350125.png"));
    dataBulan.add(DataBulan(namaBulan: "November", descriptonBulan: "Bulan Ke 11", image: "https://cdn.iconscout.com/icon/free/png-256/facebook-logo-2019-1597680-1350125.png"));
    dataBulan.add(DataBulan(namaBulan: "Desember", descriptonBulan: "Bulan Ke 12", image: "https://cdn.iconscout.com/icon/free/png-256/facebook-logo-2019-1597680-1350125.png"));
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
        title: const Text("Contoh GridView"),
      ),
      body: Container(
        margin: const EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("Data Gridview", style: TextStyle(fontWeight: FontWeight.bold),),
              const SizedBox(height: 16,),
              GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: dataBulan.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: MediaQuery.of(context).orientation ==
                      Orientation.landscape ? 3: 2,
                  crossAxisSpacing: 4,
                  mainAxisSpacing: 4,
                  childAspectRatio: (1 / 1),
                ),
                itemBuilder: (context,index,) {
                  return InkWell(
                    onTap: () {
                      print("data : ${dataBulan[index].namaBulan}");
                    },
                    child: Container(
                        alignment: Alignment.center,
                        child: Card(
                          child: Container(
                            width: double.infinity,
                            margin: const EdgeInsets.all(12),
                            child: Column(
                              children: [
                                Image.network(dataBulan[index].image, width: 70, height: 70,),
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

            ],
          ),
        ),
      ),
    );
  }
}
