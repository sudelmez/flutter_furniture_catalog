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
    var namepicture = 'furnitures';
    var sentencecomment = 'you can find\n anything\n you like!';
    return Stack(children: [
      SizedBox(
        height: 400,
        child: ClipRRect(
          child: ImageAssett(name: namepicture),
          borderRadius: BorderRadius.circular(20),
        ),
      ),
      Positioned(
        //burada eklediğimiz stack tamamen image içinde. bir kısmının dışarıda olmasını isterdim
        height: 150,
        right: 150,
        left: 0,
        bottom: 250,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.orange,
          ),
        ),
      ),
      Positioned(
        height: 150,
        right: 160,
        left: 0,
        bottom: 230,
        child: HeadlineText(sentence: sentencecomment, size: 30, cmt: false),
      ),
      FloatingBtn()
    ]);
  }
}
