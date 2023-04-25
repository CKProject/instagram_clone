import 'package:flutter/material.dart';

class HomeAction extends StatelessWidget {
  const HomeAction({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 15),
          child: Image.asset(
            "asset/images/more.png",
            width: 25,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 11),
          child: Image.asset(
            "asset/images/heart.png",
            width: 25,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 12),
          child: Image.asset(
            "asset/images/send.png",
            width: 25,
          ),
        ),
      ],
    );
  }
}
