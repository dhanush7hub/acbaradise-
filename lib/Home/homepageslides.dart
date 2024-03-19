// done
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class Homepageslides extends StatefulWidget {
  const Homepageslides({super.key});

  @override
  State<Homepageslides> createState() => _HomepageslidesState();
}

class _HomepageslidesState extends State<Homepageslides> {
  List imageList = [
    {"id": 1, "image_path": 'assets/images/takingphoto.png'},
    {"id": 2, "image_path": 'assets/images/image10.png'},
    {"id": 3, "image_path": 'assets/images/image11.png'}
  ];
  final CarouselController carouselController = CarouselController();
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    // final screenwidth = MediaQuery.of(context).size.width;
    // final screenheight = MediaQuery.of(context).size.width;

    return Stack(
      children: [
        InkWell(
          onTap: () {
            print(currentIndex);
          },
          child: CarouselSlider(
            items: imageList
                .map(
                  (item) => ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      item['image_path'],
                      fit: BoxFit.fill,
                      width: double.infinity,
                    ),
                  ),
                )
                .toList(),
            carouselController: carouselController,
            options: CarouselOptions(
              scrollPhysics: const BouncingScrollPhysics(),
              autoPlay: true,
              height: 197,
              viewportFraction: 1,
              onPageChanged: (index, reason) {
                setState(() {
                  currentIndex = index;
                });
              },
            ),
          ),
        ),
        Positioned(
          bottom: 5,
          left: 0,
          right: 0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: imageList.asMap().entries.map((entry) {
              return GestureDetector(
                onTap: () => carouselController.animateToPage(entry.key),
                child: Container(
                  width: currentIndex == entry.key ? 15 : 7,
                  height: 7.0,
                  margin: const EdgeInsets.symmetric(
                    horizontal: 3,
                  ),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: currentIndex == entry.key
                          ? Colors.white
                          : Colors.grey),
                ),
              );
            }).toList(),
          ),
        ),
      ],
    );
  }
}
