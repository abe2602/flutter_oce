import 'package:state_navigation/domain/model/reports.dart';

abstract class ReportsRepositoryDataSource {
  Future<List<Report>> getReportsList();
}
