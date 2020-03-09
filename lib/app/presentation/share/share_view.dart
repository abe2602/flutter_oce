import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:state_navigation/app/presentation/common/view_utils.dart';
import 'package:state_navigation/app/presentation/share/rain_intensity/rain_intensity_rain_view.dart';
import 'package:state_navigation/app/presentation/share/riverbed_flood/riverbed_flood_view.dart';
import 'package:state_navigation/app/presentation/share/street_flood/street_flood_view.dart';

class ShareView extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _ShareViewState();

  static Widget create(BuildContext context) => ShareView();
}

class _ShareViewState extends State<ShareView> {
  @override
  Widget build(BuildContext context) {
    final buttonSize = MediaQuery
        .of(context)
        .size
        .width / 15;

    return Scaffold(
      appBar: getAppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            getChoseInformationButtonWithIcon(
                context, 'STREET FLOOD', Icons.report, buttonSize, () {
              Navigator.of(context).push(
                CupertinoPageRoute(builder: (context) => StreetFloodView()),
              );
            }),
            getChoseInformationButtonWithIcon(
                context, 'RIVERBED WATER', Icons.pool, buttonSize, () {
              Navigator.of(context).push(
                CupertinoPageRoute(builder: (context) => RiverBedFloodView()),
              );
            }),
            getChoseInformationButtonWithIcon(
                context, 'RAIN INTENSITY', Icons.cloud, buttonSize, () {
              Navigator.of(context).push(
                CupertinoPageRoute(builder: (context) => RainIntensityView()),
              );
            }),
            getChoseInformationButtonWithIcon(
                context, 'SEND PICTURE', Icons.camera_alt, buttonSize, () {}),
          ],
        ),
      ),
    );
  }
}
