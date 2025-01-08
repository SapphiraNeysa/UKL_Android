import 'package:flutter/material.dart';
import 'package:ukl_paket1/models/transaksi_model.dart';
import 'package:ukl_paket1/pages/splash_screen.dart';
import 'package:ukl_paket1/pages/home_screen.dart';
import 'package:ukl_paket1/widgets/nav_bar.dart';

class TransaksiScreen extends StatelessWidget {
  TransaksiScreen({super.key});
  final List<Pelanggan> items = [
    Pelanggan(
        name: 'didit tekhnik',
        waktu: '26/04/2023 06:29',
        image: "assets/images/didit.png",
        desc: '5758 tekhnik',
        keterangan: ' Menunggu Konfirmasi'),
    Pelanggan(
        name: 'Danish Jaya Teknik',
        waktu: '26/04/2023 06:29',
        image: "assets/images/blank.png",
        desc: 'Danish jaya Teknik',
        keterangan: ' Menunggu Konfirmasi'),
    Pelanggan(
        name: 'Free Kuota',
        waktu: '26/04/2023 06:25',
        image: "assets/images/blank.png",
        desc: '',
        keterangan: 'Menunggu Konfirmasi')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25.0),
              color: Colors.grey[100]),
          child: TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25.0),
                  borderSide: BorderSide.none),
              hintText: "Cari kebutuhan servismu",
              hintStyle: TextStyle(color: Colors.grey),
              prefixIcon: Icon(Icons.search),
            ),
          ),
        ),
        backgroundColor: Colors.white,
        foregroundColor: Colors.grey,
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.notifications))
        ],
      ),
      body: Container(
          margin: EdgeInsets.all(8),
          child: ListView.builder(
              padding: EdgeInsets.all(8),
              itemCount: items.length,
              itemBuilder: (context, index) {
                final item = items[index];
                return InkWell(
                  child: Card(
                    child: Container(
                      margin: EdgeInsets.all(16),
                      child: Row(children: [
                        Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              border: Border.all(color: Colors.black, width: 1),
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(50),
                              child: Image.asset(
                                  alignment: Alignment.centerLeft,
                                  height: 50,
                                  width: 50,
                                  item.image),
                            )),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              padding: EdgeInsets.only(left: 16),
                              child: Text(
                                item.name,
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                    fontSize: 14),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(left: 16),
                              child: Text(
                                item.waktu,
                                style: TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.normal,
                                    color: Color.fromARGB(255, 207, 201, 201)),
                              ),
                            ),
                            Row(
                              children: [
                                Container(
                                  padding: EdgeInsets.only(left: 16),
                                  child: Text(
                                    item.desc,
                                    style: TextStyle(
                                        fontWeight: FontWeight.normal,
                                        fontSize: 13,
                                        color: Colors.blue),
                                  ),
                                ),
                                Container(
                                    child: Text(
                                  item.keterangan,
                                  style: TextStyle(
                                      fontWeight: FontWeight.normal,
                                      fontSize: 13,
                                      color: Colors.amber),
                                ))
                              ],
                            )
                          ],
                        ),
                      ]),
                    ),
                  ),
                );
              })),
      bottomNavigationBar: NavBar(selectedItem: 1),
    );
  }
}
