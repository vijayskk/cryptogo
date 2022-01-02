// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:cryptogo/components/round_btn.dart';
import 'package:cryptogo/constants/styles.dart';
import 'package:flutter/material.dart';
import 'package:heroicons/heroicons.dart';
import 'package:intl/intl.dart';

class HomeScreen extends StatelessWidget {
  final List listdata;
  final Map globaldata;

  const HomeScreen({Key? key, required this.listdata, required this.globaldata})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgcolor,
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  RoundButton(icon: HeroIcons.moon),
                  Text(
                    "CryptoGo",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  RoundButton(icon: HeroIcons.bell),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 2),
                      child: Text(
                        "Markets",
                        style: TextStyle(color: Colors.grey, fontSize: 15),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 2),
                      child: Text(
                        globaldata["data"]["markets"].toString(),
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    // Padding(
                    //   padding: const EdgeInsets.symmetric(vertical: 2),
                    //   child: Text(
                    //     "7.98%",
                    //     style: TextStyle(
                    //         color: greentxtcolor,
                    //         fontSize: 18,
                    //         fontWeight: FontWeight.bold),
                    //   ),
                    // ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 2),
                      child: Text(
                        "Market cap",
                        style: TextStyle(color: Colors.grey, fontSize: 15),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 2),
                      child: Text(
                        formatNumber(
                            globaldata["data"]["total_market_cap"]["btc"]),
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 2),
                      child: Text(
                        globaldata["data"]["market_cap_percentage"]["btc"]
                                .toString()
                                .substring(0, 4) +
                            '%',
                        style: TextStyle(
                            color: (globaldata["data"]["market_cap_percentage"]
                                        ["btc"] >
                                    0)
                                ? greentxtcolor
                                : redtxtcolor,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 2),
                      child: Text(
                        "Active Coins",
                        style: TextStyle(color: Colors.grey, fontSize: 15),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 2),
                      child: Text(
                        formatNumber(globaldata["data"]
                                ["active_cryptocurrencies"] +
                            0.0),
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    // Padding(
                    //   padding: const EdgeInsets.symmetric(vertical: 2),
                    //   child: Text(
                    //     "7.98%",
                    //     style: TextStyle(
                    //         color: greentxtcolor,
                    //         fontSize: 18,
                    //         fontWeight: FontWeight.bold),
                    //   ),
                    // ),
                  ],
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                decoration: BoxDecoration(
                    color: buttonbgcolor,
                    borderRadius: BorderRadius.circular(30)),
                height: 60,
                width: MediaQuery.of(context).size.width,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    children: [
                      HeroIcon(
                        HeroIcons.search,
                        color: Colors.white,
                      ),
                      Expanded(
                          child: Padding(
                        padding: const EdgeInsets.only(left: 15.0),
                        child: TextField(
                          decoration: InputDecoration(
                              hintText: 'Search',
                              hintStyle: TextStyle(color: Colors.white),
                              border: InputBorder.none),
                        ),
                      ))
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
              child: Container(
                child: ListView.builder(
                  itemBuilder: (ctx, index) {
                    listdata.shuffle();
                    return ListTile(
                        leading: CircleAvatar(
                          radius: 20,
                          backgroundColor: buttonbgcolor,
                          child: Image.network(
                            "https://cryptologos.cc/logos/bitcoin-btc-logo.png",
                            height: 20,
                            width: 20,
                          ),
                        ),
                        title: Text(
                          listdata[index]["name"].length < 15
                              ? listdata[index]["name"]
                              : listdata[index]["name"].substring(0, 15),
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                        subtitle: Text(
                          listdata[index]["symbol"],
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        ),
                        trailing: HeroIcon(
                          HeroIcons.chevronRight,
                          color: Colors.white,
                        ));
                  },
                  itemCount: listdata.length,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

String formatNumber(double number) {
  return NumberFormat.compactCurrency(decimalDigits: 3, symbol: '')
      .format(number);
}
