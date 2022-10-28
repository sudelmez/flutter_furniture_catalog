import 'package:flutter/material.dart';
import 'package:flutter_furniture_catalog/core/navigationitems/navigation.dart';
import 'package:flutter_furniture_catalog/product/secondpage/furnitures.dart';

class FloatingBtn extends StatefulWidget {
  const FloatingBtn({Key? key}) : super(key: key);

  @override
  State<FloatingBtn> createState() => _FloatingBtnState();
}

class _FloatingBtnState extends State<FloatingBtn> {
  @override
  Widget build(BuildContext context) {
    return Positioned(
      //yine aynı şekilde tüm buton image içinde. bir kısmını dışarıda istiyorum.
      height: 70,
      right: 10,
      left: 150,
      bottom: 10,
      child: FloatingActionButton(
        child: const Icon(
          Icons.arrow_right,
          size: 50,
        ),
        onPressed: () {
          navigateToNextScreen(context, SecondPageFurniture());
        },
      ),
    );
  }
}
