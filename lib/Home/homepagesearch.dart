// done
import 'package:flutter/material.dart';
import 'package:searchfield/searchfield.dart';

class Homepagesearch extends StatefulWidget {
  const Homepagesearch({super.key});

  @override
  State<Homepagesearch> createState() => _HomepagesearchState();
}

class _HomepagesearchState extends State<Homepagesearch> {
  String? _selectedItem;
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Container(
      // height: screenHeight * 0.08,
      height: 56,
      width: screenWidth,
      child: Card(
        color: const Color(0xFFFFFFFF),
        elevation: 5,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        child: Container(
          // color: Colors.amber,
          // margin: EdgeInsets.only(
          //     top: screenHeight * 0.007, left: screenWidth * 0.015),
          margin: const EdgeInsets.only(top: 3),
          child: SearchField(
            hint: 'Search',
            searchInputDecoration: const InputDecoration(
              hintStyle: TextStyle(
                fontFamily: 'Lexend',
                fontSize: 14,
                // fontWeight: FontWeight.w400,
              ),
              border: InputBorder.none,
              prefixIcon: Icon(Icons.search),
              suffixIcon: Icon(Icons.mic_none_outlined),
              contentPadding: EdgeInsets.only(top: 10),
              // prefixIconConstraints: BoxConstraints(
              //     minWidth: 40), // Set minimum width for prefix icon
              // suffixIconConstraints: BoxConstraints(minWidth: 40),
            ),
            maxSuggestionsInViewPort: 6,
            itemHeight: screenHeight * 0.07,
            suggestionsDecoration: SuggestionDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
            ),
            onSubmit: (value) {
              setState(() {
                _selectedItem = value;
              });
              print(_selectedItem);
              print(value);
            },
            suggestions: [
              SearchFieldListItem("  Split AC"),
              SearchFieldListItem("  Window AC"),
              SearchFieldListItem("  Cassette AC"),
              SearchFieldListItem("  Tower AC"),
              SearchFieldListItem("  Mega AC"),
              SearchFieldListItem("  Ice AC"),
            ],
          ),
        ),
      ),
    );
  }
}
