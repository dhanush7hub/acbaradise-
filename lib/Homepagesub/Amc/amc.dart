import 'package:acbaradise/Homepagesub/Amc/amcpoints.dart';
import 'package:acbaradise/Homepagesub/Amc/carouselplans.dart';
import 'package:acbaradise/textshadow.dart';
import 'package:flutter/material.dart';
import 'package:snippet_coder_utils/FormHelper.dart';

class Amc extends StatefulWidget {
  const Amc({super.key});

  @override
  State<Amc> createState() => _AmcState();
}

class _AmcState extends State<Amc> {
  // String dropdownValue = 'Select your AC type';
  // bool isDropdownOpen = false;

  List<dynamic> acTypesList = [];
  String selectedACType = '0';

  @override
  void initState() {
    super.initState();

    acTypesList.add({"val": "1", "label": "Window AC"});
    acTypesList.add({"val": "2", "label": "Split AC"});
    acTypesList.add({"val": "3", "label": "Cassette AC"});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Column(children: [
        Container(
          margin: const EdgeInsets.only(left: 20, right: 20, top: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Icon(
                Icons.arrow_back_ios,
                size: 15,
                shadows: [textShadow()],
              ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Flexible(
                      child: Text(
                        "Annual Maintainance Contract",
                        style: TextStyle(
                          fontFamily: 'Lexend',
                          letterSpacing: -0.5,
                          fontSize: 20,
                          shadows: [textShadow()],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        //3rd try
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Form(
            child: Column(
              children: <Widget>[
                // Acselection(),
                FormHelper.dropDownWidgetWithLabel(
                  context,
                  "",
                  "   Select your AC type",
                  "",
                  this.acTypesList,
                  (onChangedVal) {
                    setState(() {
                      this.selectedACType = onChangedVal! ?? "";
                    });
                  },
                  (onValidateVal) {
                    if (onValidateVal == null) {
                      return 'Please Select AC Type';
                    }
                    return null;
                  },
                  borderFocusColor: Colors.grey,
                  borderColor: Colors.grey,
                  borderRadius: 10,
                  optionValue: "val",
                  optionLabel: "label",
                  hintColor: Colors.black,
                  hintFontSize: 15,
                ),
                // SizedBox(height: 30),
                selectedACType == '0'
                    ? Container(
                        height: 284,
                        margin: const EdgeInsets.only(
                            left: 20, right: 20, top: 30, bottom: 20),
                        child: Image.asset(
                          'assets/images/takingphoto.png',
                          fit: BoxFit.fill,
                          width: double.infinity,
                        ),
                      )
                    : selectedACType == '1'
                        ? Carouselplan()
                        : selectedACType == '2'
                            ? Carouselplan()
                            : Carouselplan(),
                // SizedBox(
                //   height: 20,
                // ),
                selectedACType == '0'
                    ? const SizedBox(
                        height: 10,
                      )
                    : selectedACType == '1'
                        ? Amcpoints()
                        : selectedACType == '2'
                            ? Amcpoints()
                            : Amcpoints(),
              ],
            ),
          ),
        ),
      ])),
    );
  }
}
