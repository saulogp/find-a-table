import 'package:finda_a_table/pages/criar-mesa.dart';
import 'package:flutter/material.dart';
// import 'package:carousel_pro/carousel_pro.dart';

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
                  icon: Icon(
                    Icons.search,
                    color: Color(0xFF002B32),
                  ),
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
              padding: EdgeInsets.only(top: 20, bottom: 20),
              child: Text(
                "Categorias",
                style: TextStyle(
                  fontSize: 20,
                ),
                textAlign: TextAlign.left,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Expanded(
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
                                        "assets/images/Medieval.png")))),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "Medieval",
                        style: TextStyle(fontSize: 12),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
                Expanded(
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
                                        "assets/images/Cyberpunk.png")))),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "Cyberpunk",
                        style: TextStyle(fontSize: 12),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
                Expanded(
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
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "Cthulhu",
                        style: TextStyle(fontSize: 12),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
                Expanded(
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
                                        "assets/images/Terror.png")))),
                      ),
                      SizedBox(
                        height: 5,
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
                Expanded(
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
                                        "assets/images/Zumbi.png")))),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "Zumbi",
                        style: TextStyle(fontSize: 12),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
                Expanded(
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
                                        "assets/images/Vampi.png")))),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "Vampiro",
                        style: TextStyle(fontSize: 12),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
                Expanded(
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
                                    image:
                                        AssetImage("assets/images/SW.png")))),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "Star Wars",
                        style: TextStyle(fontSize: 12),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
                Expanded(
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
                                        "assets/images/Investigação.png")))),
                      ),
                      SizedBox(
                        height: 5,
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
            // https://pub.dev/packages/carousel_pro
            // SizedBox(
            //     height: 200.0,
            //     width: 350.0,
            //     child: Carousel(
            //       images: [
            //         ExactAssetImage("assets/images/mesa1.png"),
            //         ExactAssetImage("assets/images/mesa2.png"),
            //         ExactAssetImage("assets/images/mesa3.png"),
            //       ],
            //       autoplay: false,
            //       dotSize: 4,
            //       dotSpacing: 15,
            //       dotColor: Colors.lightGreenAccent,
            //       indicatorBgPadding: 5,
            //       dotBgColor: Color(0xFF002B32).withOpacity(0.5),
            //       borderRadius: true,
            //       moveIndicatorFromBottom: 180.0,
            //       noRadiusForIndicator: true,
            //     )),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => CriarMesa(),
            ),
          );
        },
        child: Icon(Icons.add),
        backgroundColor: Color(0xFF002B32),
      ),
    );
  }
}
