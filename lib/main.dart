import 'package:flutter/material.dart';
import 'package:polyglot/pages/home.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(MaterialApp(home: MyApp(

)));

class MyApp extends StatefulWidget { 
  @override
  _MyAppState createState() => _MyAppState(
    
  );
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      title: 'Translate',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: GoogleFonts.ralewayTextTheme(
          Theme.of(context).textTheme,
        ),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ), home: HomePage(),
    );
  }
}
