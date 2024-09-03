import 'package:coffee/components/cart_p.dart';
import 'package:coffee/login/login_page.dart';
import 'package:coffee/pages/home.dart';
import 'package:coffee/pages/shop.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CartP(),
      builder: (context, child) => const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Home(),
      ),
    );
  }
}
