import 'package:flutter/material.dart';

class MyOrder extends StatefulWidget {
  const MyOrder({super.key});

  @override
  State<MyOrder> createState() => _MyOrderState();
}

class _MyOrderState extends State<MyOrder> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Card(
            color: Colors.white,
            child: ListTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://thumbs.dreamstime.com/b/white-head-chicken-bantam-isolated-rooster-white-die-cutting-70068186.jpg'),
                ),
                title: Text('Nama Pesanan'),
                trailing: Container(
                  child: Image.network(
                      'https://cdn-icons-png.flaticon.com/512/8215/8215539.png'),
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(20)),
                  height: 35,
                )),
          ),
          Card(
            color: Colors.white,
            child: ListTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://thumbs.dreamstime.com/b/white-head-chicken-bantam-isolated-rooster-white-die-cutting-70068186.jpg'),
                ),
                title: Text('Nama Pesanan'),
                trailing: Container(
                  child: Image.network(
                      'https://cdn-icons-png.flaticon.com/512/8215/8215539.png'),
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(20)),
                  height: 35,
                )),
          ),
          Card(
            color: Colors.white,
            child: ListTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://thumbs.dreamstime.com/b/white-head-chicken-bantam-isolated-rooster-white-die-cutting-70068186.jpg'),
                ),
                title: Text('Nama Pesanan'),
                trailing: Container(
                  child: Image.network(
                      'https://cdn-icons-png.flaticon.com/512/9724/9724298.png'),
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(20)),
                  height: 35,
                )),
          ),
        ],
      ),
    );
  }
}
