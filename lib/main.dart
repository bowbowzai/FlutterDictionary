import 'package:flutter/material.dart';
import 'package:flutter_encyclopedic/views/home.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          scaffoldBackgroundColor: Colors.grey[200],
          textTheme: GoogleFonts.sansitaTextTheme(Theme.of(context).textTheme),
          dividerColor: Colors.transparent),
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}
