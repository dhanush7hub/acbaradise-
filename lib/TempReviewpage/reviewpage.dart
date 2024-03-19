// import 'package:flutter/material.dart';

// class Reviepage extends StatelessWidget {
//   const Reviepage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return SingleChildScrollView(
//       child: Column(
//         children: [
//           SizedBox(
//             height: 185,
//           ),
//           Container(
//             height: 162,
//             width: double.infinity,
//             margin: EdgeInsets.all(8),
//             child: Card(
//               color: Color(0xFFF3F4F9),
//               elevation: 5,
//               shape: RoundedRectangleBorder(
//                 borderRadius: BorderRadius.circular(15),
//               ),
//               child: Container(
//                 height: 162,
//                 margin: EdgeInsets.only(
//                   left: 12,
//                   top: 5,
//                 ),
//                 child: Row(
//                   children: [
//                     Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Container(
//                           margin: EdgeInsets.only(left: 10, top: 15),
//                           child: Text.rich(
//                             TextSpan(
//                               children: [
//                                 for (var word in "Order info".split(' '))
//                                   TextSpan(
//                                     text: word + ' ',
//                                     style: TextStyle(
//                                       fontFamily: 'Lexend',
//                                       fontSize: 18,
//                                       fontWeight: FontWeight.w400,
//                                       shadows: [
//                                         Shadow(
//                                           color: Colors.grey.withOpacity(0.5),
//                                           offset: Offset(0, 2),
//                                           blurRadius: 4, // Blur radius
//                                         ),
//                                       ],
//                                     ),
//                                   ),
//                               ],
//                             ),
//                           ),
//                         ),
//                         SizedBox(
//                           height: 15,
//                         ),
//                         Container(
//                             height: 65,
//                             width: 181,
//                             child: Image.asset(
//                               "assets/images/Galanz_Air_Conditioner_2.jpg",
//                               fit: BoxFit.cover,
//                               width: double.infinity,
//                             )),
//                       ],
//                     ),
//                     SizedBox(
//                       width: 23,
//                     ),
//                     //1st try
//                     //i need to : implement stack.
//                     Stack(children: [
//                       Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           SizedBox(
//                             height: 15,
//                           ),
//                           Container(
//                             height: 33,
//                             width: 68,
//                             margin: EdgeInsets.only(left: 75),
//                             child: Card(
//                               elevation: 5,
//                               shape: RoundedRectangleBorder(
//                                 borderRadius: BorderRadius.circular(15),
//                               ),
//                               color: Color(0xFFF3F4F9),
//                               child: Container(
//                                 margin: EdgeInsets.only(left: 5),
//                                 child: Row(
//                                   mainAxisAlignment: MainAxisAlignment.start,
//                                   children: [
//                                     Icon(
//                                       Icons.star,
//                                       color: Colors.amber,
//                                       size: 20,
//                                     ),
//                                     SizedBox(
//                                       width: 4,
//                                     ),
//                                     Text(
//                                       "3.5",
//                                       style: TextStyle(
//                                         fontFamily: 'Lexend',
//                                         fontSize: 15,
//                                         fontWeight: FontWeight.w400,
//                                       ),
//                                     )
//                                   ],
//                                 ),
//                               ),
//                             ),
//                           ),
//                           SizedBox(
//                             height: 10,
//                           ),
//                           Expanded(
//                             child: Container(
//                               width: 150,
//                               child: Text(
//                                 "Voltas platina refreshed mint flavour",
//                                 style: TextStyle(
//                                   fontFamily: 'Lexend',
//                                   fontSize: 18,
//                                   fontWeight: FontWeight.w400,
//                                 ),
//                                 overflow: TextOverflow.ellipsis,
//                                 maxLines: 1,
//                               ),
//                             ),
//                           ),
//                           Container(
//                             margin: EdgeInsets.only(
//                               bottom: 42,
//                               left: 2,
//                             ),
//                             child: Row(
//                               children: [
//                                 Text.rich(
//                                   TextSpan(
//                                     children: [
//                                       for (var word in "\$ 1000".split(' '))
//                                         TextSpan(
//                                           text: word + ' ',
//                                           style: TextStyle(
//                                             color: Colors.black,
//                                             fontFamily: 'Lexend',
//                                             fontSize: 18,
//                                             fontWeight: FontWeight.w400,
//                                             shadows: [
//                                               Shadow(
//                                                 color: Colors.grey
//                                                     .withOpacity(0.5),
//                                                 offset: Offset(0, 3),
//                                                 blurRadius: 3, // Blur radius
//                                               ),
//                                             ],
//                                           ),
//                                         ),
//                                     ],
//                                   ),
//                                 ),
//                                 Container(
//                                   // color: Colors.teal,
//                                   margin: EdgeInsets.only(left: 2),
//                                   height: 25,
//                                   child: Card(
//                                     elevation: 5,
//                                     child: Container(
//                                       margin:
//                                           EdgeInsets.only(left: 6, right: 6),
//                                       child: Text(
//                                         "Qty : " +
//                                             "2", // Change this to your dynamic value
//                                         style: TextStyle(
//                                           fontFamily: 'Lexend',
//                                           fontSize: 13,
//                                           fontWeight: FontWeight.w400,
//                                         ),
//                                       ),
//                                     ),
//                                   ),
//                                 )
//                               ],
//                             ),
//                           ),
//                         ],
//                       ),
//                       //second child of stack:
//                       //"Arriving on Monday"
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.end,
//                         children: [
//                           Container(
//                             // color: Colors.blue,
//                             width: 145,
//                             margin: EdgeInsets.only(
//                               top: 125,
//                             ),
//                             child: Row(
//                               mainAxisAlignment: MainAxisAlignment.end,
//                               children: [
//                                 Text(
//                                   "Arriving on Monday",
//                                   // "Delivered on 25 September 2023",
//                                   style: TextStyle(
//                                     color: Color(0xFF00660A),
//                                     fontFamily: 'Lexend',
//                                     fontSize: 9,
//                                     fontWeight: FontWeight.w400,
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ),
//                         ],
//                       ),
//                     ]),
//                   ],
//                 ),
//               ),
//             ),
//           ),
//           //add new :
//           Container(
//             height: 162,
//             width: double.infinity,
//             margin: EdgeInsets.all(8),
//             child: Card(
//               color: Color(0xFFF3F4F9),
//               elevation: 5,
//               shape: RoundedRectangleBorder(
//                 borderRadius: BorderRadius.circular(15),
//               ),
//               child: Container(
//                 height: 162,
//                 margin: EdgeInsets.only(
//                   left: 12,
//                   top: 5,
//                 ),
//                 child: Row(
//                   children: [
//                     Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Container(
//                           margin: EdgeInsets.only(left: 10, top: 15),
//                           child: Text.rich(
//                             TextSpan(
//                               children: [
//                                 for (var word in "Order info".split(' '))
//                                   TextSpan(
//                                     text: word + ' ',
//                                     style: TextStyle(
//                                       fontFamily: 'Lexend',
//                                       fontSize: 18,
//                                       fontWeight: FontWeight.w400,
//                                       shadows: [
//                                         Shadow(
//                                           color: Colors.grey.withOpacity(0.5),
//                                           offset: Offset(0, 2),
//                                           blurRadius: 4, // Blur radius
//                                         ),
//                                       ],
//                                     ),
//                                   ),
//                               ],
//                             ),
//                           ),
//                         ),
//                         SizedBox(
//                           height: 15,
//                         ),
//                         Container(
//                             height: 65,
//                             width: 181,
//                             child: Image.asset(
//                               "assets/images/Galanz_Air_Conditioner_2.jpg",
//                               fit: BoxFit.cover,
//                               width: double.infinity,
//                             )),
//                       ],
//                     ),
//                     SizedBox(
//                       width: 23,
//                     ),
//                     //1st try
//                     //i need to : implement stack.
//                     Stack(children: [
//                       Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           SizedBox(
//                             height: 15,
//                           ),
//                           Container(
//                             height: 33,
//                             width: 68,
//                             margin: EdgeInsets.only(left: 75),
//                             child: Card(
//                               elevation: 5,
//                               shape: RoundedRectangleBorder(
//                                 borderRadius: BorderRadius.circular(15),
//                               ),
//                               color: Color(0xFFF3F4F9),
//                               child: Container(
//                                 margin: EdgeInsets.only(left: 5),
//                                 child: Row(
//                                   mainAxisAlignment: MainAxisAlignment.start,
//                                   children: [
//                                     Icon(
//                                       Icons.star,
//                                       color: Colors.amber,
//                                       size: 20,
//                                     ),
//                                     SizedBox(
//                                       width: 4,
//                                     ),
//                                     Text(
//                                       "3.5",
//                                       style: TextStyle(
//                                         fontFamily: 'Lexend',
//                                         fontSize: 15,
//                                         fontWeight: FontWeight.w400,
//                                       ),
//                                     )
//                                   ],
//                                 ),
//                               ),
//                             ),
//                           ),
//                           SizedBox(
//                             height: 10,
//                           ),
//                           Expanded(
//                             child: Container(
//                               width: 150,
//                               child: Text(
//                                 "Voltas platina refreshed mint flavour",
//                                 style: TextStyle(
//                                   fontFamily: 'Lexend',
//                                   fontSize: 18,
//                                   fontWeight: FontWeight.w400,
//                                 ),
//                                 overflow: TextOverflow.ellipsis,
//                                 maxLines: 1,
//                               ),
//                             ),
//                           ),
//                           Container(
//                             margin: EdgeInsets.only(
//                               bottom: 42,
//                               left: 2,
//                             ),
//                             child: Row(
//                               children: [
//                                 Text.rich(
//                                   TextSpan(
//                                     children: [
//                                       for (var word in "\$ 1000".split(' '))
//                                         TextSpan(
//                                           text: word + ' ',
//                                           style: TextStyle(
//                                             color: Colors.black,
//                                             fontFamily: 'Lexend',
//                                             fontSize: 18,
//                                             fontWeight: FontWeight.w400,
//                                             shadows: [
//                                               Shadow(
//                                                 color: Colors.grey
//                                                     .withOpacity(0.5),
//                                                 offset: Offset(0, 3),
//                                                 blurRadius: 3, // Blur radius
//                                               ),
//                                             ],
//                                           ),
//                                         ),
//                                     ],
//                                   ),
//                                 ),
//                                 Container(
//                                   // color: Colors.teal,
//                                   margin: EdgeInsets.only(left: 2),
//                                   height: 25,
//                                   child: Card(
//                                     elevation: 5,
//                                     child: Container(
//                                       margin:
//                                           EdgeInsets.only(left: 6, right: 6),
//                                       child: Text(
//                                         "Qty : " +
//                                             "2", // Change this to your dynamic value
//                                         style: TextStyle(
//                                           fontFamily: 'Lexend',
//                                           fontSize: 13,
//                                           fontWeight: FontWeight.w400,
//                                         ),
//                                       ),
//                                     ),
//                                   ),
//                                 )
//                               ],
//                             ),
//                           ),
//                         ],
//                       ),
//                       //second child of stack:
//                       //"Arriving on Monday"
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.end,
//                         children: [
//                           Container(
//                             // color: Colors.blue,
//                             width: 145,
//                             margin: EdgeInsets.only(
//                               top: 125,
//                             ),
//                             child: Row(
//                               mainAxisAlignment: MainAxisAlignment.end,
//                               children: [
//                                 Text(
//                                   "Arriving on Monday",
//                                   // "Delivered on 25 September 2023",
//                                   style: TextStyle(
//                                     color: Color(0xFF00660A),
//                                     fontFamily: 'Lexend',
//                                     fontSize: 9,
//                                     fontWeight: FontWeight.w400,
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ),
//                         ],
//                       ),
//                     ]),
//                   ],
//                 ),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
