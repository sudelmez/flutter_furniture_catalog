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
    double height = 25;
    return Scaffold(
      //appBar: AppBar(), ekran bütünlüğü olsun diye eklemedik. geri dönüş için diğer sayfalara ekleriz
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: height * 2,
            ),
            SymbolExplanation(),
            SizedBox(
              height: height,
            ),
            const HeadlineText(
              sentence: 'Find Your Minimalist Furnitures You Needed!',
              size: 40,
              cmt: true,
            ),
            SizedBox(
              height: height,
            ),
            const StackProduct(),
          ],
        ),
      ),
    );
  }
}


//sizedboxlar nasıl düzenlenebilir?
//ekran yana dönünce sorun çıkıyor