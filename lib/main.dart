import 'package:flutter/material.dart';
import 'widgets/searchbar.dart';
import 'widgets/home_image.dart';
import 'widgets/bottom_bar.dart';
import 'widgets/category.dart';
import 'widgets/nav_bar.dart';
import 'widgets/app_bar.dart';
import 'widgets/services.dart';
import 'widgets/Services_list.dart';
import 'widgets/value_added.dart';
import 'widgets/international.dart';
import 'widgets/location.dart';
import 'pages/notifications_pg.dart';
import 'pages/payment_reload_pg.dart';
import 'pages/connections_pg.dart';
import 'widgets/para.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  static const routeName = 'home_pg';

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        notification_pg.routeName: (_) => notification_pg(),
        payment_pg.routeName: (_) => payment_pg(),
        connection_pg.routeName: (_) => connection_pg(),
      },
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        //key: _scaffoldKey,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(50.0),
          child: app_bar(),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              //buildsearchbar(),
              buildimage(),
              service_bar(),

              //categoryapp(),
              valueadd(),
              international(),
              location(),
            ],
          ),
        ),
        bottomNavigationBar: BottomNav(),
        drawer: Navbar(),
      ),
    );
  }
}
