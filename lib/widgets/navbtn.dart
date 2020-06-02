import 'package:flutter/material.dart';

class NavButton extends StatelessWidget{
  final String btnText;

  const NavButton({Key key, this.btnText}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return FlatButton(
                      onPressed: () {},
                      child: Text(
                        btnText,
                        style: TextStyle(
                            color: Colors.black87,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ));
  }

}