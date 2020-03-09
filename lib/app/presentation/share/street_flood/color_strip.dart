import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:state_navigation/app/presentation/common/view_utils.dart';

class ColorStripView extends StatelessWidget {
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
                'RED',
                Image.asset(
                  'images/red.png',
                  fit: BoxFit.cover,
                ),
                iconSize,
                () {}),
            getChoseInformationButtonWithImage(
                context,
                'YELLOW',
                Image.asset(
                  'images/yellow.png',
                  fit: BoxFit.cover,
                ),
                iconSize,
                () {}),
            getChoseInformationButtonWithImage(
                context,
                'GREEN',
                Image.asset(
                  'images/green.png',
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
