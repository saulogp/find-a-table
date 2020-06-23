import 'package:flutter/material.dart';

Widget cardMesa(String name, String img) {
  return GestureDetector(
    onTap: () {
      // Navigator.push(
      //   context,
      //   MaterialPageRoute(
      //     builder: (context) => DetalhesMesa(),
      //   ),
      // );
    },
    child: Card(
      color: Colors.white70,
      child: Container(
        padding: EdgeInsets.all(10.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Image.asset(
              img,
              fit: BoxFit.fitWidth,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              name,
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 15,
                color: Color(0xFF002B32),
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
