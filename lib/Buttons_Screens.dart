import 'package:flutter/material.dart';

class ButtonsScreens extends StatelessWidget {
  //const ButtonsScreens({ Key key }) : super(key: key);

  ButtonsScreens(
    this.text,
    this.onPressed,
    this.color,
  );
  final String text;
  final Function onPressed;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      alignment: Alignment.center,
      child: RaisedButton(
        child: Text(
          text,
          style: TextStyle(
              color: Colors.white, fontSize: 15, fontWeight: FontWeight.bold),
        ),
        shape: StadiumBorder(),
        color: color,
        onPressed: onPressed,
      ),
    );
  }
}
