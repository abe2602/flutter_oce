import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:state_navigation/app/presentation/profile/profile_view.dart';
import 'package:state_navigation/app/presentation/reports/reports_view.dart';
import 'package:state_navigation/app/presentation/share/share_view.dart';

import '../../../app/presentation/common/bottom_navigation.dart';

/// SOBRE MODAL: para que um modal seja exibido,
/// basta que o Navigator.push seja chamado
/// da seguinte maneira:
/// Navigator.of(context, rootNavigator: true).push(MaterialPageRoute(builder:
/// (context) => ROTA, fullscreenDialog: true),);

class TabNavigatorRoutes {
  static const String root = '/';
}

//Associa o nome com a tab
// (recebe como parâmetro a key do navegador e uma tabItem)
class TabNavigator extends StatelessWidget {
  const TabNavigator({this.navigatorKey, this.tabItem});

  final GlobalKey<NavigatorState> navigatorKey;
  final TabItem tabItem;

  //Retorna os widgets possíveis na navegação
  Map<String, WidgetBuilder> _routeBuilders(BuildContext context) => {
        TabNavigatorRoutes.root: (context) {
          if (tabItem == TabItem.home) {
            return ReportsView.create(context);
          } else if (tabItem == TabItem.share) {
            return ShareView.create(context);
          } else {
            return ProfileView.create(context);
          }
        }
      };

  //Retorna um novo widget com o próprio navegador
  @override
  Widget build(BuildContext context) {
    final routeBuilders = _routeBuilders(context);
    return Navigator(
      key: navigatorKey,
      initialRoute: TabNavigatorRoutes.root,
      onGenerateRoute: (routeSettings) => MaterialPageRoute(
        builder: (context) => routeBuilders[routeSettings.name](context),
      ),
    );
  }
}
