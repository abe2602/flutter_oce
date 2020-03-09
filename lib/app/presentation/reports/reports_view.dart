import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:state_navigation/app/presentation/common/di.dart';
import 'package:state_navigation/app/presentation/common/view_utils.dart';
import 'package:state_navigation/app/presentation/reports/models.dart';
import 'package:state_navigation/app/presentation/reports/reports_bloc.dart';
import 'package:state_navigation/domain/error/error.dart';

class ReportsView extends StatefulWidget {
  const ReportsView({Key key, this.bloc}) : super(key: key);

  static Widget create(BuildContext context) => ReportsView(
        bloc: Provider.of<ApplicationDI>(context).getReportsBloc(context),
      );

  final ReportsBloc bloc;

  @override
  State<StatefulWidget> createState() => _ReportsViewState();
}

class _ReportsViewState extends State<ReportsView> {
  @override
  void initState() {
    widget.bloc.getData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: const Color.fromRGBO(239, 245, 255, 10),
        appBar: getAppBar(),
        body: Column(
          children: <Widget>[
            _getReportListHeader(),
            StreamBuilder(
              stream: widget.bloc.reportsListStream,
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return _showList(snapshot.data);
                } else if (snapshot.hasError) {
                  if (snapshot.error is NetworkException) {
                    return internetEmptyState(() {
                      widget.bloc.loading();
                      widget.bloc.getData();
                    });
                  } else {
                    return Text(snapshot.error.toString());
                  }
                } else {
                  return loading();
                }
              },
            ),
            //_showList(_reportsList),
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
          itemCount: reports.length,
          itemBuilder: (context, index) => reportVmToWidget(reports[index]),
        ),
      );

  Widget reportVmToWidget(ReportVM report) => Container(
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            _showReportHeader(),
            _showUserData(report),
            _showReport(report.report),
            _showDivisor(),
            _showRating(),
          ],
        ),
      );

  Widget _showReportHeader() => Container(
        color: const Color.fromRGBO(239, 245, 255, 10),
        height: MediaQuery.of(context).size.height / 50,
      );

  Widget _showUserData(ReportVM report) => Container(
        child: Row(
          children: <Widget>[
            Flexible(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.only(left: 15, right: 15),
                child: Container(
                    height: MediaQuery.of(context).size.height / 5.5,
                    width: MediaQuery.of(context).size.width / 5.5,
                    child: report.profilePicture),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  report.name,
                  style: TextStyle(
                      fontSize: MediaQuery.of(context).size.width / 20),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text(
                    report.date,
                    style: TextStyle(
                        fontSize: MediaQuery.of(context).size.width / 35),
                  ),
                ),
              ],
            ),
          ],
        ),
      );

  Widget _showReport(String report) => Container(
        child: Text(report),
      );

  Widget _showDivisor() => const Divider(
        color: Color.fromRGBO(239, 245, 255, 10),
        thickness: 3,
      );

  Widget _showRating() => Padding(
        padding: const EdgeInsets.all(4),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            InkWell(
              child: Icon(
                Icons.thumb_up,
                size: MediaQuery.of(context).size.height / 25,
              ),
            ),
            InkWell(
              child: Icon(
                Icons.thumb_down,
                size: MediaQuery.of(context).size.height / 25,
              ),
            ),
          ],
        ),
      );
}
