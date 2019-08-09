import 'package:flutter/material.dart';

class Item extends StatelessWidget {
  var title;
  var desc;
  IconData icon;

  Item(title, desc, icon) {
    this.title = title;
    this.desc = desc;
    this.icon = icon;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: myBoxDecoration(),
        padding: EdgeInsets.fromLTRB(0.4,0.8,0.4,0.0),
        margin: EdgeInsets.all(4.0),
        child: InkWell(
          onTap: () {
            print("I'm Tapped");
          },
          child: Row(children: [
            new RawMaterialButton(
              onPressed: () {},
              child: new Icon(icon, size: 30.0),
              shape: new CircleBorder(),
              fillColor: new Color.fromRGBO(249,249,249,1.0),
              padding: EdgeInsets.all(15.0),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0.0,8.0,0.0,0.0),
                      child: Text(
                        title,
                        style: TextStyle(
                          fontSize: 21.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0.0,8.0,0.0,0.0),
                      child: Text(
                        desc,
                      ),
                    )
                  ]),
            )
          ]),
        ));
  }

  BoxDecoration myBoxDecoration() {
    return BoxDecoration(
      borderRadius: BorderRadius.all(Radius.circular(20.0)),
      color: Colors.white,
    );
  }
}
