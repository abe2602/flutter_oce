import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

enum TabItem { home, share, profile }

Map<TabItem, String> tabName = {
  TabItem.home: 'Home',
  TabItem.share: 'Share',
  TabItem.profile: 'Profile',
};

class BottomNavigation extends StatelessWidget {
  BottomNavigation({this.currentTab, this.onSelectTab}); //construtor
  final ValueChanged<TabItem> onSelectTab; //avisa qual tab foi selecionada
  final TabItem currentTab;
  final int currentIndex = 0;

  @override
  Widget build(BuildContext context) => BottomNavigationBar(
        items: [
          _buildItem(icon: Icon(Icons.home), tabItem: TabItem.home),
          _buildItem(
              icon: Icon(Icons.record_voice_over), tabItem: TabItem.share),
          _buildItem(
              icon: Icon(Icons.account_box), tabItem: TabItem.profile),
        ],
        onTap: (index) {
          onSelectTab(
            TabItem.values[index],
          );
        },
        currentIndex: _getBottomNavigationItem(currentTab),
      );

  int _getBottomNavigationItem(TabItem tab) {
    var currentIndex = 0;

    switch (tab) {
      case TabItem.home:
        currentIndex = 0;
        break;

      case TabItem.share:
        currentIndex = 1;
        break;

      case TabItem.profile:
        currentIndex = 1;
        break;
    }

    return currentIndex;
  }

  BottomNavigationBarItem _buildItem({TabItem tabItem, Icon icon}) =>
      BottomNavigationBarItem(
        icon: icon,
        title: Text(
          tabName[tabItem],
          style: TextStyle(
            color: currentTab == tabItem ? Colors.blue : Colors.grey,
          ),
        ),
      );
}
