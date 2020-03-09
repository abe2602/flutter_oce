import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:state_navigation/app/presentation/common/view_utils.dart';

class RainIntensityView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final buttonSize = MediaQuery.of(context).size.height / 15;

    return Scaffold(
      appBar: getAppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            getChoseInformationButtonWithImage(
                context, 'HEAVY RAIN WITH WIND', Image.asset(
              'images/heavy_with_wind.png',
              fit: BoxFit.cover,
            ), buttonSize, () {}),
            getChoseInformationButtonWithImage(
                context, 'HEAVY RAIN WITHOUT WIND', Image.asset(
              'images/heavy.png',
              fit: BoxFit.cover,
            ), buttonSize, () {}),
            getChoseInformationButtonWithImage(
                context, 'MEDIUM RAIN WITH WIND', Image.asset(
              'images/medium_with_wind.png',
              fit: BoxFit.cover,
            ), buttonSize, () {}),
            getChoseInformationButtonWithImage(
                context, 'MEDIUM RAIN WITHOUT WIND', Image.asset(
              'images/medium_rain.png',
              fit: BoxFit.cover,
            ), buttonSize, () {}),
            getChoseInformationButtonWithImage(
                context, 'LIGHT RAIN WITH WIND', Image.asset(
              'images/light_with_wind.png',
              fit: BoxFit.cover,
            ), buttonSize, () {}),
            getChoseInformationButtonWithImage(
                context, 'LIGHT RAIN WITHOUT WIND', Image.asset(
              'images/light.png',
              fit: BoxFit.cover,
            ), buttonSize, () {}),
          ],
        ),
      ),
    );
  }
}
