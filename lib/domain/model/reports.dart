import 'package:flutter/widgets.dart';

class Report {
  Report(this.profilePicture, this.name, this.report, this.date);

  final Widget profilePicture;
  final String name;
  final String report;
  final String date;
}