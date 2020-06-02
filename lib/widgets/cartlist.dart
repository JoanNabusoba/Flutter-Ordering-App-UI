import 'package:flutter/material.dart';

class CartListTile extends StatelessWidget {
  final Color bgColor;
  final String cartImage, cartTitle;

  const CartListTile({Key key, this.bgColor, this.cartImage, this.cartTitle})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 15),
      width: MediaQuery.of(context).size.width,
      child: ListTile(
        contentPadding: EdgeInsets.zero,
        leading: Container(
          padding: EdgeInsets.all(8),
          height: 55,
          width: 55,
          decoration: BoxDecoration(
              color: bgColor,
              borderRadius: BorderRadius.all(Radius.circular(8))),
          child: Image(image: AssetImage(cartImage)),
        ),
        title: Container(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("1 x", style: TextStyle(fontWeight: FontWeight.w600)),
              SizedBox(width: 50),
              Expanded(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(cartTitle,
                      style: TextStyle(fontWeight: FontWeight.w600)),
                  SizedBox(height: 5),
                  Text("\$ 5", style: TextStyle(fontWeight: FontWeight.w600))
                ],
              ))
            ],
          ),
        ),
        trailing: Container(
          height: 35,
          width: 35,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(8)),
              color: Colors.grey[300]),
          child: Icon(Icons.delete, color: Colors.grey[600], size: 20),
        ),
      ),
    );
  }
}
