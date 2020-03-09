import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:state_navigation/app/presentation/common/view_utils.dart';

class HumanBodyView extends StatelessWidget {
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
                'HEAD',
                Image.asset(
                  'images/cabeca.png',
                  fit: BoxFit.cover,
                ),
                iconSize,
                    () {}),
            getChoseInformationButtonWithImage(
                context,
                'NECK',
                Image.asset(
                  'images/pescoco.png',
                  fit: BoxFit.cover,
                ),
                iconSize,
                    () {}),
            getChoseInformationButtonWithImage(
                context,
                'BELT',
                Image.asset(
                  'images/cintura.png',
                  fit: BoxFit.cover,
                ),
                iconSize,
                    () {}),
            getChoseInformationButtonWithImage(
                context,
                'KNEE',
                Image.asset(
                  'images/joelho.png',
                  fit: BoxFit.cover,
                ),
                iconSize,
                    () {}),
            getChoseInformationButtonWithImage(
                context,
                'ANKLE',
                Image.asset(
                  'images/tornozelo.png',
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
