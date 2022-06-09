import 'package:flutter/material.dart';

class categoryapp extends StatefulWidget {
  categoryapp({Key? key}) : super(key: key);

  @override
  State<categoryapp> createState() => _categoryappState();
}

class _categoryappState extends State<categoryapp> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(20.0, 10.0, 0.0, 10.0),
            child: Row(
              children: [
                Text(
                  "Other Services",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 17.0,
                  ),
                ),
              ],
            ),
          ),
          Row(
            children: [
              contain_cat(
                IconData: Icons.account_tree_outlined,
                left: 47.0,
                top: 5.0,
                right: 0.0,
                bottom: 15.0,
                name: "My Plan",
              ),
              contain_cat(
                IconData: Icons.share_outlined,
                left: 15.0,
                top: 5.0,
                right: 0.0,
                bottom: 15.0,
                name: "Share Credit",
              ),
            ],
          ),
          Row(
            children: [
              contain_cat(
                IconData: Icons.monetization_on_rounded,
                left: 47.0,
                top: 0.0,
                right: 0.0,
                bottom: 15.0,
                name: "Auto loan",
              ),
              contain_cat(
                IconData: Icons.wallet_giftcard_sharp,
                left: 15.0,
                top: 0.0,
                right: 0.0,
                bottom: 15.0,
                name: "eZ Reload",
              ),
            ],
          ),
          Row(
            children: [
              contain_cat(
                IconData: Icons.local_offer,
                left: 47.0,
                top: 0.0,
                right: 0.0,
                bottom: 15.0,
                name: "My offers",
              ),
              contain_cat(
                IconData: Icons.card_membership_outlined,
                left: 15.0,
                top: 0.0,
                right: 0.0,
                bottom: 15.0,
                name: "Scratch Card",
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget contain_cat({
    required IconData IconData,
    required double left,
    required double top,
    required double right,
    required double bottom,
    required String name,
    //required String Data,
  }) {
    return Container(
      padding: EdgeInsets.all(0.0),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.white),
        borderRadius: BorderRadius.circular(20),
        color: Colors.black.withOpacity(0.05),
      ),
      height: 100.0,
      width: 150.0,
      margin: EdgeInsets.fromLTRB(left, top, right, bottom),
      child: InkWell(
        splashColor: Colors.green,
        onTap: () {},
        borderRadius: BorderRadius.circular(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(
              IconData,
              color: Color.fromARGB(255, 164, 30, 168),
              size: 32.0,
            ),
            Text(
              name,
              style: TextStyle(
                fontSize: 13.0,
                fontWeight: FontWeight.bold,
              ),
            ), // text
          ],
        ),
      ),
    );
  }
}
