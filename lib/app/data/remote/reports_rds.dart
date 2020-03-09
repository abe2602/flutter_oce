import 'package:connectivity/connectivity.dart';
import 'package:flutter/widgets.dart';
import 'package:state_navigation/app/data/remote/base_rds.dart';
import 'package:state_navigation/domain/error/error.dart';
import 'package:state_navigation/domain/model/reports.dart';

class ReportsRDS extends BaseRDS {
  Future<List<Report>> getReports() async {
    connectivityResult = await Connectivity().checkConnectivity();

    if (connectivityResult == ConnectivityResult.none) {
      throw NetworkException();
    } else {
      return Future.value([
        Report(Image.asset('images/kakashi.jpg'), 'Bruno', 'CHOVEU PRA CARALHO',
            '26/02/1997'),
        Report(Image.asset('images/kakashi.jpg'), 'Bruno', 'CHOVEU PRA CARALHO',
            '26/02/1997'),
        Report(Image.asset('images/kakashi.jpg'), 'Bruno', 'CHOVEU PRA CARALHO',
            '26/02/1997')
      ]);
    }
  }
}
