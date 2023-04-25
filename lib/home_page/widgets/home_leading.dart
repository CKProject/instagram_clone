import 'package:flutter/material.dart';

class HomeLeading extends StatelessWidget {
  const HomeLeading({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15, top: 5),
      child: Image.asset("asset/images/logo.png"),
    );
  }
}
