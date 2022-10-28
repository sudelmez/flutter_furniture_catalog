import 'package:flutter/material.dart';
import 'package:flutter_furniture_catalog/product/home/homeview.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: const MyHomePage(),
        theme: ThemeData.light().copyWith(
            appBarTheme: const AppBarTheme(
                centerTitle: true, backgroundColor: Colors.transparent)));
  }
}
