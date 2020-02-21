import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:state_navigation/app/presentation/common/di.dart';
import 'package:state_navigation/app/presentation/common/view_utils.dart';
import 'package:state_navigation/app/presentation/reports/models.dart';
import 'package:state_navigation/app/presentation/reports/reports_bloc.dart';

class ReportsView extends StatefulWidget {
  const ReportsView({Key key, this.bloc}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _ReportsViewState();

  static Widget create(BuildContext context) => ReportsView(
        bloc: Provider.of<ApplicationDI>(context).getReportsBloc(context),
      );

  final ReportsBloc bloc;
}

class _ReportsViewState extends State<ReportsView> {
  final List<ReportVM> _reportsList = [
    ReportVM(
      Icons.access_alarms, 'Bruno', 'CHOVEU PRA CARALHO', '26/02/1997'),
    ReportVM(
        Icons.access_alarms, 'Bruno', 'CHOVEU PRA CARALHO', '26/02/1997'),
    ReportVM(
        Icons.access_alarms, 'Bruno', 'CHOVEU PRA CARALHO', '26/02/1997')];


  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: const Color.fromRGBO(239, 245, 255, 10),
        appBar: getAppBar(),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            _getReportListHeader(),
            _showList(_reportsList),
          ],
        ),
      );

  Widget _getReportListHeader() => Container(
        color: const Color.fromRGBO(216, 223, 224, 50),
        height: MediaQuery.of(context).size.height / 10,
        child: Row(
          children: const <Widget>[
            Padding(
              padding: EdgeInsets.all(8),
              child: Text('Aqui tem uma imagem'),
            ),
            Padding(
              padding: EdgeInsets.all(8),
              child: Text('Nome'),
            ),
            Padding(
              padding: EdgeInsets.all(8),
              child: Text('Opções'),
            ),
          ],
        ),
      );

  Widget _showList(List<ReportVM> reports) => Flexible(
        child: ListView.builder(
          itemCount: reports.length ,
          itemBuilder: (context, index) =>
              reportVmToWidget(reports[index]),
        ),
      );

  Widget reportVmToWidget(ReportVM report) => Container(
        color: Colors.white,
        child: Text(report.report),
      );
}
