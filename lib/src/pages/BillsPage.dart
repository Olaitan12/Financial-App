import 'package:financial_money_app/src/files/DailyBills.dart';
import 'package:financial_money_app/src/files/MonthlyBills.dart';
import 'package:financial_money_app/src/files/YearlyBills.dart';
import 'package:financial_money_app/src/pages/accountDetailsPage.dart';
import 'package:financial_money_app/src/pages/profilePage.dart';
import 'package:flutter/material.dart';
import 'package:line_awesome_icons/line_awesome_icons.dart';
import 'InvestmentBalance.dart';
import 'PlanedAssetsPage.dart';

class BillsPage extends StatefulWidget {
  @override
  _BillsPageState createState() => _BillsPageState();
}

class _BillsPageState extends State<BillsPage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MANAGE & GROW YOUR INCOME')
      ),
      key: _scaffoldKey,
      drawer: Drawer(
      child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text('MANAGE & GROW YOUR INCOME',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.tealAccent,
                )
              ),
              decoration: BoxDecoration(
                color: Colors.red,
              ),
            ),
            ListTile(
              title: Text('EDIT PROFILE'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ProfilePage(),
                  ),
                );
              },
            ),
            ListTile(
              title: Text('ACCOUNT DETAILS'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AccountDetailsPage(),
                  ),
                );
              },
            ),
            ListTile(
              title: Text('PLANNED ASSETS'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PlannedAssetsPage(),
                  ),
                );
              },
            ),
            ListTile(
              title: Text('INVESTMENT BALANCE'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => InvestmentBalancePage(),
                  ),
                );
              },
            ),
            ListTile(
              title: Text('CUSTOMER SERVICE'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      backgroundColor: Colors.amber,
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
                    _buildBillsList('Bills Like:'),
                    _buildDailyBills(),
                    _buildMonthlyBills(),
                    _buildYearlyBills(),
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
        _buildBillsAsset(),
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
            height: 5.0,
          ),
          Text(
            "PAYMENT OF BILLS!!!",
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w300,
            ),
          ),
        ],
      ),
    );
  }

  _buildBillsAsset() {
    return Positioned(
      bottom: -30,
      child: Container(
          height: 50,
          width: MediaQuery.of(context).size.width - 40,
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(25)),
              boxShadow: [
                BoxShadow(
                  color: Colors.black12,
                  spreadRadius: 5.8,
                  blurRadius: 10.8,
                )
              ]),
          child: Text(
            'PLAN YOUR BILLS WITH THE APP',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          )),
    );
  }

  _buildBillsList(title) {
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

  _buildDailyBills() {
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
                          text: 'DAILY BILLS\n',
                          style: TextStyle(
                            color: Colors.red,
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                            height: 1.3,
                          ),
                          children: <TextSpan>[
                        TextSpan(
                            text: 'STIPEND',
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
                              builder: (context) => DailyBills()));
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
            LineAwesomeIcons.money,
            color: Colors.red,
            size: 36,
          )
        ],
      ),
    );
  }

  _buildMonthlyBills() {
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
                          text: 'MONTHLY BILLS\n',
                          style: TextStyle(
                            color: Colors.red,
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                            height: 1.3,
                          ),
                          children: <TextSpan>[
                        TextSpan(
                            text: 'Nepa Bills, \nDSTV & Data Subscription',
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
                              builder: (context) => MonthlyBills()));
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
            LineAwesomeIcons.money,
            color: Colors.red,
            size: 36,
          )
        ],
      ),
    );
  }

  _buildYearlyBills() {
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
                          text: 'YEARLY BILLS\n',
                          style: TextStyle(
                            color: Colors.red,
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                            height: 1.3,
                          ),
                          children: <TextSpan>[
                        TextSpan(
                            text: 'House Rent, \nShop Rent & School Fees',
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
                              builder: (context) => YearlyBills()));
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
            LineAwesomeIcons.money,
            color: Colors.red,
            size: 36,
          )
        ],
      ),
    );
  }
}
