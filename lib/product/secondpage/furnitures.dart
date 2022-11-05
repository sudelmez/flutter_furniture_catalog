import 'package:flutter/material.dart';
import 'package:flutter_furniture_catalog/core/images.dart';
import 'package:flutter_furniture_catalog/core/navigationitems/navigation.dart';
import 'package:flutter_furniture_catalog/product/textproduct.dart';
import 'package:flutter_furniture_catalog/product/thirdpage/chairinfopage.dart';

class SecondPageFurniture extends StatefulWidget {
  const SecondPageFurniture({Key? key}) : super(key: key);

  @override
  State<SecondPageFurniture> createState() => _SecondPageFurnitureState();
}

class _SecondPageFurnitureState extends State<SecondPageFurniture> {
  @override
  Widget build(BuildContext context) {
    var sentence2 = 'Welcome!';
    double size2 = 20;
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            Container(
              alignment: AlignmentDirectional(-0.8, 0),
              child: HeadlineText(
                cmt: false,
                sentence: sentence2,
                size: size2,
              ),
            ),
            InkWell(
              child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: ImageAssett(name: 'chair')),
              onTap: () {
                navigateToNextScreen(context, ChairInfo());
              },
            ),
            Divider(),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: SizedBox(
                height: 200,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    ChairsImages(),
                    ChairsImages(),
                    ChairsImages(),
                    ChairsImages(),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Padding ChairsImages() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        child: ImageAssett(
          name: 'chair',
        ),
      ),
    );
  }
}
