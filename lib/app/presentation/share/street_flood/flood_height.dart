import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:state_navigation/app/presentation/common/view_utils.dart';

class FloodHeightView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final iconSize = MediaQuery.of(context).size.height / 15;

    return Scaffold(
      appBar: getAppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            getChoseInformationButtonWithImage(
                context,
                'OVERFLOWING',
                Image.asset(
                  'images/overflowing.png',
                  fit: BoxFit.cover,
                ),
                iconSize,
                    () {}),
            getChoseInformationButtonWithImage(
                context,
                'HIGH',
                Image.asset(
                  'images/high.png',
                  fit: BoxFit.cover,
                ),
                iconSize,
                    () {}),
            getChoseInformationButtonWithImage(
                context,
                'MEDIUM',
                Image.asset(
                  'images/medium.png',
                  fit: BoxFit.cover,
                ),
                iconSize,
                    () {}),
            getChoseInformationButtonWithImage(
                context,
                'LOW',
                Image.asset(
                  'images/low.png',
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
