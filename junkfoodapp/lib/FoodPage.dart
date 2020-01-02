import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'constraints.dart';

class FoodPage extends StatefulWidget {
  @override
  _FoodPageState createState() => _FoodPageState();
}

class _FoodPageState extends State<FoodPage> {
  var selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            FlatButton(
              child: createButton("Indian", color1, textcolor1),
              onPressed: () {
                setState(() {
                  color1 = Colors.red;
                  color2 = Colors.white;
                  color3 = Colors.white;

                  textcolor1 = Colors.white;
                  textcolor2 = Colors.black;
                  textcolor3 = Colors.black;
                });
              },
            ),
            FlatButton(
              child: createButton("Chinese", color2, textcolor2),
              onPressed: () {
                setState(() {
                  color1 = Colors.white;
                  color2 = Colors.red;
                  color3 = Colors.white;

                  textcolor1 = Colors.black;
                  textcolor2 = Colors.white;
                  textcolor3 = Colors.black;
                });
              },
            ),
            FlatButton(
              child: createButton("Snacks", color3, textcolor3),
              onPressed: () {
                setState(() {
                  color1 = Colors.white;
                  color2 = Colors.white;
                  color3 = Colors.red;

                  textcolor1 = Colors.black;
                  textcolor2 = Colors.black;
                  textcolor3 = Colors.white;
                });
              },
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(
            'Popular Menu',
            style: GoogleFonts.montserrat(
                fontWeight: FontWeight.bold, fontSize: 20),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height - 204,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Color(0xFFE5E6EB),
          ),
          child: ListView(
            children: <Widget>[
              SizedBox(
                height: 20,
              ),
              Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      createFoodCard(
                          price: "\$10",
                          description: "Burger",
                          imgPath: 'images/burger.jpg'),
                      createFoodCard(
                          price: "\$0.99",
                          description: "Fries",
                          imgPath: 'images/fried.jpg'),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      createFoodCard(
                          price: "\$3",
                          description: "Salad",
                          imgPath: 'images/salad.jpg'),
                      createFoodCard(
                          price: "\$4",
                          description: "Wings",
                          imgPath: 'images/wings.jpg'),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      createFoodCard(
                          price: "\$10",
                          description: "Burger",
                          imgPath: 'images/burger.jpg'),
                      createFoodCard(
                          price: "\$0.99",
                          description: "Fries",
                          imgPath: 'images/fried.jpg'),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      createFoodCard(
                          price: "\$3",
                          description: "Salad",
                          imgPath: 'images/salad.jpg'),
                      createFoodCard(
                          price: "\$4",
                          description: "Wings",
                          imgPath: 'images/wings.jpg'),
                    ],
                  ),
                ],
              ),
            ],
          ),
        )
      ],
    );
  }

  createFoodCard({String imgPath, String price, String description}) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Container(
          height: 230,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15), color: Colors.white),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    child: Icon(
                      Icons.add_circle_outline,
                      color: Colors.yellow.shade700,
                      size: 30,
                    ),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15.0),
                child: Container(
                  width: 140,
                  height: 120,
                  decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage(imgPath))),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Text(
                  price,
                  style: GoogleFonts.montserrat(
                      fontWeight: FontWeight.bold, fontSize: 22),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Text(
                  description,
                  style: GoogleFonts.montserrat(
                      fontWeight: FontWeight.w400, fontSize: 14),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  createButton(String title, Color currentColor, Color textColor) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: currentColor,
      ),
      width: 100,
      height: 40,
      child: Center(
        child: Text(title,
            style: GoogleFonts.montserrat(
                fontWeight: FontWeight.bold,
                fontSize: 14,
                textStyle: TextStyle(color: textColor))),
      ),
    );
  }
}
