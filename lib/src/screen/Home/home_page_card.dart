import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class HomePageCard extends StatefulWidget {
  @override
  _HomePageCardState createState() => _HomePageCardState();
}

class _HomePageCardState extends State<HomePageCard> {
  var isTaskCompleted = false;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        // color: Theme.of(context).primaryColor,
        height: 80,
        //width: 300,
        padding: EdgeInsets.only(top: 5, right: 20, left: 20, bottom: 5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(35),
        ),
        child: Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Padding(
                  padding: EdgeInsets.all(5),
                  child: Text(
                    'Meet with doctor',
                    style: TextStyle(fontSize: 18),
                  )),
              IconButton(
                icon: isTaskCompleted
                    ? Icon(Icons.check_circle)
                    : Icon(Icons.check_circle_outline),
                onPressed: () {
                  setState(() {
                    isTaskCompleted = !isTaskCompleted;
                  });
                },
                color: Theme.of(context).primaryColor,
              )
            ],
          ),
        ),
      ),
    );
  }
}
