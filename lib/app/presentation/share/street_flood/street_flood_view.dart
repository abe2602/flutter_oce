import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:state_navigation/app/presentation/common/view_utils.dart';
import 'package:state_navigation/app/presentation/share/street_flood/color_strip.dart';
import 'package:state_navigation/app/presentation/share/street_flood/flood_height.dart';
import 'package:state_navigation/app/presentation/share/street_flood/human_body.dart';

class StreetFloodView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final iconSize = MediaQuery.of(context).size.height / 20;

    return Scaffold(
      appBar: getAppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            getChoseInformationButtonWithImage(
                context, 'COLOR STRIP', Image.asset(
              'images/default_strip.png',
              fit: BoxFit.cover,
            ), iconSize, () {
              Navigator.of(context).push(
                CupertinoPageRoute(builder: (context) => ColorStripView()),
              );
            }),
            getChoseInformationButtonWithImage(
                context, 'WATER IN HUMAN PUPPET', Image.asset(
              'images/empty_body.png',
              fit: BoxFit.cover,
            ), iconSize, () {
              Navigator.of(context).push(
                CupertinoPageRoute(builder: (context) => HumanBodyView()),
              );
            }),
            getChoseInformationButtonWithImage(
                context, 'STREETS HEIGHT', Image.asset(
              'images/low.png',
              fit: BoxFit.cover,
            ), iconSize, () {
              Navigator.of(context).push(
                CupertinoPageRoute(builder: (context) => FloodHeightView()),
              );
            }),
          ],
        ),
      ),
    );
  }
}