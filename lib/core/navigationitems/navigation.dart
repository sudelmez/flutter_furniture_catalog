import 'package:flutter/material.dart';

void navigateToNextScreen(BuildContext context, final Widget pagename) {
  Navigator.of(context).push(MaterialPageRoute(builder: (context) => pagename));
}
