import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      padding: EdgeInsets.only(top: 20, left: 25, right: 25),
      child: ListView(
        children: <Widget>[
          Container(
            child: TextFormField(
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                border: InputBorder.none,
                icon: Icon(Icons.search),
                hintText: "Encontrar mesa",
                labelStyle: TextStyle(
                  color: Color(0xFF002B32),
                  fontWeight: FontWeight.w300,
                  fontSize: 15,
                ),
              ),
              style: TextStyle(
                fontSize: 15,
              ),
            ),
            decoration: BoxDecoration(
              border: Border.all(color: Color(0xFF002B32)),
              borderRadius: BorderRadius.all(Radius.circular(5)),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 40, bottom: 20),
            child: Text(
              "Categoria",
              style: TextStyle(
                fontSize: 20,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(left: 10, right: 10),
                child: Column(
                  children: <Widget>[
                    GestureDetector(
                      onTap: () {
                        print("Medieval--------------------------------");
                      },
                      child: Container(
                          width: 50,
                          height: 50,
                          decoration: new BoxDecoration(
                              shape: BoxShape.circle,
                              image: new DecorationImage(
                                  fit: BoxFit.fill,
                                  image: AssetImage(
                                      "assets/images/chululu.png")))),
                    ),
                    Text(
                      "Medieval",
                      style: TextStyle(fontSize: 12),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 10, right: 10),
                child: Column(
                  children: <Widget>[
                    GestureDetector(
                      onTap: () {
                        print("Cyberpunk--------------------------------");
                      },
                      child: Container(
                          width: 50,
                          height: 50,
                          decoration: new BoxDecoration(
                              shape: BoxShape.circle,
                              image: new DecorationImage(
                                  fit: BoxFit.fill,
                                  image: AssetImage(
                                      "assets/images/chululu.png")))),
                    ),
                    Text(
                      "Cyberpunk",
                      style: TextStyle(fontSize: 12),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 10, right: 10),
                child: Column(
                  children: <Widget>[
                    GestureDetector(
                      onTap: () {
                        print("Cthulhu--------------------------------");
                      },
                      child: Container(
                          width: 50,
                          height: 50,
                          decoration: new BoxDecoration(
                              shape: BoxShape.circle,
                              image: new DecorationImage(
                                  fit: BoxFit.fill,
                                  image: AssetImage(
                                      "assets/images/chululu.png")))),
                    ),
                    Text(
                      "Cthulhu",
                      style: TextStyle(fontSize: 12),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 10, right: 10),
                child: Column(
                  children: <Widget>[
                    GestureDetector(
                      onTap: () {
                        print("Terror--------------------------------");
                      },
                      child: Container(
                          width: 50,
                          height: 50,
                          decoration: new BoxDecoration(
                              shape: BoxShape.circle,
                              image: new DecorationImage(
                                  fit: BoxFit.fill,
                                  image: AssetImage(
                                      "assets/images/chululu.png")))),
                    ),
                    Text(
                      "Terror",
                      style: TextStyle(fontSize: 12),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(left: 10, right: 10),
                child: Column(
                  children: <Widget>[
                    GestureDetector(
                      onTap: () {
                        print("Zumbi--------------------------------");
                      },
                      child: Container(
                          width: 50,
                          height: 50,
                          decoration: new BoxDecoration(
                              shape: BoxShape.circle,
                              image: new DecorationImage(
                                  fit: BoxFit.fill,
                                  image: AssetImage(
                                      "assets/images/chululu.png")))),
                    ),
                    Text(
                      "Apocalipse\nzumbi",
                      style: TextStyle(fontSize: 12),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 10, right: 10),
                child: Column(
                  children: <Widget>[
                    GestureDetector(
                      onTap: () {
                        print("Vampiro--------------------------------");
                      },
                      child: Container(
                          width: 50,
                          height: 50,
                          decoration: new BoxDecoration(
                              shape: BoxShape.circle,
                              image: new DecorationImage(
                                  fit: BoxFit.fill,
                                  image: AssetImage(
                                      "assets/images/chululu.png")))),
                    ),
                    Text(
                      "Vampiro",
                      style: TextStyle(fontSize: 12),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 10, right: 10),
                child: Column(
                  children: <Widget>[
                    GestureDetector(
                      onTap: () {
                        print("Star Wars--------------------------------");
                      },
                      child: Container(
                          width: 50,
                          height: 50,
                          decoration: new BoxDecoration(
                              shape: BoxShape.circle,
                              image: new DecorationImage(
                                  fit: BoxFit.fill,
                                  image: AssetImage(
                                      "assets/images/chululu.png")))),
                    ),
                    Text(
                      "Star Wars",
                      style: TextStyle(fontSize: 12),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 10, right: 10),
                child: Column(
                  children: <Widget>[
                    GestureDetector(
                      onTap: () {
                        print("Investigação--------------------------------");
                      },
                      child: Container(
                          width: 50,
                          height: 50,
                          decoration: new BoxDecoration(
                              shape: BoxShape.circle,
                              image: new DecorationImage(
                                  fit: BoxFit.fill,
                                  image: AssetImage(
                                      "assets/images/chululu.png")))),
                    ),
                    Text(
                      "Investigação",
                      style: TextStyle(fontSize: 12),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(top: 20, bottom: 20),
            child: Text(
              "Principais mesas",
              style: TextStyle(
                fontSize: 20,
              ),
              textAlign: TextAlign.left,
            ),
          ),
        ],
      ),
    ));
  }
}
