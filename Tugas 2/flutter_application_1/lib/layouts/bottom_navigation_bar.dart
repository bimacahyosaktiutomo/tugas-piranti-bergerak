import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/katalog.dart';
import 'package:flutter_application_1/widgets/order.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_application_1/widgets/column_row.dart';

class MyBottomNavigationBar extends StatefulWidget {
  const MyBottomNavigationBar({super.key});

  @override
  State<MyBottomNavigationBar> createState() => _MyBottomNavigationBarState();
}

class _MyBottomNavigationBarState extends State<MyBottomNavigationBar> {
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    MyColumnRow(),
    MyKatalog(),
    MyOrder(),
  ];

  void _onItemTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ) ,
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem> [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Katalog'),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: 'Pesanan'),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: const Color.fromARGB(255, 130, 239, 87),
        selectedLabelStyle: GoogleFonts.poppins(fontWeight: FontWeight.bold),
        unselectedLabelStyle: GoogleFonts.poppins(),
        onTap: _onItemTap,
      ),
    );
  }
}