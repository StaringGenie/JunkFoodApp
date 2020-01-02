//design credit https://dribbble.com/shots/9221669/attachments/1265209?mode=media

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(14.0),
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    width: 40,
                    height: 12,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          height: 3,
                          width: 25,
                          decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(3)),
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
                  Text('THE SPICYCAB',
                      style: GoogleFonts.montserrat(fontSize: 18)),
                  CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://steamcdn-a.akamaihd.net/steamcommunity/public/images/avatars/da/da8018aedb0a01f3c17c53a50805275a684c13a1_full.jpg'),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
