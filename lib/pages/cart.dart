import 'package:flutter/material.dart';
import 'package:food_ordering_app/widgets/cartlist.dart';

import '../uidata.dart';

class CartPage extends StatefulWidget {
  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        automaticallyImplyLeading: false,
        leading: InkWell(
          onTap: () => Navigator.pop(context),
          child: Container(
            alignment: Alignment.center,
            margin: EdgeInsets.only(top: 10, left: 10, bottom: 4),
            decoration: BoxDecoration(
                //color: UIData.mainColor,
                borderRadius: BorderRadius.all(Radius.circular(8)),
                border: Border.all(color: Colors.grey[400])),
            child: Icon(Icons.chevron_left, color: Colors.black54, size: 28),
          ),
        ),
        actions: <Widget>[
          Container(
            margin: EdgeInsets.only(right: 15),
            child: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.shopping_basket,
                  color: Colors.amber,
                  size: 28,
                )),
          )
        ],
      ),
      body: Stack(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text("My \nOrder",
                    style:
                        TextStyle(fontSize: 22, fontWeight: FontWeight.w500)),
                Container(
                  height: MediaQuery.of(context).size.height * .54,
                  child: ListView(
                    padding: EdgeInsets.zero,
                    children: <Widget>[
                      CartListTile(
                        bgColor: Colors.orange.withOpacity(.2),
                        cartImage: "images/orange.jpg",
                        cartTitle: "Orange",
                      ),
                      CartListTile(
                        bgColor: Colors.red.withOpacity(.2),
                        cartImage: "images/strawberry.jpg",
                        cartTitle: "Strawberry",
                      ),
                      CartListTile(
                        bgColor: Colors.green.withOpacity(.2),
                        cartImage: "images/guava.jpg",
                        cartTitle: "Guava",
                      ),
                      CartListTile(
                        bgColor: Colors.deepPurple.withOpacity(.2),
                        cartImage: "images/grapes.jpg",
                        cartTitle: "Grapes",
                      )
                    ],
                  ),
                ),
                Divider(
                  color: Colors.grey,
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              padding: EdgeInsets.all(16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                  Text("Total Price", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600)),
                  Text("\$ 50", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600)),
                ],),
                SizedBox(height:10),
                FlatButton(
                              padding: EdgeInsets.symmetric(horizontal: 50),
                              shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(8))),
                              color: UIData.mainColor,
                              onPressed: () {},
                              child: Text(
                                "Payment",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w600),
                              )),
          ],),
            ))
        ],
      ),
    );
  }
}
