import 'package:flutter/cupertino.dart';

class ReportVM {
  ReportVM(this.profilePicture, this.name, this.report, this.date);

  final Widget profilePicture;
  final String name;
  final String report;
  final String date;
}
