import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:rxdart/rxdart.dart';
import 'package:state_navigation/app/presentation/common/base_bloc.dart';
import 'package:state_navigation/app/presentation/common/di.dart';
import 'package:state_navigation/app/presentation/reports/models.dart';
import 'package:state_navigation/domain/usecase/get_reports_uc.dart';

import 'mappers.dart';

class ReportsBloc extends BlocBase implements BaseBloc {
  ReportsBloc(this._context);

  final BuildContext _context;
  final _reportsListPublishSubject = PublishSubject<List<ReportVM>>();

  Stream<List<ReportVM>> get reportsListStream =>
      _reportsListPublishSubject.stream;

  @override
  Future<void> getData({List params}) async =>
      Provider.of<ApplicationDI>(_context)
          .getReportsUC()
          .call(GetReportsUCParams())
          .then((reportsValues) => _reportsListPublishSubject.sink
              .add(reportsValues.map((report) => report.toVM()).toList()))
          .catchError(_reportsListPublishSubject.addError);

  @override
  void loading() => _reportsListPublishSubject.sink.add(null);

  @override
  void dispose() {
    _reportsListPublishSubject.close();
    super.dispose();
  }
}
