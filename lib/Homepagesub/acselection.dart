import 'package:flutter/material.dart';
import 'package:snippet_coder_utils/FormHelper.dart';

class Acselection extends StatefulWidget {
  const Acselection({super.key});

  @override
  State<Acselection> createState() => _AcselectionState();
}

class _AcselectionState extends State<Acselection> {
  List<dynamic> acTypesList = [];
  String selectedACType = '';

  @override
  void initState() {
    super.initState();

    acTypesList.add({"val": "1", "label": "Window AC"});
    acTypesList.add({"val": "2", "label": "Split AC"});
    acTypesList.add({"val": "3", "label": "Cassette AC"});
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: FormHelper.dropDownWidgetWithLabel(
        // Text('Selected AC Type: $selectedACType'),
        context, "", "   Select your AC type", "",
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
        // suffixIcon: Icon(Icons.abc)
      ),
    );
  }
}
