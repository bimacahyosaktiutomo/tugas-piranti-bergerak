import 'package:flutter/material.dart';

class MyColumnRow extends StatelessWidget {
  const MyColumnRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          SizedBox(
            height: 460,
            child: Stack(
              children: [
                Container(
                    height: 300,
                    alignment: Alignment.topCenter,
                    child: Image.network(
                        'https://www.static-src.com/wcsstore/Indraprastha/images/catalog/full/catalog-image/MTA-75782862/sunpride_ayam_kampung_pcs_600_gr_full02_o6tz3xrv.jpeg')),
                Card(
                  margin: EdgeInsets.only(left: 35, right: 35, top: 250),
                  child: ListTile(
                    leading: FlutterLogo(),
                    title: Text('Status Pesanan'),
                  ),
                ),
                Container(
                  height: 60,
                  margin: EdgeInsets.only(top: 320),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      for (int i = 0; i < 4; i++)
                        Container(
                          height: 45,
                          width: 45,
                          margin: EdgeInsets.symmetric(horizontal: 25),
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.amber),
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.amber),
                        )
                    ],
                  ),
                ),
                Container(
                  height: 60,
                  margin: EdgeInsets.only(top: 390),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      for (int i = 0; i < 4; i++)
                        Container(
                          height: 45,
                          width: 45,
                          margin: EdgeInsets.symmetric(horizontal: 25),
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.amber),
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.amber),
                        )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Flexible(
            child: GridView.count(
              crossAxisCount: 2,
              children: <Widget>[
                for (int i = 0; i < 4; i++)
                  Container(
                    margin: EdgeInsets.all(5),
                    height: 80,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0xecf7fa).withOpacity(1),
                          offset: Offset(0, 0),
                          blurRadius: 1,
                          spreadRadius: 2,
                        ),
                      ],
                    ),
                    child: Text(
                      "Item",
                      textAlign: TextAlign.center,
                    ),
                  )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
