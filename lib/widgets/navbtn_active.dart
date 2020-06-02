import 'package:flutter/material.dart';

import '../uidata.dart';

class NavButtonActive extends StatelessWidget {
  final String btnText;

  const NavButtonActive({Key key, this.btnText}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return FlatButton(
        color: UIData.bgTab,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        onPressed: () {},
        child: Text(
          btnText,
          style: TextStyle(
              color: UIData.mainColor,
              fontSize: 15,
              fontWeight: FontWeight.bold),
        ));
  }
}
