import 'package:flutter/material.dart';

class HeadlineText extends StatelessWidget {
  final String sentence;
  final double size;
  final bool cmt;
  const HeadlineText(
      {Key? key, required this.sentence, required this.size, required this.cmt})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return cmt
        ? Text(
            sentence,
            style:
                Theme.of(context).textTheme.headline5!.copyWith(fontSize: size),
            textAlign: TextAlign.left,
          )
        : Text(
            sentence,
            style: const TextStyle(
                color: Colors.black, fontSize: 16, fontWeight: FontWeight.bold),
            textAlign: TextAlign.right,
          );
  }
}
