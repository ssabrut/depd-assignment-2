import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({super.key, this.url});

  final url;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 0, horizontal: 4.0),
      decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage(url), fit: BoxFit.fill),
          border: Border.all(color: Colors.transparent),
          borderRadius: const BorderRadius.all(Radius.circular(12))),
    );
  }
}
