import 'package:flutter/material.dart';
import 'package:flutter_furniture_catalog/product/home/stackproducts.dart';
import 'package:flutter_furniture_catalog/product/symbolproduct.dart';
import 'package:flutter_furniture_catalog/product/textproduct.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    var sentenceheadline = 'Find Your Minimalist Furnitures You Needed!';
    double sizetext = 40;
    return Scaffold(
      //appBar: AppBar(), ekran bütünlüğü olsun diye eklemedik. geri dönüş için diğer sayfalara ekleriz
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: boxHeight(context) * 2),
            SymbolExplanation(),
            SizedBox(
              height: boxHeight(context),
            ),
            HeadlineText(
              sentence: sentenceheadline,
              size: sizetext,
              cmt: true,
            ),
            SizedBox(
              height: boxHeight(context),
            ),
            const StackProduct(),
          ],
        ),
      ),
    );
  }

  double boxHeight(BuildContext context) =>
      MediaQuery.of(context).size.height / 20;
}
