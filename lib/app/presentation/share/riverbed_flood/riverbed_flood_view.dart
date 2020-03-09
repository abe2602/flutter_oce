import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:state_navigation/app/presentation/common/view_utils.dart';

class RiverBedFloodView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final iconSize = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: getAppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            getChoseInformationButtonWithImage(
                context,
                'TRANSITABLE',
                Image.asset(
                  'images/transitavel.png',
                  fit: BoxFit.cover,
                ),
                iconSize,
                () {}),
            getChoseInformationButtonWithImage(
                context,
                'INTRANSITABLE',
                Image.asset(
                  'images/intransitavel.png',
                  fit: BoxFit.cover,
                ),
                iconSize,
                () {}),
          ],
        ),
      ),
    );
  }
}
