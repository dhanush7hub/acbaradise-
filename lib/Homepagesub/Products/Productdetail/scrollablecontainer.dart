import 'package:acbaradise/textshadow.dart';
import 'package:flutter/material.dart';

class ScrollableContainer extends StatefulWidget {
  final int index;
  final dynamic content;
  final ScrollController scrollController;
  final VoidCallback scrollDown;

  const ScrollableContainer({
    super.key,
    required this.index,
    required this.content,
    required this.scrollController,
    required this.scrollDown,
  });

  @override
  State<ScrollableContainer> createState() => _ScrollableContainerState();
}

class _ScrollableContainerState extends State<ScrollableContainer> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    WidgetsBinding.instance.addPostFrameCallback((_) {
      // Reset the scroll position to the top when a new heading is selected
      widget.scrollController.jumpTo(0);
    });

    return Container(
      width: double.infinity,
      height: 250,
      child: Column(
        children: [
          widget.index != 2
              ? Expanded(
                  child: SingleChildScrollView(
                    controller: widget.scrollController,
                    child: Container(
                      margin: const EdgeInsets.only(
                          top: 8, bottom: 8, left: 14, right: 14),
                      child: Text(
                        widget.content,
                        style: const TextStyle(
                          fontFamily: 'Lexend',
                          fontSize: 12,
                        ),
                      ),
                    ),
                  ),
                )
              :
              //another type.
              Expanded(
                  child: ListView.builder(
                    controller: widget.scrollController,
                    itemCount: 9,
                    itemBuilder: (context, index) {
                      return Container(
                        // height: 86,
                        margin: const EdgeInsets.symmetric(horizontal: 14),
                        width: double.infinity,
                        child: Card(
                          color: const Color(0xFFF3F4F9),
                          shape: const RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15)),
                              side: BorderSide(
                                  width: 0.4, color: Color(0xFFB8B9BC))),
                          child: Container(
                            margin: screenWidth < 147
                                ? const EdgeInsets.symmetric(
                                    horizontal: 1, vertical: 10)
                                : const EdgeInsets.symmetric(
                                    horizontal: 15, vertical: 10),
                            // EdgeInsets.symmetric(
                            //     horizontal: 15, vertical: 10),
                            child: Row(
                              children: [
                                Column(
                                  children: [
                                    CircleAvatar(
                                        backgroundColor:
                                            const Color(0xFFB4B4B6),
                                        child: Image.asset(
                                            "assets/images/defaultprofile.png")),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    const FittedBox(
                                      child: Text(
                                        "Shyam",
                                        style: TextStyle(
                                          fontFamily: 'Lexend',
                                          fontSize: 10,
                                          color: Colors.black,
                                          letterSpacing: -0.5,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Flexible(
                                  child: Container(
                                    margin: const EdgeInsets.symmetric(
                                        horizontal: 10),
                                    child: const ExpandableText(
                                        // "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."
                                        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop  Lorem Ipsum."),
                                  ),
                                ),
                                Container(
                                  // width: 40,
                                  // color: Colors.amber,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Row(children: [
                                        const Icon(
                                          Icons.star,
                                          size: 15,
                                        ),
                                        Container(
                                            margin:
                                                const EdgeInsets.only(left: 5),
                                            child: Text("3.5",
                                                style: TextStyle(
                                                  fontFamily: 'Lexend',
                                                  fontSize: 15,
                                                  letterSpacing: -0.5,
                                                  shadows: [textShadow()],
                                                )))
                                      ]),
                                      const SizedBox(
                                        height: 15,
                                      ),
                                      const Icon(
                                        Icons.delete,
                                        size: 15,
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
          const SizedBox(
            height: 10,
          ),
          Container(
            child: GestureDetector(
              onTap: widget.scrollDown,
              behavior: HitTestBehavior.translucent,
              child: Center(
                child: Icon(
                  Icons.keyboard_arrow_down,
                  size: 23,
                  shadows: [textShadow()],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ExpandableText extends StatefulWidget {
  final String text;

  const ExpandableText(this.text, {super.key});

  @override
  _ExpandableTextState createState() => _ExpandableTextState();
}

class _ExpandableTextState extends State<ExpandableText> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      hoverColor: Colors.transparent,
      splashColor: Colors.transparent,
      // focusColor: Colors.transparent,
      onTap: () {
        setState(() {
          isExpanded = !isExpanded;
        });
      },
      child: Text(
        widget.text,
        style: const TextStyle(
          fontFamily: 'lexend',
          fontSize: 10,
          letterSpacing: -0.5,
        ),
        maxLines: isExpanded ? null : 4,
        overflow: isExpanded ? null : TextOverflow.ellipsis,
      ),
    );
  }
}
