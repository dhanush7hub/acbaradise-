import 'package:acbaradise/textshadow.dart';
import 'package:flutter/material.dart';

class oc_orderinfo extends StatelessWidget {
  final tstyle = TextStyle(
    fontFamily: 'Lexend',
    fontSize: 15,
    fontWeight: FontWeight.w500,
    shadows: [textShadow()],
  );

  oc_orderinfo({super.key});
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 5),
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: -3,
              blurRadius: 1,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        child: Card(
          color: const Color.fromARGB(255, 237, 237, 241),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
              side: const BorderSide(width: 0.4, color: Color(0xffB8B9BC))),
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 21, vertical: 22),
            child: Column(
              children: [
                Row(
                  children: [
                    Flexible(
                      child: Text(
                        "Order info",
                        style: TextStyle(
                          fontFamily: 'Lexend',
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          shadows: [textShadow()],
                        ),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 8,
                ),
                Column(
                  children: List.generate(
                    2,
                    (index) => Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Flexible(
                              child: Text(
                                'Samsung Smart AC',
                                overflow: TextOverflow.ellipsis,
                                style: tstyle,
                              ),
                            ),
                            Flexible(
                              child: Text(
                                'x1',
                                style: TextStyle(
                                  fontFamily: 'Lexend',
                                  fontSize: 10,
                                  fontWeight: FontWeight.w500,
                                  shadows: [textShadow()],
                                ),
                              ),
                            ),
                            Flexible(
                              child: Text(
                                '₹1999',
                                style: TextStyle(
                                  fontFamily: 'Lexend',
                                  fontSize: 13,
                                  fontWeight: FontWeight.w500,
                                  shadows: [textShadow()],
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                      ],
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Flexible(
                      child: Text(
                        'Delivery Charges',
                        style: tstyle,
                      ),
                    ),
                    Flexible(
                      child: Text(
                        '₹50',
                        style: TextStyle(
                          fontFamily: 'Lexend',
                          fontSize: 13,
                          fontWeight: FontWeight.w500,
                          shadows: [textShadow()],
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Flexible(
                      child: Text(
                        'Order Address',
                        style: tstyle,
                      ),
                    ),
                    const Flexible(
                      child: SizedBox(
                        width: 120,
                      ),
                    ),
                    Flexible(
                        child: Text(
                      '41 Amal’s House dshbabfaksdyfba',
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontFamily: 'Lexend',
                        fontSize: 13,
                        fontWeight: FontWeight.w500,
                        shadows: [textShadow()],
                      ),
                    )),
                  ],
                ),
                const SizedBox(
                  height: 4,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Flexible(
                      child: Text(
                        'Mode of Payment',
                        style: tstyle,
                      ),
                    ),
                    Flexible(
                      child: Text(
                        'Cash on delivery',
                        style: TextStyle(
                          fontFamily: 'Lexend',
                          fontSize: 13,
                          fontWeight: FontWeight.w500,
                          shadows: [textShadow()],
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 21,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Flexible(
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          elevation: 6,
                          side: const BorderSide(
                              width: 0.4, color: Color(0xffB8B9BC)),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        onPressed: () {},
                        child: FittedBox(
                          child: Container(
                            margin: const EdgeInsets.symmetric(
                                horizontal: 20, vertical: 6),
                            child: Text(
                              'Total  ₹ 6047',
                              style: TextStyle(
                                fontFamily: 'Lexend',
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                                color: Colors.black,
                                shadows: [textShadow()],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
