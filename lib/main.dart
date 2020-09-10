import 'package:flutter/material.dart';
import 'package:flutter_shop_app/SecondPage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFf4f4f4),
      body: Stack(
        children: <Widget>[
          Row(
            children: <Widget>[
              Container(
                width: 100,
                height: MediaQuery.of(context).size.height,
                color: Colors.white,
                child: Column(
                  children: <Widget>[
                    SizedBox(height: 50),
                    Icon(Icons.apps, color: Color(0xFF2d2d2d), size: 30),
                    SizedBox(height: 100),
                    Container(
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Color(0xFFf4f4f4)
                      ),
                      child: Center(
                        child: Icon(Icons.music_video, color: Color(0xFF2d2d2d), size: 30),
                      ),
                    ),
                    SizedBox(height: 50),
                    Icon(Icons.music_note, color: Color(0xFFcecece), size: 30),
                    SizedBox(height: 50),
                    Icon(Icons.speaker, color: Color(0xFFcecece), size: 30),
                    SizedBox(height: 75),
                    RotatedBox(
                      quarterTurns: 3,
                      child: Text("Featured", style: TextStyle(color: Color(0xFFcecece), fontSize: 18)),
                    ),
                    SizedBox(height: 50),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          height: 60,
                          width: 4,
                          color: Color(0xFF2d2d2d),
                        ),
                        SizedBox(width: 35),
                        RotatedBox(
                          quarterTurns: 3,
                          child: Text("Popular", style: TextStyle(color: Color(0xFF2d2d2d), fontSize: 18, fontWeight: FontWeight.bold)),
                        ),
                        SizedBox(width: 35)
                      ],
                    )
                  ],
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width - 100,
                height: MediaQuery.of(context).size.height,
                child: Padding(
                  padding: const EdgeInsets.only(left: 35, right: 35, top: 50),
                  child: Column(
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          Icon(Icons.search, color: Color(0xFF2d2d2d), size: 30),
                          SizedBox(width: 25),
                          Icon(Icons.import_export, color: Color(0xFF2d2d2d), size: 30),
                        ],
                      ),
                      SizedBox(height: 100),
                      Material(
                        borderRadius: BorderRadius.circular(25),
                        elevation: 10.0,
                        child: Container(
                          height: 375,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            color: Colors.white
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 20, right: 20, top: 30),
                            child: Column(
                              children: <Widget>[
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    Icon(Icons.star, color: Color(0xFFfec100), size: 30),
                                    SizedBox(width: 5),
                                    Text("4.8", style: TextStyle(color: Color(0xFF2d2d2d), fontSize: 20, fontWeight: FontWeight.bold)),
                                    Spacer(),
                                    Icon(Icons.turned_in_not, color: Color(0xFF2d2d2d), size: 30),
                                  ],
                                ),
                                SizedBox(height: 70),
                                GestureDetector(
                                  onTap: (){
                                    Navigator.of(context).push(MaterialPageRoute(
                                      builder: (context) => SecondPage(heroTag: "images/music.png")
                                    ));
                                  },
                                  child: Hero(
                                    tag: "images/music.png",
                                    child: Container(
                                      height: 100,
                                      width: 200,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                          image: AssetImage("images/music.png"),
                                          fit: BoxFit.contain
                                        )
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(height: 50),
                                Row(
                                  children: <Widget>[
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Text("Concept", style: TextStyle(fontSize: 20, color: Color(0xFF373737))),
                                        SizedBox(height: 10),
                                        Text("\$3,400", style: TextStyle(fontSize: 25, color: Color(0xFF2d2d2d), fontWeight: FontWeight.bold)),
                                      ],
                                    ),
                                    Spacer(),
                                    Container(
                                      height: 70,
                                      width: 70,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        border: Border.all(
                                          color: Color(0xFFd2d2d2),
                                          width: 1
                                        )
                                      ),
                                      child: Center(
                                        child: Icon(Icons.add_shopping_cart, size: 30),
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 40),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Material(
                            elevation: 10.0,
                            borderRadius: BorderRadius.circular(15),
                            child: Container(
                              height: 70,
                              width: 70,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Colors.white
                              ),
                              child: Image.asset("images/music.png"),
                            ),
                          ),
                          SizedBox(width: 5),
                          Material(
                            elevation: 10.0,
                            borderRadius: BorderRadius.circular(15),
                            child: Container(
                              height: 70,
                              width: 70,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: Colors.white
                              ),
                              child: Image.asset("images/music.png"),
                            ),
                          ),
                          SizedBox(width: 5),
                          Material(
                            elevation: 10.0,
                            borderRadius: BorderRadius.circular(15),
                            child: Container(
                              height: 70,
                              width: 70,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: Colors.white
                              ),
                              child: Image.asset("images/music.png"),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
          Positioned(
            top: 100,
            left: 55,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text("Premium", style: TextStyle(color: Color(0xFF4c4c4c), fontSize: 20)),
                SizedBox(height: 5),
                Text("Turntables", style: TextStyle(color: Color(0xFF2d2d2d), fontSize: 20, fontWeight: FontWeight.bold, letterSpacing: 2)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
