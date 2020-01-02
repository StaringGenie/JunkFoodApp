//design credit https://dribbble.com/shots/9221669/attachments/1265209?mode=media

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'FoodPage.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List items = [FoodPage()];
  int selectedScreen = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Padding(
          padding: const EdgeInsets.all(14.0),
          child: Container(
            width: 40,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  height: 3,
                  width: 25,
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(3)),
                ),
                SizedBox(
                  height: 4,
                ),
                Container(
                  height: 3,
                  width: 15,
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(3)),
                ),
              ],
            ),
          ),
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text('THE SPICYCAB',
                style: GoogleFonts.montserrat(
                  textStyle: TextStyle(color: Colors.black),
                  fontSize: 18,
                )),
            CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://steamcdn-a.akamaihd.net/steamcommunity/public/images/avatars/da/da8018aedb0a01f3c17c53a50805275a684c13a1_full.jpg'),
            )
          ],
        ),
        actions: <Widget>[],
      ),
      body: items[selectedScreen],
    );
  }
}
