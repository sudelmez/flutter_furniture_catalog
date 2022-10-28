import 'package:flutter/material.dart';

class ImageAssett extends StatelessWidget {
  const ImageAssett({Key? key, required this.name}) : super(key: key);
  final String name;

  @override
  Widget build(BuildContext context) {
    return Image.asset(NamewithPath, fit: BoxFit.cover);
  }

  String get NamewithPath => 'assets/$name.jpg';
}
