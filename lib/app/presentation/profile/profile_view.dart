import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:state_navigation/app/presentation/common/view_utils.dart';

class ProfileView extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _ProfileViewState();

  static Widget create(BuildContext context) => ProfileView();
}

class _ProfileViewState extends State<ProfileView> {
  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: getAppBar(),
  );
}
