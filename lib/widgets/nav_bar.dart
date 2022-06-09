import 'package:flutter/material.dart';
import 'package:flutter_file_structure/pages/connections_pg.dart';
import 'package:flutter_file_structure/pages/payment_reload_pg.dart';

class Navbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
            accountName: Text(
              "M.M.M Munsif",
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            accountEmail: Text(
              "766081468",
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                child: Image.asset(
                  "assets/images/me2.jpg",
                  fit: BoxFit.cover,
                ),
              ),
            ),
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 230, 141, 225),
            ),
          ),
          ListTile(
            leading: Icon(Icons.airline_stops_rounded),
            title: Text('Manage Connections'),
            onTap: () {
              Navigator.of(context).pushNamed(connection_pg.routeName);
            },
          ),
          ListTile(
            leading: Icon(Icons.favorite),
            title: Text('Club Vision'),
            onTap: () => null,
          ),
          ListTile(
            leading: Icon(Icons.star_half_outlined),
            title: Text('Star points'),
            onTap: () => null,
          ),
          ListTile(
            leading: Icon(Icons.monetization_on_outlined),
            title: Text('eZ cash'),
          ),
          //Divider(),
          ListTile(
            leading: Icon(Icons.add_to_home_screen),
            title: Text('App Transaction history'),
            onTap: () => null,
          ),
          ListTile(
            leading: Icon(Icons.handshake_outlined),
            title: Text('Help a friend'),
            onTap: () => null,
          ),
          ListTile(
            leading: Icon(Icons.person_add),
            title: Text('Invite friends'),
            onTap: () => null,
          ),
          ListTile(
            leading: Icon(Icons.payment_outlined),
            title: Text('Payments & reload'),
            onTap: () {
              Navigator.of(context).pushNamed(payment_pg.routeName);
            },
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Settings'),
            onTap: () => null,
          ),
        ],
      ),
    );
  }
}
