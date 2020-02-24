import 'package:flutter/material.dart';
import 'package:line_awesome_icons/line_awesome_icons.dart';

class MonthlyBills extends StatefulWidget {
  @override
  _MonthlyBillsState createState() => _MonthlyBillsState();
}

class MyData{
  String earnings = '';
  String bills = '';
  String percent = '';
}

class _MonthlyBillsState extends State<MonthlyBills> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("MONTHLY BILLS"),
        centerTitle: true,
      ),
      body: StepperBody(),
    );
  }
}

class StepperBody extends StatefulWidget {
  @override
  _StepperBodyState createState() => _StepperBodyState();
}

class _StepperBodyState extends State<StepperBody> {
  @override
  int currStep = 0;
  static var _focusNode = FocusNode();
  GlobalKey<FormState> _formKey = new GlobalKey<FormState>();
  static MyData data = MyData();

  @override
  void initState() { 
    super.initState();
    _focusNode.addListener(() {
      setState(() {
        
      });
      print('Has focus: $_focusNode.hasFocus');
    });
  }

  @override
  void dispose() {
    _focusNode.dispose();
    super.dispose();
  }

  List<Step> steps = [
    Step (
      title: Text("Earnings"),
      isActive: true,
      state: StepState.indexed,
      content: TextFormField(
        focusNode: _focusNode,
        keyboardType: TextInputType.text,
        autocorrect: false,
        onSaved: (String value) {
          data.earnings = value;
        },
        maxLines: 2,
        validator: (value){
          if (value.isEmpty || value.length <1 ) {
            return 'Please enter your earnings';
          }
        },
        decoration: InputDecoration(
          labelText: 'How much do you earn Monthly?',
          hintText: 'Enter your Monthly Earnings',
          icon: Icon(LineAwesomeIcons.money),
          labelStyle: TextStyle(
            decorationStyle: TextDecorationStyle.solid
          )
        ),
      )
    ),

    Step(
      title: Text('Bills'),
      isActive: true,
      state: StepState.indexed,
      content: TextFormField(
        keyboardType: TextInputType.number,
        autocorrect: false,
        validator: (value){
          if(value.isEmpty || value.length < 6){
            return 'Please enter valid amount';
          }
        },
        onSaved: (String value) {
          data.bills = value;
        },
        maxLines: 1,
        decoration: InputDecoration(
          labelText: 'How much is the Monthly Bill?',
          hintText: 'Monthly Bill?',
          icon: Icon(LineAwesomeIcons.money),
          labelStyle: TextStyle(decorationStyle: TextDecorationStyle.solid)
        ),
      )
    ),
    Step(
      title: Text('Percentage'),
      isActive: true,
      state: StepState.indexed,
      content: TextFormField(
        keyboardType: TextInputType.number,
        autocorrect: false,
        validator: (value){
          if (value.isEmpty || value.length >2) {
            return 'Please enter valid percentage';
          }
        },
        maxLines: 1,
        onSaved: (String value) {
          data.percent = value;
        },
        decoration: InputDecoration(
          labelText: 'Enter your percentage',
          hintText: 'Bills Percentage',
          icon: Icon(LineAwesomeIcons.money),
          labelStyle: TextStyle(
            decorationStyle: TextDecorationStyle.solid
          )
        ),
      )
    )
  ];

  @override
  Widget build(BuildContext context) {
    void showSnackBarMessage(String message,
      [MaterialColor color = Colors.red]) {
        Scaffold
            .of(context)
            .showSnackBar(SnackBar(content: Text(message)));
      }

      void _submitDetails() {
        final FormState formState = _formKey.currentState;

        if(!formState.validate()) {
          showSnackBarMessage('Please enter correct data');
        } else {
          formState.save();
          print("Earnings: ${data.earnings}");
          print("Bills: ${data.bills}");
          print("Percentage ${data.percent}");

          showDialog(
            context: context,
            child: AlertDialog(
              title: Text("Details"),
              content: SingleChildScrollView(
                child: ListBody(
                  children: <Widget>[
                    Text("Earnings: " + data.earnings),
                    Text("Bills: " + data.bills),
                    Text("Percentage: " + data.percent),
                  ],
                ),
              ),
              actions: <Widget>[
                FlatButton(
                  child: Text("OK"),
                  onPressed: (){
                    Navigator.of(context).pop();
                  },
                )
              ],
            )
          );
        }
      }
    return Container(
      child: Form(
        key: _formKey,
        child: ListView(
          children: <Widget>[
            Stepper(
              steps: steps,
              type: StepperType.vertical,
              currentStep: this.currStep,
              onStepContinue: () {
                setState(() {
                  if (currStep < steps.length - 1){
                    currStep = currStep +1;
                  } else {
                    currStep = 0;
                  }
                });
              },
              onStepCancel: () {
                setState(() {
                  if (currStep > 0){
                    currStep = currStep - 1;
                  } else {
                    currStep = 0;
                  }
                });
              },
              onStepTapped: (step) {
                setState(() {
                  currStep = step;
                });
              },
            ),
            SizedBox(
              width: 5.0
            ),
            RaisedButton(
              child: Text("Save Details",
              style: TextStyle(color: Colors.white),
              ),
              onPressed: _submitDetails,
              color: Colors.red,
            )
          ],
        ),
      )
    );
  }
}