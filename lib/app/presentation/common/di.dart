import 'package:flutter/cupertino.dart';
import 'package:state_navigation/app/data/remote/reports_rds.dart';
import 'package:state_navigation/app/data/repository/reports_repository.dart';
import 'package:state_navigation/app/presentation/reports/reports_bloc.dart';
import 'package:state_navigation/domain/usecase/get_reports_uc.dart';

///Tudo que está aqui dentro pode ser acessado por qualquer filho do MaterialApp
///var diProvider = Provider.of<ApplicationDI>(context); para acessar
class ApplicationDI {
  static ReportsRDS getReportsRDS() => ReportsRDS();

  static ReportsRepository getReportsRepository() =>
      ReportsRepository(getReportsRDS());

  ReportsBloc getReportsBloc(BuildContext context) => ReportsBloc(context);

  GetReportsUC getReportsUC() => GetReportsUC(getReportsRepository());
}
