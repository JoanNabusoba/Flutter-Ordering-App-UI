import 'package:flutter/material.dart';
import 'package:food_ordering_app/uidata.dart';

class VegCard extends StatelessWidget {
  final Color cardColor, cardBg;
  final String cardImage;
  final String cardTitle;

  const VegCard(
      {Key key, this.cardColor, this.cardBg, this.cardImage, this.cardTitle})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.pushNamed(context, UIData.detailPageRoute),
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 5, horizontal: 16),
        height: 210,
        width: 160,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(15)),
          color: cardBg,
        ),
        child: Column(
          children: <Widget>[
            Expanded(
                child: Image(
                    image: AssetImage(
                      cardImage,
                    ),
                    fit: BoxFit.contain)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Expanded(
                    child: Text(cardTitle,
                        style: TextStyle(
                            color: cardColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 16))),
                Text("\$ 5",
                    style: TextStyle(
                        color: cardColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 16)),
              ],
            ),
            SizedBox(height: 5),
            Container(
              height: 25,
              child: FlatButton(
                  padding: EdgeInsets.symmetric(horizontal: 12, vertical: 2),
                  color: cardColor,
                  onPressed: () =>
                      Navigator.pushNamed(context, UIData.cartRoute),
                  shape: RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(25),
                  ),
                  child: Text(
                    "ADD",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 15),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
