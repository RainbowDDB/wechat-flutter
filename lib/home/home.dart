import 'package:flutter/material.dart';

class NavigationIconView {
  final String _title;
  final Widget _icon;
  final Widget _activeIcon;
  final BottomNavigationBarItem item;

  NavigationIconView({
    Key key,
    String title,
    Widget icon,
    Widget activeIcon,
  })  : _title = title,
        _icon = icon,
        _activeIcon = activeIcon,
        item = BottomNavigationBarItem(
          icon: icon,
          activeIcon: activeIcon,
          title: Text(title),
          backgroundColor: Colors.white,
        );
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<NavigationIconView> _navigationViews;
  @override
  void initState() {
    super.initState();
    _navigationViews = [
      NavigationIconView(
          title: "微信",
          icon: Icon(Icons.ac_unit),
          activeIcon: Icon(Icons.access_alarm)),
      NavigationIconView(
          title: "通讯录",
          icon: Icon(Icons.access_alarms),
          activeIcon: Icon(Icons.accessibility_new)),
      NavigationIconView(
          title: "发现",
          icon: Icon(Icons.ac_unit),
          activeIcon: Icon(Icons.access_alarm)),
      NavigationIconView(
          title: "我",
          icon: Icon(Icons.ac_unit),
          activeIcon: Icon(Icons.access_alarm)),
    ];
  }

  @override
  Widget build(BuildContext context) {
    final BottomNavigationBar bottomNavBar = BottomNavigationBar(
      items: _navigationViews.map((NavigationIconView view) {
        return view.item;
      }).toList(),
      currentIndex: 0,
      type: BottomNavigationBarType.fixed,
      onTap: (int index) {
        print("点击的是$index个tab");
      },
    );
    return Scaffold(
      appBar: AppBar(
        title: Text("微信"),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: (){
              print("Search");
            },
          ),
          IconButton(
            icon: Icon(Icons.add),
            onPressed: (){
              print("Add");
            },
          )
        ],
      ),
      body: Container(
        color: Colors.white,
      ),
      bottomNavigationBar: bottomNavBar,
    );
  }
}
