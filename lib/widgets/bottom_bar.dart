import 'package:flutter/material.dart';
import 'package:flutter_file_structure/pages/notifications_pg.dart';
import 'nav_bar.dart';

class BottomNav extends StatefulWidget {
  BottomNav({Key? key}) : super(key: key);

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
        //elevation: 0.0,
        color: Color.fromARGB(255, 245, 242, 245),
        child: Row(
          children: [
            Spacer(),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.home_outlined),
              color: Color.fromARGB(255, 75, 69, 69),
            ),
            Spacer(),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.earbuds_outlined),
              color: Color.fromARGB(255, 75, 69, 69),
            ),
            Spacer(),
            IconButton(
              onPressed: () {
                Navigator.of(context).pushNamed(notification_pg.routeName);
              },
              icon: Icon(Icons.notifications),
              color: Color.fromARGB(255, 75, 69, 69),
            ),
            Spacer(),
            Builder(
              builder: (context) => IconButton(
                icon: new Icon(Icons.menu),
                onPressed: () => Scaffold.of(context).openDrawer(),
              ),
            ),
            Spacer(),
          ],
        ));
  }

  Widget bottomapp({
    required String appname,
    required IconData IconData,
  }) {
    return Padding(
      padding: EdgeInsets.all(10.0),
      child: Column(children: [
        IconButton(
          onPressed: () {},
          icon: Icon(IconData),
        ),
        Text(appname)
      ]),
    );
  }
}
