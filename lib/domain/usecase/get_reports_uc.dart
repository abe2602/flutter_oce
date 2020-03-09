import 'package:state_navigation/domain/data/reports_repository_data_source.dart';
import 'package:state_navigation/domain/model/params.dart';
import 'package:state_navigation/domain/model/reports.dart';
import 'package:state_navigation/domain/usecase/base_use_case.dart';

class GetReportsUC implements BaseUseCase<List<Report>, Params> {

  GetReportsUC(this.reportsRepositoryDataSource);

  ReportsRepositoryDataSource reportsRepositoryDataSource;

  @override
  Future<List<Report>> call(Params params) =>
      reportsRepositoryDataSource.getReportsList();
}

class GetReportsUCParams extends Params {}
