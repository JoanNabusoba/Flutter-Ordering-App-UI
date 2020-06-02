import 'package:flutter/material.dart';
import 'package:food_ordering_app/uidata.dart';

class ShopCard extends StatelessWidget {
  final String title;

  const ShopCard({Key key, this.title}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: 250,
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 16),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(15)),
          border: Border.all(color: UIData.mainColor.withOpacity(.6))),
      child: Row(
        children: <Widget>[
          Container(
            width: 60,
            height: 65,
            padding: EdgeInsets.all(12),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(15)),
              color: UIData.mainColor.withOpacity(.2),
            ),
            child: Image(image: AssetImage("images/shop.png")),
          ),
          SizedBox(width: 10),
          Expanded(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                title,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              Text(
                "2345 Street Waitaluk",
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              Text(
                "8A.M - 7P.M",
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ],
          ))
        ],
      ),
    );
  }
}
