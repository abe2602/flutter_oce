import 'package:state_navigation/app/data/remote/reports_rds.dart';
import 'package:state_navigation/domain/data/reports_repository_data_source.dart';
import 'package:state_navigation/domain/model/reports.dart';

class ReportsRepository extends ReportsRepositoryDataSource{
  ReportsRepository(this._reportsProvider);

  final ReportsRDS _reportsProvider;

  @override
  Future<List<Report>> getReportsList() async => _reportsProvider.getReports();
}