import 'package:flutter/material.dart';
import 'package:flutter_furniture_catalog/core/floatingactionbutton/floatingbutton.dart';
import 'package:flutter_furniture_catalog/core/images.dart';
import 'package:flutter_furniture_catalog/product/textproduct.dart';

class StackProduct extends StatelessWidget {
  const StackProduct({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      const SizedBox(
          height: 350,
          //decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)), image için shape ekleyemedim
          child: ImageAssett(name: 'furnitures')),
      Positioned(
        //burada eklediğimiz stack tamamen image içinde. bir kısmının dışarıda olmasını isterdim
        height: 150,
        right: 150,
        left: 0,
        bottom: 250,
        child: Container(
          //burada text ekleyemedim. ayrıca üstüne koydum.
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.orange,
          ),
        ),
      ),
      const SizedBox(
          //burayı topright yapamadım. turuncu kısımı sola almak zorunda kaldım.
          width: 70,
          child: HeadlineText(
              sentence: 'you can find anything you like!',
              size: 16,
              cmt: false)),
      FloatingBtn()
    ]);
  }
}
