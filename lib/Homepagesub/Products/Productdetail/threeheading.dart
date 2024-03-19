import 'package:acbaradise/Homepagesub/Products/Productdetail/scrollablecontainer.dart';
import 'package:acbaradise/textshadow.dart';
import 'package:flutter/material.dart';

class Threeheading extends StatefulWidget {
  const Threeheading({super.key});

  @override
  _ThreeheadingState createState() => _ThreeheadingState();
}

class _ThreeheadingState extends State<Threeheading> {
  final ScrollController _scrollController = ScrollController();
  int selectedIndex = 0;

  final List<String> headings = [
    "Overview",
    "Specification",
    "Review",
  ];

  final List<dynamic> content = [
    "In the realm of imagination, where ideas flow freely like rivers through untouched landscapes, creativity knows no bounds. A symphony of colors and shapes dances across the canvas of our minds, weaving tales of wonder and discovery. With every stroke of thought, we build castles of concepts, bridges of understanding, and galaxies of possibilities. Our minds become galaxies of unfathomable depth, housing nebulous thoughts that twinkle like stars in the dark expanse of the unknown. Through the tapestry of our thoughts, we explore uncharted territories, unearthing treasures of insight and wisdom. With each connection formed, our intellectual landscape expands, like an ever-expanding universe, giving birth to new constellations of ideas that burn brightly in the firmament of thought. This infinite symposium of cognition fuels the engine of progress, propelling humanity towards horizons yet unseen.",
    "specification  of imagination, where ideas flow freely like rivers through untouched landscapes, creativity knows no bounds. A symphony of colors and shapes dances across the canvas of our minds, weaving tales of wonder and discovery. With every stroke of thought, we build castles of concepts, bridges of understanding, and galaxies of possibilities. Our minds become galaxies of unfathomable depth, housing nebulous thoughts that twinkle like stars in the dark expanse of the unknown. Through the tapestry of our thoughts, we explore uncharted territories, unearthing treasures of insight and wisdom. With each connection formed, our intellectual landscape expands, like an ever-expanding universe, giving birth to new constellations of ideas that burn brightly in the firmament of thought. This infinite symposium of cognition fuels the engine of progress, propelling humanity towards horizons yet unseen.",
    "god",
  ];

  void _scrollDown() {
    _scrollController.animateTo(
      _scrollController.position.maxScrollExtent,
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeOut,
    );
  }

  void selectHeading(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: List.generate(headings.length, (index) {
            return Expanded(
              child: GestureDetector(
                onTap: () {
                  selectHeading(index);
                },
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Flexible(
                            child: Text(
                              headings[index],
                              style: TextStyle(
                                fontFamily: 'Lexend',
                                fontSize: 15,
                                letterSpacing: -0.5,
                                shadows: [textShadow()],
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 6),
                      Icon(
                        Icons.circle,
                        size: 7,
                        shadows: [
                          selectedIndex == index
                              ? Shadow(
                                  blurRadius: 3,
                                  color: Colors.grey.withOpacity(0.4),
                                  offset: Offset(0, 4),
                                )
                              : const Shadow(
                                  blurRadius: 0,
                                  color: Colors.transparent,
                                  offset: Offset(0, 0),
                                )
                        ],
                        color: selectedIndex == index
                            ? Colors.black
                            : Colors.transparent,
                      ),
                      const SizedBox(height: 6),
                    ],
                  ),
                ),
              ),
            );
          }),
        ),
        const SizedBox(height: 6),
        ScrollableContainer(
            index: selectedIndex,
            content: content[selectedIndex],
            scrollController: _scrollController,
            scrollDown: _scrollDown),
      ],
    );
  }
}
