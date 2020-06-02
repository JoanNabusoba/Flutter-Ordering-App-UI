import 'package:flutter/material.dart';
import 'package:food_ordering_app/uidata.dart';
import 'package:food_ordering_app/widgets/navbtn.dart';
import 'package:food_ordering_app/widgets/navbtn_active.dart';
import 'package:food_ordering_app/widgets/shop_card_tile.dart';
import 'package:food_ordering_app/widgets/veg_card.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
            icon: Icon(Icons.menu, color: Colors.black87), onPressed: () {}),
        actions: <Widget>[
          Container(
            decoration: BoxDecoration(),
            margin: EdgeInsets.only(right: 15, bottom: 15),
            child: CircleAvatar(
              radius: 22,
              backgroundImage: AssetImage(
                "images/profile.jpg",
              ),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text("Discover amazing Seasonal Fruits and Vegetables",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500)),
            SizedBox(height: 20),
            Container(
                height: 30,
                width: MediaQuery.of(context).size.width,
                child: ListView(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    NavButtonActive(btnText: "Orange"),
                    SizedBox(width: 10),
                    NavButton(btnText: "Grape"),
                    SizedBox(width: 10),
                    NavButton(btnText: "Pineapple"),
                    SizedBox(width: 10),
                    NavButton(btnText: "Strawberry"),
                  ],
                )),
            SizedBox(height: 25),
            Container(
              height: 220,
              child: ListView(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  VegCard(
                    cardBg: Colors.orange.withOpacity(.2),
                    cardColor: Colors.amber[800],
                    cardImage: "images/orange.jpg",
                    cardTitle: "Orange",
                  ),
                  SizedBox(width: 16),
                  VegCard(
                    cardBg: Color.fromRGBO(217, 222, 254, 1),
                    cardColor: Colors.deepPurple,
                    cardImage: "images/grapes.jpg",
                    cardTitle: "Grape",
                  ),
                  SizedBox(width: 16),
                  VegCard(
                    cardBg: Colors.redAccent.withOpacity(.2),
                    cardColor: Colors.redAccent,
                    cardImage: "images/strawberry.jpg",
                    cardTitle: "Strawberry",
                  ),
                  SizedBox(width: 16),
                  VegCard(
                    cardBg: Colors.green.withOpacity(.2),
                    cardColor: Colors.green,
                    cardImage: "images/guava.jpg",
                    cardTitle: "Guava",
                  ),
                  SizedBox(width: 16),
                  VegCard(
                    cardBg: Colors.red.withOpacity(.2),
                    cardColor: Colors.red,
                    cardImage: "images/apple.jpg",
                    cardTitle: "Apple",
                  ),
                ],
              ),
            ),
            SizedBox(height: 35),
            Text("Nearby Shop",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600)),
            SizedBox(height: 25),
            Container(
              height: 80,
              width: MediaQuery.of(context).size.width,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  ShopCard(
                    title: "Wazito Shop",
                  ),
                  SizedBox(width: 10),
                  ShopCard(
                    title: "Tamtam Shop",
                  )
                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          showSelectedLabels: false,
          showUnselectedLabels: false,unselectedItemColor: Colors.grey,
          items: [
            BottomNavigationBarItem(
              icon: new Icon(
                Icons.home,
                color: UIData.mainColor,
              ),
              title: new Text('Home'),
            ),
            BottomNavigationBarItem(
              icon: new Icon(Icons.search),
              title: new Text('Search'),
            ),
            BottomNavigationBarItem(
              icon: new Icon(Icons.shopping_cart),
              title: new Text('Cart'),
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.person), title: Text('Profile'))
          ]),
    );
  }
}
