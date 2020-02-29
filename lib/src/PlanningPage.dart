import 'package:financial_money_app/src/pages/InvestmentBalance.dart';
import 'package:flutter/material.dart';

import 'pages/BillsPage.dart';
import 'pages/ExpensesPage.dart';
import 'pages/FamilyPage.dart';
import 'pages/FuturePlanPage.dart';
import 'pages/InvestmentPage.dart';
import 'pages/LoanPage.dart';
import 'pages/SavingsPage.dart';

class PlanningPage extends StatefulWidget {
  PlanningPage([Key key]) : super(key: key);

  @override
  _PlanningPageState createState() => _PlanningPageState();
}

class _PlanningPageState extends State<PlanningPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MANAGE & GROW YOUR INCOME'),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      backgroundColor: Colors.white,
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
                    // _buildNotificationCard(),
                    _buildNextAppointmentTitle('YOUR ASSETS'),
                    _buildAssets(),
                    _buildSecondAssets(),
                    _buildThirdAssets(),
                    _buildForthAssets(),
                    _buildFifthAssets(),
                    _buildSixthAssets(),
                    _buildSeventhAssets(),
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
        _buildAssetsPlan(),
      ],
    );
  }

  _buildBackgroundCover() {
    return Container(
      height: 200.0,
      decoration: BoxDecoration(
          gradient: LinearGradient(colors: [Colors.red, Colors.red]),
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
            style: TextStyle(
                fontSize: 36, fontWeight: FontWeight.w500, color: Colors.white),
          ),
          SizedBox(
            height: 10,
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

  _buildAssetsPlan() {
    return Positioned(
      bottom: -20,
      child: Container(
          height: 40,
          width: MediaQuery.of(context).size.width - 40,
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(25)),
              boxShadow: [
                BoxShadow(
                  color: Colors.black12,
                  spreadRadius: 5.8,
                  blurRadius: 5.8,
                )
              ]),
          child: Text('CHOOSE HOW YOU WANT TO PLAN YOUR ASSETS')),
    );
  }

  _buildNextAppointmentTitle(title) {
    return Container(
      margin: EdgeInsets.only(top: 20.0, bottom: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            title,
            style: TextStyle(
                fontSize: 18, fontWeight: FontWeight.w500, color: Colors.black),
          ),
        ],
      ),
    );
  }

  _buildAssets() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 14, horizontal: 18),
      margin: EdgeInsets.only(bottom: 20.0),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              spreadRadius: 1.0,
              blurRadius: 6.0,
            ),
          ]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              CircleAvatar(
                backgroundColor: Colors.grey,
                backgroundImage: NetworkImage(
                    "https://cdn.pixabay.com/photo/2016/08/10/15/01/credit-card-1583534_960_720.jpg"),
                radius: 36,
              ),
              SizedBox(width: 10.0),
              Column(
                children: <Widget>[
                  RichText(
                      text: TextSpan(
                          text: 'Assets\n',
                          style: TextStyle(
                            color: Colors.red,
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            height: 1.3,
                          ),
                          children: <TextSpan>[
                        TextSpan(
                            text: 'PAYMENT OF BILLS',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            )),
                      ])),
                  SizedBox(
                    height: 6.0,
                  ),
                  RaisedButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => BillsPage()));
                    },
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(80.0)),
                    padding: const EdgeInsets.all(0.0),
                    child: Ink(
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                              colors: [Colors.redAccent, Colors.red]),
                          borderRadius:
                              BorderRadius.all(Radius.circular(80.0))),
                      child: Container(
                          constraints: BoxConstraints(
                            minHeight: 36,
                            minWidth: 88,
                          ),
                          alignment: Alignment.center,
                          child: Text('Manage',
                              style: TextStyle(
                                fontWeight: FontWeight.w300,
                                fontSize: 17,
                                color: Colors.white,
                              ))),
                    ),
                  )
                ],
              )
            ],
          ),
          Icon(
            Icons.assessment,
            color: Colors.red,
            size: 36,
          )
        ],
      ),
    );
  }

  _buildSecondAssets() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 14, horizontal: 18),
      margin: EdgeInsets.only(bottom: 20.0),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              spreadRadius: 1.0,
              blurRadius: 6.0,
            ),
          ]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              CircleAvatar(
                backgroundColor: Colors.grey,
                backgroundImage: NetworkImage(
                    "https://cdn.pixabay.com/photo/2015/10/31/08/50/coins-1015125_960_720.jpg"),
                radius: 36,
              ),
              SizedBox(width: 10.0),
              Column(
                children: <Widget>[
                  RichText(
                      text: TextSpan(
                          text: 'Assets\n',
                          style: TextStyle(
                            color: Colors.red,
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            height: 1.3,
                          ),
                          children: <TextSpan>[
                        TextSpan(
                            text: 'EMERGENCY EXP...',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            )),
                      ])),
                  SizedBox(
                    height: 6.0,
                  ),
                  RaisedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ExpensesPage()));
                    },
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(80.0)),
                    padding: const EdgeInsets.all(0.0),
                    child: Ink(
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                              colors: [Colors.redAccent, Colors.red]),
                          borderRadius:
                              BorderRadius.all(Radius.circular(80.0))),
                      child: Container(
                          constraints: BoxConstraints(
                            minHeight: 36,
                            minWidth: 88,
                          ),
                          alignment: Alignment.center,
                          child: Text('Manage',
                              style: TextStyle(
                                fontWeight: FontWeight.w300,
                                fontSize: 17,
                                color: Colors.white,
                              ))),
                    ),
                  )
                ],
              )
            ],
          ),
          Icon(
            Icons.assessment,
            color: Colors.red,
            size: 36,
          )
        ],
      ),
    );
  }

  _buildThirdAssets() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 14, horizontal: 18),
      margin: EdgeInsets.only(bottom: 20.0),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              spreadRadius: 1.0,
              blurRadius: 6.0,
            ),
          ]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              CircleAvatar(
                backgroundColor: Colors.grey,
                backgroundImage: NetworkImage(
                    "https://cdn.pixabay.com/photo/2016/07/06/16/22/debt-1500774_960_720.png"),
                radius: 36,
              ),
              SizedBox(width: 10.0),
              Column(
                children: <Widget>[
                  RichText(
                      text: TextSpan(
                          text: 'Assets\n',
                          style: TextStyle(
                            color: Colors.red,
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            height: 1.3,
                          ),
                          children: <TextSpan>[
                        TextSpan(
                            text: 'LOAN HANDLING',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            )),
                      ])),
                  SizedBox(height: 6.0),
                  RaisedButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => LoanPage()));
                    },
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(80.0),
                    ),
                    padding: const EdgeInsets.all(0.0),
                    child: Ink(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                            colors: [Colors.redAccent, Colors.red]),
                        borderRadius: BorderRadius.all(Radius.circular(80.0)),
                      ),
                      child: Container(
                          constraints: BoxConstraints(
                            minHeight: 36,
                            minWidth: 88,
                          ),
                          alignment: Alignment.center,
                          child: Text('Manage',
                              style: TextStyle(
                                fontWeight: FontWeight.w300,
                                fontSize: 17,
                                color: Colors.white,
                              ))),
                    ),
                  )
                ],
              )
            ],
          ),
          Icon(
            Icons.assessment,
            color: Colors.red,
            size: 36,
          )
        ],
      ),
    );
  }

  _buildForthAssets() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 14, horizontal: 18),
      margin: EdgeInsets.only(bottom: 20.0),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              spreadRadius: 1.0,
              blurRadius: 6.0,
            ),
          ]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              CircleAvatar(
                backgroundColor: Colors.grey,
                backgroundImage: NetworkImage(
                    "https://cdn.pixabay.com/photo/2014/07/10/10/19/steps-388914_960_720.jpg"),
                radius: 36,
              ),
              SizedBox(width: 10.0),
              Column(
                children: <Widget>[
                  RichText(
                      text: TextSpan(
                          text: 'Assets\n',
                          style: TextStyle(
                            color: Colors.red,
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            height: 1.3,
                          ),
                          children: <TextSpan>[
                        TextSpan(
                            text: 'PLAN FOR FUTURE',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            )),
                      ])),
                  SizedBox(height: 6.0),
                  RaisedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => FuturePlanPage()));
                    },
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(80.0),
                    ),
                    padding: const EdgeInsets.all(0.0),
                    child: Ink(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                            colors: [Colors.redAccent, Colors.red]),
                        borderRadius: BorderRadius.all(Radius.circular(80.0)),
                      ),
                      child: Container(
                          constraints: BoxConstraints(
                            minHeight: 36,
                            minWidth: 88,
                          ),
                          alignment: Alignment.center,
                          child: Text('Manage',
                              style: TextStyle(
                                fontWeight: FontWeight.w300,
                                fontSize: 17,
                                color: Colors.white,
                              ))),
                    ),
                  )
                ],
              )
            ],
          ),
          Icon(
            Icons.assessment,
            color: Colors.red,
            size: 36,
          )
        ],
      ),
    );
  }

  _buildFifthAssets() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 14, horizontal: 18),
      margin: EdgeInsets.only(bottom: 20.0),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              spreadRadius: 1.0,
              blurRadius: 6.0,
            ),
          ]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              CircleAvatar(
                backgroundColor: Colors.grey,
                backgroundImage: NetworkImage(
                    "https://cdn.pixabay.com/photo/2016/06/01/08/40/money-1428594_960_720.jpg"),
                radius: 36,
              ),
              SizedBox(width: 10.0),
              Column(
                children: <Widget>[
                  RichText(
                      text: TextSpan(
                          text: 'Assets\n',
                          style: TextStyle(
                            color: Colors.red,
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            height: 1.3,
                          ),
                          children: <TextSpan>[
                        TextSpan(
                            text: 'SAVINGS',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            )),
                      ])),
                  SizedBox(height: 6.0),
                  RaisedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SavingsPage()));
                    },
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(80.0),
                    ),
                    padding: const EdgeInsets.all(0.0),
                    child: Ink(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                            colors: [Colors.redAccent, Colors.red]),
                        borderRadius: BorderRadius.all(Radius.circular(80.0)),
                      ),
                      child: Container(
                          constraints: BoxConstraints(
                            minHeight: 36,
                            minWidth: 88,
                          ),
                          alignment: Alignment.center,
                          child: Text('Manage',
                              style: TextStyle(
                                fontWeight: FontWeight.w300,
                                fontSize: 17,
                                color: Colors.white,
                              ))),
                    ),
                  )
                ],
              )
            ],
          ),
          Icon(
            Icons.assessment,
            color: Colors.red,
            size: 36,
          )
        ],
      ),
    );
  }

  _buildSeventhAssets() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 14, horizontal: 18),
      margin: EdgeInsets.only(bottom: 20.0),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              spreadRadius: 1.0,
              blurRadius: 6.0,
            ),
          ]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              CircleAvatar(
                backgroundColor: Colors.grey,
                backgroundImage: NetworkImage(
                    "https://cdn.pixabay.com/photo/2017/08/30/07/56/money-2696228_960_720.jpg"),
                radius: 36,
              ),
              SizedBox(width: 10.0),
              Column(
                children: <Widget>[
                  RichText(
                      text: TextSpan(
                          text: 'Assets\n',
                          style: TextStyle(
                            color: Colors.red,
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            height: 1.3,
                          ),
                          children: <TextSpan>[
                        TextSpan(
                            text: 'INVESTMENT',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            )),
                      ])),
                  SizedBox(height: 6.0),
                  RaisedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => InvestmentBalancePage()));
                    },
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(80.0),
                    ),
                    padding: const EdgeInsets.all(0.0),
                    child: Ink(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                            colors: [Colors.redAccent, Colors.red]),
                        borderRadius: BorderRadius.all(Radius.circular(80.0)),
                      ),
                      child: Container(
                          constraints: BoxConstraints(
                            minHeight: 36,
                            minWidth: 88,
                          ),
                          alignment: Alignment.center,
                          child: Text('Manage',
                              style: TextStyle(
                                fontWeight: FontWeight.w300,
                                fontSize: 17,
                                color: Colors.white,
                              ))),
                    ),
                  )
                ],
              )
            ],
          ),
          Icon(
            Icons.assessment,
            color: Colors.red,
            size: 36,
          )
        ],
      ),
    );
  }

  _buildSixthAssets() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 14, horizontal: 18),
      margin: EdgeInsets.only(bottom: 20.0),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              spreadRadius: 1.0,
              blurRadius: 6.0,
            ),
          ]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              CircleAvatar(
                backgroundColor: Colors.grey,
                backgroundImage: NetworkImage(
                    "https://cdn.pixabay.com/photo/2017/06/27/11/48/team-spirit-2447163_960_720.jpg"),
                radius: 36,
              ),
              SizedBox(width: 10.0),
              Column(
                children: <Widget>[
                  RichText(
                      text: TextSpan(
                          text: 'Assets\n',
                          style: TextStyle(
                            color: Colors.red,
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            height: 1.3,
                          ),
                          children: <TextSpan>[
                        TextSpan(
                            text: 'FAMILY & SPENDING',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            )),
                      ])),
                  SizedBox(height: 6.0),
                  RaisedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => FamilyPage()));
                    },
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(80.0),
                    ),
                    padding: const EdgeInsets.all(0.0),
                    child: Ink(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                            colors: [Colors.redAccent, Colors.red]),
                        borderRadius: BorderRadius.all(Radius.circular(80.0)),
                      ),
                      child: Container(
                          constraints: BoxConstraints(
                            minHeight: 36,
                            minWidth: 88,
                          ),
                          alignment: Alignment.center,
                          child: Text('Manage',
                              style: TextStyle(
                                fontWeight: FontWeight.w300,
                                fontSize: 17,
                                color: Colors.white,
                              ))),
                    ),
                  )
                ],
              )
            ],
          ),
          Icon(
            Icons.assessment,
            color: Colors.red,
            size: 36,
          )
        ],
      ),
    );
  }
}
