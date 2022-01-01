// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:cryptogo/components/round_btn.dart';
import 'package:cryptogo/constants/styles.dart';
import 'package:flutter/material.dart';
import 'package:heroicons/heroicons.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

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
                    "Live coins",
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
                        "Market cap",
                        style: TextStyle(color: Colors.grey, fontSize: 15),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 2),
                      child: Text(
                        "16.8B",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 2),
                      child: Text(
                        "7.98%",
                        style: TextStyle(
                            color: greentxtcolor,
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
                        "Market cap",
                        style: TextStyle(color: Colors.grey, fontSize: 15),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 2),
                      child: Text(
                        "16.8B",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 2),
                      child: Text(
                        "7.98%",
                        style: TextStyle(
                            color: greentxtcolor,
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
                        "Market cap",
                        style: TextStyle(color: Colors.grey, fontSize: 15),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 2),
                      child: Text(
                        "16.8B",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 2),
                      child: Text(
                        "7.98%",
                        style: TextStyle(
                            color: greentxtcolor,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
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
                    return ListTile(
                      leading: CircleAvatar(
                        radius: 20,
                        backgroundColor: buttonbgcolor,
                        child: Image.network("https://cryptologos.cc/logos/bitcoin-btc-logo.png",height: 20,width: 20,),
                      ),
                      title:                 Text(
                        "Bitcoin",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text(
                        "Live coins",
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                      trailing: Column(
                        children: [
                                              Padding(
                      padding: const EdgeInsets.only(bottom: 2),
                      child: Text(
                        "16.8B",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 2),
                      child: Text(
                        "7.98%",
                        style: TextStyle(
                            color: greentxtcolor,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                        ],
                      ),
                    );
                  },
                  itemCount: 20,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
