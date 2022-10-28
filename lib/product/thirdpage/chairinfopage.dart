import 'package:flutter/material.dart';
import 'package:flutter_furniture_catalog/core/images.dart';

class ChairInfo extends StatelessWidget {
  const ChairInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [ImageAssett(name: 'chair')],
        ),
      ),
    );
  }
}
