// ignore_for_file: prefer_const_constructors

import 'dart:convert';

import 'package:cryptogo/constants/styles.dart';
import 'package:cryptogo/screens/home.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  getData() async {
    var globalurl = Uri.parse('https://api.coingecko.com/api/v3/global');
    var globaldata = await http.get(globalurl);
    var listurl = Uri.parse('https://api.coingecko.com/api/v3/coins/list');
    var listdata = await http.get(listurl);
    if (globaldata.statusCode == 200 && listdata.statusCode == 200) {
      Navigator.of(context).pushAndRemoveUntil(
          MaterialPageRoute(builder: (cts) {
        return HomeScreen(
          globaldata: jsonDecode(globaldata.body),
          listdata: jsonDecode(listdata.body).toSet().toList(),
        );
      }), (route) => false);
    } else {
      print("Something went wrong");
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgcolor,
      body: SafeArea(
        child: Center(
          child: Text('Splash'),
        ),
      ),
    );
  }
}
