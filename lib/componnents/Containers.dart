import 'package:flutter/material.dart';

class Containers extends StatelessWidget {
  String imageurl;
  String title;
  String subtitle;
  IconData icon;
  Color textcolor;
  Containers(
      {this.imageurl, this.title, this.subtitle, this.icon, this.textcolor});
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20, top: 5),
          child: Image.asset(
            imageurl,
            width: 30,
            height: 30,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20, top: 3),
          child: Text(
            title,
            style: TextStyle(
                color: Colors.black, fontSize: 10, fontWeight: FontWeight.bold),
          ),
        ),
        // in left of tow container for connection vpn needed row
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 5),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 5),
                child: Icon(
                  icon,
                  color: Color(0xff03a305),
                ),
              ),
              Text(
                subtitle,
                style: TextStyle(color: textcolor, fontSize: 10),
              )
            ],
          ),
        )
      ],
    );
  }
}
