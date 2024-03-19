import 'package:flutter/material.dart';

class AddressCard extends StatelessWidget {
  Color color;
  String name;
  String address;
  String number;
  AddressCard(this.color, this.name, this.address, this.number, {super.key});
  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color.fromARGB(255, 237, 237, 240),
      margin: const EdgeInsets.only(left: 10, right: 10, top: 10),
      shape: const RoundedRectangleBorder(
        side: BorderSide(
          width: 0.4,
          color: Color(0xffB8B9BC),
        ),
        borderRadius: BorderRadius.all(
          Radius.circular(15),
        ),
      ),
      child: Row(
        children: [
          FittedBox(
            fit: BoxFit.contain,
            child: Container(
              margin: const EdgeInsets.all(15),
              width: 15,
              height: 15,
              decoration: BoxDecoration(shape: BoxShape.circle, color: color),
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 20,
                ),
                FittedBox(
                  fit: BoxFit.contain,
                  child: Text(
                    name,
                    style: const TextStyle(
                      fontFamily: 'Lexend',
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 2,
                ),
                Text(
                  address,
                  style: const TextStyle(
                    fontFamily: 'Lexend',
                    fontSize: 13,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(
                  height: 2,
                ),
                Text(
                  "ph: +91$number",
                  style: const TextStyle(
                    fontFamily: 'Lexend',
                    fontSize: 13,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                FittedBox(
                  fit: BoxFit.contain,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      elevation: 3, // Apply elevation here
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                      backgroundColor: Colors.white,
                    ),
                    child: const Text(
                      "Edit Address",
                      style: TextStyle(
                        fontFamily: 'Lexend',
                        fontSize: 13,
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {},
            child: Container(
              margin: const EdgeInsets.all(15),
              child: Image.asset('assets/images/dustbin.png', scale: 1.2),
            ),
          ),
        ],
      ),
    );
  }
}
