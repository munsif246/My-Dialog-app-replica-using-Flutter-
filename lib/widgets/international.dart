import 'package:flutter/material.dart';

class international extends StatefulWidget {
  international({Key? key}) : super(key: key);

  @override
  State<international> createState() => _internationalState();
}

class _internationalState extends State<international> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(18.0, 0.0, 10.0, 20.0),
      padding: EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 0.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 10.0),
            child: Row(
              children: [
                Text(
                  "International Services",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 17.0,
                  ),
                ),
              ],
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                contain_cat(
                  name: "IDD",
                  colorname: Color.fromARGB(255, 184, 33, 243),
                ),
                contain_cat(
                  name: "Roaming",
                  colorname: Color.fromARGB(255, 144, 201, 39),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(0.0, 40.0, 0.0, 10.0),
            child: Row(
              children: [
                Text(
                  "My Packages",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 17.0,
                  ),
                ),
              ],
            ),
          ),
          MyPackage(
            IconData: Icons.phone_callback_sharp,
            name: "My Packages",
            plan: "Tarrif",
            plan2: "1 for 1",
          ),
        ],
      ),
    );
  }

  Widget contain_cat({
    //required IconData IconData,
    required String name,
    required Color colorname,
  }) {
    return Container(
      padding: EdgeInsets.all(20.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: Colors.white,
        ),
        color: colorname,
      ),
      height: 90.0,
      width: 170.0,
      margin: EdgeInsets.all(4.0),
      child: InkWell(
        splashColor: Colors.yellow,
        onTap: () {},
        borderRadius: BorderRadius.circular(40.0),
        child: Column(
          children: [
            Text(
              name,
              style: TextStyle(
                color: Colors.white,
                fontSize: 27.0,
                fontWeight: FontWeight.bold,
              ),
            ),

            // text
          ],
        ),
      ),
    );
  }

  Widget MyPackage({
    required IconData IconData,
    required String name,
    required String plan,
    required String plan2,
    //required String Data,
  }) {
    return Container(
      padding: EdgeInsets.all(0.0),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.white),
        borderRadius: BorderRadius.circular(20),
        color: Colors.black.withOpacity(0.05),
      ),
      height: 150.0,
      width: 350.0,
      margin: EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 5.0),
      child: InkWell(
        splashColor: Colors.green,
        onTap: () {},
        borderRadius: BorderRadius.circular(20.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(
              IconData,
              color: Color.fromARGB(255, 164, 30, 168),
              size: 60.0,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  name,
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  plan,
                  style: TextStyle(
                    fontSize: 18.0,
                    //fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  plan2,
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            // text
          ],
        ),
      ),
    );
  }
}
