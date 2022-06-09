import 'package:flutter/material.dart';
import '../widgets/bottom_bar.dart';

class connection_pg extends StatelessWidget {
  static const routeName = 'connection_pg';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Manage connection",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Color.fromARGB(255, 212, 18, 212),
      ),
      //bottomNavigationBar: BottomNav(),
    );
  }
}
