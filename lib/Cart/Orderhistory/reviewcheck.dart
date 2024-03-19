import 'package:acbaradise/Cart/Orderhistory/reviewbottompage.dart';
import 'package:flutter/material.dart';

class Reviewcheck extends StatefulWidget {
  @override
  State<Reviewcheck> createState() => _ReviewcheckState();
}

class _ReviewcheckState extends State<Reviewcheck> {
  bool _isrevieved = false;

  @override
  Widget build(BuildContext context) {
    return _isrevieved
        ? Flexible(
            child: Container(
              height: 33,
              width: 68,
              child: Card(
                elevation: 5,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                color: const Color(0xFFF3F4F9),
                child: Container(
                  margin: const EdgeInsets.only(left: 5, top: 3),
                  child: const SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.star,
                          color: Colors.amber,
                          size: 20,
                        ),
                        SizedBox(
                          width: 4,
                        ),
                        Text(
                          "3.5",
                          style: TextStyle(
                            fontFamily: 'Lexend',
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          )
        : Flexible(
            child: Container(
              height: 33,
              width: 75,
              // margin: EdgeInsets.only(left: 68),
              child: InkWell(
                onTap: () {
                  setState(() {
                    _isrevieved = !_isrevieved;
                  });
                  showModalBottomSheet(
                    context: context,
                    shape: const RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.vertical(top: Radius.circular(32)),
                    ),
                    builder: (context) {
                      return Container(
                        height: 284,
                        child: const Center(
                          child: Reviewbottompage(),
                        ),
                      );
                    },
                  );
                },
                child: Card(
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  color: const Color(0xFFF3F4F9),
                  child: Container(
                    child: const Center(
                      child: Text(
                        "Review",
                        style: TextStyle(
                          fontFamily: 'Lexend',
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          );
  }
}
