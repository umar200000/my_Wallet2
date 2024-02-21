import 'package:e_wallet/pages/my_wallet_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  print("hello github!");
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: false,
        primarySwatch: Colors.red,
        textTheme: GoogleFonts.montserratTextTheme(),
      ),
      home: MyWallet(),
    );
  }
}
