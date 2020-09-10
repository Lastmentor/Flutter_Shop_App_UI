import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {

  final heroTag;

  SecondPage({this.heroTag});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFf4f4f4),
      body: Stack(
        children: <Widget>[
          Positioned(
            top: 200,
            child: Container(
              height: MediaQuery.of(context).size.height - 200,
              width: MediaQuery.of(context).size.width,
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(top: 85, left: 20),
                    child: Container(
                      height: 100,
                      width: double.infinity,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        padding: EdgeInsets.only(top: 10, bottom: 10, left: 10),
                        children: <Widget>[
                          listItem(true),
                          listItem(false),
                          listItem(false),
                          listItem(false),
                          listItem(false)
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30, top: 10),
                    child: Text("Concept", style: TextStyle(fontSize: 25, color: Color(0xFF373737))),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30, top: 5, right: 30),
                    child: Row(
                      children: <Widget>[
                        Text("\$3,400", style: TextStyle(fontSize: 30, color: Color(0xFF2d2d2d), fontWeight: FontWeight.bold, letterSpacing: 1)),
                        Spacer(),
                        Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            border: Border.all(
                              width: 1,
                              color: Colors.black.withOpacity(0.2)
                            ),
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white
                          ),
                          child: Center(
                            child: Container(
                              height: 30,
                              width: 30,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: Color(0xFF2d2d2d)
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 10),
                        Container(
                          height: 35,
                          width: 35,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Color(0xFFf4f4f4)
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 30, top: 15, right: 30),
                    child: Container(
                      height: 110,
                      child: Text(
                        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
                        overflow: TextOverflow.fade,
                        maxLines: 10,
                        style: TextStyle(color: Color(0xFFd1d1d1), fontSize: 16),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30, top: 15, right: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          height: 60,
                          width: 70,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(
                                  color: Color(0xFFd2d2d2),
                                  width: 1
                              )
                          ),
                          child: Center(
                            child: Icon(Icons.turned_in_not, size: 30),
                          ),
                        ),
                        Container(
                          height: 60,
                          width: 250,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Color(0xFF2d2d2d),
                          ),
                          child: Center(
                            child: Text("Add to cart", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),)
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 25,
            child: Hero(
              tag: heroTag,
              child: Container(
                height: 350,
                width: 350,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(heroTag),
                        fit: BoxFit.contain
                    )
                ),
              ),
            ),
          ),
          Positioned(
            top: 40,
            left: 20,
            right: 20,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                IconButton(
                  onPressed: (){
                    Navigator.of(context).pop();
                  },
                  icon: Icon(Icons.arrow_back_ios, color: Color(0xFF2d2d2d), size: 30),
                ),
                Icon(Icons.add_shopping_cart, color: Color(0xFF2d2d2d), size: 30),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

Widget listItem(bool active){
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: <Widget>[
      Material(
        elevation: 1.0,
        borderRadius: BorderRadius.circular(20),
        child: active == true ? Container(
            height: 70,
            width: 70,
            decoration: BoxDecoration(
                border: Border.all(
                  width: 1,
                  color: Colors.black.withOpacity(0.2)
                ),
                borderRadius: BorderRadius.circular(20),
                color: Colors.white
            ),
            child: Center(
              child: Container(
                height: 60,
                width: 60,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Color(0xFFf4f4f4)
                ),
                child: Image.asset("images/music.png"),
              ),
            )
        ) : Container(
          height: 65,
          width: 65,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Color(0xFFf4f4f4)
          ),
          child: Image.asset("images/music.png"),
        )
      ),
      SizedBox(width: 30)
    ],
  );
}
