import 'package:flutter/material.dart';

class CartText extends StatelessWidget {
  const CartText({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Container(
      width: width,
      margin: EdgeInsets.symmetric(horizontal: width * 0.06),
      child: FittedBox(
        fit: BoxFit.contain,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: width / 25,
            ),
            FittedBox(
              fit: BoxFit.contain,
              child: Container(
                width: 50,
                height: 15,
                child: const FittedBox(
                  fit: BoxFit.contain,
                  child: Text(
                    "Address",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              width: width / 5,
            ),
            FittedBox(
              fit: BoxFit.contain,
              child: Container(
                width: 80,
                height: 15,
                child: const FittedBox(
                    fit: BoxFit.contain,
                    child: Text(
                      "Order Summary",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    )),
              ),
            ),
            SizedBox(
              width: width / 4.5,
            ),
            FittedBox(
              fit: BoxFit.contain,
              child: Container(
                width: 50,
                height: 15,
                child: const FittedBox(
                    fit: BoxFit.contain,
                    child: Text("Payment",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold))),
              ),
            ),
            SizedBox(
              width: width / 4.5,
            ),
            FittedBox(
              fit: BoxFit.contain,
              child: Container(
                width: 50,
                height: 15,
                child: const FittedBox(
                    fit: BoxFit.contain,
                    child: Text(
                      "Bill",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
