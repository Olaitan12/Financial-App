import 'package:flutter/material.dart';

class BillsPage extends StatefulWidget {
  @override
  _BillsPageState createState() => _BillsPageState();
}

class _BillsPageState extends State<BillsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: SingleChildScrollView(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              _buildTopStack(),
              SizedBox(height: 50.0),
              Padding(
                padding: EdgeInsets.all(20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                  ],
                ),
              ),
            ]),
      ),
    );
  }

  Stack _buildTopStack() {
    return Stack(
      alignment: AlignmentDirectional.topCenter,
      overflow: Overflow.visible,
      children: <Widget>[
        _buildBackgroundCover(),
        _buildGreetings(),
      ],
    );
  }

  _buildBackgroundCover() {
    return Container(
      height: 260.0,
      decoration: BoxDecoration(
          gradient: LinearGradient(colors: [Colors.redAccent, Colors.red]),
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(40),
            bottomRight: Radius.circular(40),
          )),
    );
  }

  _buildGreetings() {
    return Positioned(
      left: 20.0,
      bottom: 90.0,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            "Hi Mike",
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.w500, color: Colors.white),
          ),
          SizedBox(
            height: 5.0,
          ),
          Text(
            "PLAN YOUR ASSETS TODAY!!!",
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w300,
            ),
          ),
        ],
      ),
    );
  }
}
