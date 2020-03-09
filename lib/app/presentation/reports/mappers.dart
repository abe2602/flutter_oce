import 'package:state_navigation/app/presentation/reports/models.dart';
import 'package:state_navigation/domain/model/reports.dart';

extension ReportDMToVM on Report {
  ReportVM toVM() =>
      ReportVM(profilePicture, name, report, date);
}
