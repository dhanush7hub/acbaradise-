import 'package:acbaradise/Cart/chappbar.dart';
import 'package:acbaradise/Cart/checkout.dart';
import 'package:acbaradise/Cart/orderhistory.dart';
import 'package:acbaradise/Home/homepageindicator.dart';
import 'package:acbaradise/Cart/mycartwidget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Cart extends StatelessWidget {
  const Cart({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          automaticallyImplyLeading: false,
          title: const Chappbar(),
          bottom: TabBar(
            indicator: MyTabIndicator(),
            tabs: [
              Tab(
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Get.back();
                      },
                      child: Container(
                        child: const Center(
                          child: Icon(
                            Icons.arrow_back_ios,
                            color: Colors.black,
                            size: 15,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.only(right: 15),
                        child: const Text(
                          "My Cart",
                          style: TextStyle(
                            color: Colors.black,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const Tab(
                child: Text(
                  "Order History",
                  style: TextStyle(color: Colors.black),
                ),
              )
            ],
          ),
        ),
        body: const TabBarView(children: [
          Column(children: <Widget>[
            Expanded(child: Mycartwidget()),
            Checkout(),
          ]),
          Orderhistorywidget(),
        ]),
      ),
    );
  }
}
