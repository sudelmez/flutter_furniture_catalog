import 'package:flutter/material.dart';

Row SymbolExplanation() {
  double width = 20;
  return Row(
    children: [
      SizedBox(
        width: width,
      ),
      const Icon(
        Icons.ac_unit_sharp,
        color: Colors.black,
      ),
      const Text(
        'Pondasi',
        style: TextStyle(color: Colors.black, fontSize: 15),
      ),
    ],
  );
}
