import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_app/componnents/Containers.dart';

class MainPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => MainPageState();
}

class MainPageState extends State<MainPage> {
  var color1 = "enable";
  var color2 = "disable";
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var blackcolor = Color(0xdd393939);
    var colors = {"enable": Colors.white, "disable": Color(0xffcccc33)};
    /* app bar*/
    final appbar = AppBar(
      leadingWidth: size.width / 3,
      backgroundColor: Color(0xddf8cc2f),
      elevation: 0,
      actions: [
        FlatButton(
          onPressed: null,
          child: Container(
              padding: const EdgeInsets.only(right: 10),
              width: 120,
              height: 30,
              decoration: BoxDecoration(
                color: blackcolor,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                children: [
                  Image.asset(
                    "assets/krown.png",
                    width: 30,
                    height: 30,
                  ),
                  Text(
                    "Go Promium",
                    style: TextStyle(color: Colors.white),
                  )
                ],
              )),
        )
      ],
      leading: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Text(
              "VPN",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 2),
            child: Image.asset(
              "assets/freeicon.png",
              width: 20,
              height: 20,
            ),
          )
        ],
      ),
    );
/* app bar*/
    final body = Stack(
      alignment: Alignment.center,
      children: [
        Image.asset(
          "assets/map.png",
          width: size.width,
          height: size.height,
        ),
        Container(
          color: Color(0xddf8cc2f),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Recent Connection",
                  style: TextStyle(color: Colors.black, fontSize: 13),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      color1 = "disable";
                      color2 = "enable";
                    });
                  },
                  child: AnimatedContainer(
                      duration: Duration(seconds: 2),
                      curve: Curves.fastOutSlowIn,
                      margin: const EdgeInsets.only(top: 20, left: 20),
                      width:
                          color1 == "enable" && color2 == "disable" ? 160 : 150,
                      height: 85,
                      decoration: BoxDecoration(
                          color: color1 == "enable" && color2 == "disable"
                              ? colors['enable']
                              : colors['disable'],
                          borderRadius: BorderRadius.circular(20)),
                      child: Containers(
                        imageurl: "assets/flagusa.jpg",
                        title: "United State",
                        subtitle: color1 == "enable" && color2 == "disable"
                            ? "Connected"
                            : "Connect",
                        icon: color1 == "enable" && color2 == "disable"
                            ? Icons.check_circle_outline
                            : null,
                        textcolor: color1 == "enable" && color2 == "disable"
                            ? Color(0xff03a305)
                            : null,
                      )),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      color1 = "enable";
                      color2 = "disable";
                    });
                  },
                  child: AnimatedContainer(
                    curve: Curves.fastOutSlowIn,
                    width:
                        color2 == "enable" && color1 == "disable" ? 160 : 150,
                    height: 85,
                    duration: Duration(seconds: 2),
                    margin: const EdgeInsets.only(top: 20, left: 10, right: 20),
                    decoration: BoxDecoration(
                        color: color2 == "enable" && color1 == "disable"
                            ? colors['enable']
                            : colors['disable'],
                        borderRadius: BorderRadius.circular(20)),
                    child: Containers(
                      imageurl: "assets/flaggermany.jpg",
                      title: "Germany",
                      subtitle: color2 == "enable" && color1 == "disable"
                          ? "Connected"
                          : "Connect",
                      icon: color2 == "enable" && color1 == "disable"
                          ? Icons.check_circle_outline
                          : null,
                      textcolor: color2 == "enable" && color1 == "disable"
                          ? Color(0xff03a305)
                          : null,
                    ),
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 100),
              child: Align(
                alignment: Alignment.center,
                child: Image.asset(
                  "assets/power.png",
                  width: 120,
                  height: 120,
                ),
              ),
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 50),
                  child: Text(
                    "00:45:29",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.location_pin,
                        size: 15,
                      ),
                      Text("other location",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold)),
                      Icon(
                        Icons.arrow_forward_ios,
                        size: 15,
                      )
                    ],
                  ),
                )
              ],
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: EdgeInsets.only(top: 10, left: 50, right: 50),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          width: 30,
                          height: 25,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: Color(0xffe00000)),
                          child: Icon(
                            Icons.arrow_downward,
                            size: 18,
                            color: Colors.white,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 5),
                          child: Column(
                            children: [
                              Text("Download",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 10,
                                    fontWeight: FontWeight.bold,
                                  )),
                              Text("49.8 KB/s",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 10,
                                    fontWeight: FontWeight.bold,
                                  ))
                            ],
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          width: 30,
                          height: 25,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: Color(0xff03a305)),
                          child: Icon(
                            Icons.arrow_upward,
                            size: 18,
                            color: Colors.white,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 5),
                          child: Column(
                            children: [
                              Text("Upload",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 10,
                                    fontWeight: FontWeight.bold,
                                  )),
                              Text("13.2 KB/s",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 10,
                                    fontWeight: FontWeight.bold,
                                  ))
                            ],
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        )
      ],
    );
/* body */

/*body */
    return Scaffold(appBar: appbar, body: body
        //body: Container(),
        );
  }
}
