import 'package:flutter/material.dart';
import 'package:flutter_application_1/layouts/bottom_navigation_bar.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          toolbarHeight: 65,
          title: Row(
            children: <Widget>[
              Icon(
                Icons.pets
              ),
              Container(
                margin: EdgeInsets.all(8),
                child: Text('Wijaya', style: GoogleFonts.poppins(fontWeight: FontWeight.bold,),),
              )
            ],
          ),
          backgroundColor: const Color.fromARGB(255, 130, 239, 87),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(5)
            )
          ),
        ),
        body: MyBottomNavigationBar(),
      ),
    );
  }
}
