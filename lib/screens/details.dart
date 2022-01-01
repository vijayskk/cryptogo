// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:cryptogo/addons/column_builder.dart';
import 'package:cryptogo/components/round_btn.dart';
import 'package:cryptogo/constants/styles.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:heroicons/heroicons.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgcolor,
      body: SafeArea(
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  RoundButton(icon: HeroIcons.chevronLeft),
                  Text(
                    "Etherum coin",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  RoundButton(icon: HeroIcons.share),
                ],
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.width,
              // child: LineChart(
              //   LineChartData(
              //       // read about it in the LineChartData section
              //       ),
              //   swapAnimationDuration: Duration(milliseconds: 150), // Optional
              //   swapAnimationCurve: Curves.linear, // Optional
              // ),
            ),
            ColumnBuilder(
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
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                textDirection: TextDirection.ltr,
                verticalDirection: VerticalDirection.down,
                itemCount: 10)
          ],
        ),
      ),
    );
  }
}
