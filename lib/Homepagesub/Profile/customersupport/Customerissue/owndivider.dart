import 'package:flutter/material.dart';

class Owndivider extends StatelessWidget {
  const Owndivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(children: <Widget>[
      Expanded(
        child: Container(
            margin: const EdgeInsets.only(left: 10.0, right: 6.0),
            child: const Divider(
              color: Colors.black,
              height: 30,
            )),
      ),
      const Text(
        "or",
        style: TextStyle(
          color: Colors.black,
          fontFamily: 'Lexend',
          fontSize: 12,
          fontWeight: FontWeight.w400,
        ),
      ),
      Expanded(
        child: Container(
            margin: const EdgeInsets.only(left: 6.0, right: 10.0),
            child: const Divider(
              color: Colors.black,
              height: 30,
            )),
      ),
    ]);
  }
}
