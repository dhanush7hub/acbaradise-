// done
import 'package:acbaradise/Home/hometext.dart';
import 'package:acbaradise/Homepagesub/Amc/amc.dart';
import 'package:acbaradise/Homepagesub/Products/products.dart';
import 'package:acbaradise/Homepagesub/Profile/profile.dart';
import 'package:acbaradise/Homepagesub/Services/services.dart';
import 'package:acbaradise/Homepagesub/spares.dart';
import 'package:acbaradise/ownappbar.dart';
import 'package:acbaradise/textshadow.dart';
import 'package:flutter/material.dart';
import 'package:acbaradise/Home/homepageindicator.dart';
import 'package:acbaradise/Home/homepagesearch.dart';
import 'package:acbaradise/Home/homepageslides.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  List tabList = [
    TabData(icon: Icons.ac_unit, title: "Products"),
    TabData(icon: Icons.spa, title: "Spares"),
    TabData(icon: Icons.home_repair_service, title: "Services"),
    TabData(icon: Icons.auto_awesome_mosaic, title: "AMC"),
    TabData(icon: Icons.account_circle, title: "Profile"),
    // Add more TabData here
  ];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 5, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) {
          return [
            SliverToBoxAdapter(
              child: Column(
                children: [
                  const Ownappbar(),
                  const Hometext(),
                  Container(
                    margin:
                        const EdgeInsets.only(left: 20, right: 20, bottom: 20),
                    child: Row(
                      children: [
                        const Expanded(child: Homepagesearch()),
                        Container(
                            margin: const EdgeInsets.only(left: 15),
                            child: Image.asset(
                              "assets/images/searchfilter.png",
                              fit: BoxFit.contain,
                            )),
                      ],
                    ),
                  ),
                  //-----------------------
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                      children: [
                        FittedBox(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Trending Deals",
                                  style: TextStyle(
                                    fontFamily: 'Lexend',
                                    fontSize: 24,
                                    letterSpacing: -0.5,
                                    shadows: [textShadow()],
                                  )),
                              Image.asset(
                                "assets/images/Discount.png",
                                fit: BoxFit.fill,
                              )
                              // ),
                            ],
                          ),
                        ),
                        Container(
                            margin: const EdgeInsets.only(top: 10, bottom: 13),
                            child: const Homepageslides()),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            //

            SliverAppBar(
              // backgroundColor: Color.fromARGB(255, 187, 121, 121),
              backgroundColor: Colors.white,
              expandedHeight: 0.0,
              pinned: true,
              floating: true,
              snap: true,
              bottom: TabBar(
                controller: _tabController,
                indicator: MyTabIndicator(),
                splashFactory: NoSplash.splashFactory,
                overlayColor: MaterialStateProperty.resolveWith<Color?>(
                    (Set<MaterialState> states) {
                  return Colors.transparent;
                }), // Custom indicator
                tabs: List.generate(
                  tabList.length,
                  (index) => Tab(
                    child: Column(
                      children: [
                        Icon(
                          tabList[index].icon,
                          shadows: [textShadow()],
                          color: Colors.black87,
                          // size: screenWidth * 0.08,
                        ),
                        FittedBox(
                          child: Text(
                            tabList[index].title,
                            style: const TextStyle(
                              fontFamily: 'Lexend',
                              fontSize: 10,
                              letterSpacing: -0.5,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            //
          ];
        },
        body: TabBarView(
          controller: _tabController,
          children: const [
            Products(),
            Spares(),
            Services(),
            Amc(),
            Profile(),
          ],
        ),
      ),
    );
  }
}

class TabData {
  final IconData icon;
  final String title;

  TabData({required this.icon, required this.title});
}
