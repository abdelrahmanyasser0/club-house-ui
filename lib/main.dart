import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:with_assem/screens/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  Widget build(BuildContext context) {
    return MaterialApp(  // This widget is the root of your application.


    debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme:const AppBarTheme(

        ),

        primaryColor: Colors.white,
        iconTheme:const IconThemeData(
            size: 28,color: Colors.black,

        ),
        accentColor: Colors.green.shade800,
        fontFamily: GoogleFonts.montserrat().fontFamily,
        textTheme: GoogleFonts.montserratTextTheme(),


      ),
      home: Home(),
    );


  }
}

