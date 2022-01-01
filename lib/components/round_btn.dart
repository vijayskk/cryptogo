import 'package:cryptogo/constants/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:heroicons/heroicons.dart';

class RoundButton extends StatelessWidget {
  final HeroIcons icon;
  const RoundButton({ Key? key,required this.icon }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: buttonbgcolor,
      radius: 30,
      child: HeroIcon(
        icon
      ),
    );
  }
}

