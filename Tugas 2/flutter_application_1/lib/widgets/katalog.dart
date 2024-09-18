import 'package:flutter/material.dart';

class MyKatalog extends StatefulWidget {
  const MyKatalog({super.key});

  @override
  State<MyKatalog> createState() => _MyKatalogState();
}

class _MyKatalogState extends State<MyKatalog> {
  var itemNumber = 1;

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      padding: EdgeInsets.only(top: 60),
      children: <Widget>[
        for (int i = 0; i < 6; i++)
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
              "Item ${itemNumber}",
              textAlign: TextAlign.center,
            ),
          )
      ],
    );
  }
}
