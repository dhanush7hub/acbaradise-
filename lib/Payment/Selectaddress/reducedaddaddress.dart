import 'package:flutter/material.dart';

class ReducedAddAddress extends StatelessWidget {
  const ReducedAddAddress({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){},
      child: Card(
        color: const Color.fromARGB(255, 237, 237, 240),
        margin: const EdgeInsets.only(left: 10, right: 10, top: 10),
        elevation: 4,
        shape: const RoundedRectangleBorder(
          side: BorderSide(
            width: 0.4,
            color: Color(0xffB8B9BC),
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: const Expanded(
                child: Text(
                  "Add New Address",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'Lexend',
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: const RotatedBox(
                quarterTurns: 2,
                child: Icon(
                  Icons.arrow_back_ios,
                  color: Colors.black,
                  size: 10,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
