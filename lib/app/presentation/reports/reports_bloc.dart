import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:flutter/widgets.dart';
import 'package:state_navigation/app/presentation/common/base_bloc.dart';

class ReportsBloc extends BlocBase implements BaseBloc {
  ReportsBloc(this._context);

  final BuildContext _context;

  @override
  Future<void> getData({List params}) {
  }

  @override
  void loading() {
  }
}