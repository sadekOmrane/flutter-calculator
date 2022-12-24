import 'package:flutter/material.dart';

class MyCalculator extends StatelessWidget {
  const MyCalculator({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: MyCustomForm(),
    );
  }
}

// Define a custom Form widget.
class MyCustomForm extends StatefulWidget {
  const MyCustomForm({super.key});

  @override
  MyCustomFormState createState() {
    return MyCustomFormState();
  }
}

// Define a corresponding State class.
// This class holds data related to the form.
class MyCustomFormState extends State<MyCustomForm> {
  // Create a global key that uniquely identifies the Form widget
  // and allows validation of the form.
  //
  // Note: This is a `GlobalKey<FormState>`,
  // not a GlobalKey<MyCustomFormState>.
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    // Build a Form widget using the _formKey created above.
    var screen = new TextEditingController();
    double value = 0;
    var operation = "";
    return Form(
      key: _formKey,
      child: Column(
        children: <Widget>[
          TextFormField(
            readOnly: true,
            controller: screen,
            keyboardType: TextInputType.numberWithOptions(),
            style: TextStyle(fontSize: 80, color: Colors.white),
            textAlign: TextAlign.end,
            decoration: InputDecoration(
                contentPadding: EdgeInsets.fromLTRB(10, 240, 10, 0),
                border: InputBorder.none),
          ),
          Row(
            children: [
              Expanded(
                  child: ElevatedButton(
                onPressed: () {
                  screen.text = "";
                  value = 0;
                  operation = "";
                },
                child: Text(
                  "C",
                  style: TextStyle(fontSize: 35),
                ),
                style: ElevatedButton.styleFrom(
                  fixedSize: Size(90, 90),
                  shape: CircleBorder(),
                  padding: EdgeInsets.all(20),
                  backgroundColor:
                      Color.fromARGB(255, 178, 178, 178), // <-- Button color
                  foregroundColor: Colors.black, // <-- Splash color
                ),
              )),
              Expanded(
                  child: ElevatedButton(
                onPressed: () {
                  if (screen.text.startsWith("-"))
                    value = double.parse(screen.text.substring(1));
                  else
                    value = -double.parse(screen.text);
                  screen.text = value.toString();
                },
                child: Text(
                  "+/-",
                  style: TextStyle(fontSize: 35),
                ),
                style: ElevatedButton.styleFrom(
                  fixedSize: Size(90, 90),
                  shape: CircleBorder(),
                  padding: EdgeInsets.all(20),
                  backgroundColor: Color.fromARGB(255, 178, 178, 178),
                  foregroundColor: Colors.black, // <-- Splash color
                ),
              )),
              Expanded(
                  child: ElevatedButton(
                onPressed: () {
                  value = double.parse(screen.text) / 100;
                  screen.text = value.toString();
                },
                child: Text(
                  "%",
                  style: TextStyle(fontSize: 35),
                ),
                style: ElevatedButton.styleFrom(
                  fixedSize: Size(90, 90),
                  shape: CircleBorder(),
                  padding: EdgeInsets.all(20),
                  backgroundColor: Color.fromARGB(255, 178, 178, 178),
                  foregroundColor: Colors.black, // <-- Splash color
                ),
              )),
              Expanded(
                  child: ElevatedButton(
                onPressed: () {
                  value = double.parse(screen.text);
                  operation = "/";
                  screen.text = "";
                },
                child: Text(
                  "/",
                  style: TextStyle(fontSize: 35),
                ),
                style: ElevatedButton.styleFrom(
                  fixedSize: Size(90, 90),
                  shape: CircleBorder(),
                  padding: EdgeInsets.all(20),
                  backgroundColor:
                      Color.fromARGB(255, 255, 153, 0), // <-- Button color
                  foregroundColor: Colors.white, // <-- Splash color
                ),
              )),
            ],
          ),
          Divider(
            height: 15,
          ),
          Row(
            children: [
              Expanded(
                  child: ElevatedButton(
                onPressed: () {
                  screen.text += "7";
                  value = double.parse(screen.text);
                },
                child: Text(
                  "7",
                  style: TextStyle(fontSize: 35, color: Colors.white),
                ),
                style: ElevatedButton.styleFrom(
                  fixedSize: Size(90, 90),
                  shape: CircleBorder(),
                  padding: EdgeInsets.all(20),
                  backgroundColor:
                      Color.fromARGB(255, 77, 75, 75), // <-- Button color
                  foregroundColor: Colors.black, // <-- Splash color
                ),
              )),
              Expanded(
                  child: ElevatedButton(
                onPressed: () {
                  screen.text += "8";
                },
                child: Text(
                  "8",
                  style: TextStyle(fontSize: 35, color: Colors.white),
                ),
                style: ElevatedButton.styleFrom(
                  fixedSize: Size(90, 90),
                  shape: CircleBorder(),
                  padding: EdgeInsets.all(20),
                  backgroundColor:
                      Color.fromARGB(255, 77, 75, 75), // <-- Button color
                  foregroundColor: Colors.black, // <-- Splash color
                ),
              )),
              Expanded(
                  child: ElevatedButton(
                onPressed: () {
                  screen.text += "9";
                },
                child: Text(
                  "9",
                  style: TextStyle(fontSize: 35, color: Colors.white),
                ),
                style: ElevatedButton.styleFrom(
                  fixedSize: Size(90, 90),
                  shape: CircleBorder(),
                  padding: EdgeInsets.all(20),
                  backgroundColor:
                      Color.fromARGB(255, 77, 75, 75), // <-- Button color
                  foregroundColor: Colors.black, // <-- Splash color
                ),
              )),
              Expanded(
                  child: ElevatedButton(
                onPressed: () {
                  value = double.parse(screen.text);
                  operation = "*";
                  screen.text = "";
                },
                child: Text(
                  "x",
                  style: TextStyle(fontSize: 35),
                ),
                style: ElevatedButton.styleFrom(
                  fixedSize: Size(90, 90),
                  shape: CircleBorder(),
                  padding: EdgeInsets.all(20),
                  backgroundColor:
                      Color.fromARGB(255, 255, 153, 0), // <-- Button color
                  foregroundColor: Colors.white, // <-- Splash color
                ),
              )),
            ],
          ),
          Divider(
            height: 15,
          ),
          Row(
            children: [
              Expanded(
                  child: ElevatedButton(
                onPressed: () {
                  screen.text += "4";
                },
                child: Text(
                  "4",
                  style: TextStyle(fontSize: 35, color: Colors.white),
                ),
                style: ElevatedButton.styleFrom(
                  fixedSize: Size(90, 90),
                  shape: CircleBorder(),
                  padding: EdgeInsets.all(20),
                  backgroundColor:
                      Color.fromARGB(255, 77, 75, 75), // <-- Button color
                  foregroundColor: Colors.black, // <-- Splash color
                ),
              )),
              Expanded(
                  child: ElevatedButton(
                onPressed: () {
                  screen.text += "5";
                },
                child: Text(
                  "5",
                  style: TextStyle(fontSize: 35, color: Colors.white),
                ),
                style: ElevatedButton.styleFrom(
                  fixedSize: Size(90, 90),
                  shape: CircleBorder(),
                  padding: EdgeInsets.all(20),
                  backgroundColor:
                      Color.fromARGB(255, 77, 75, 75), // <-- Button color
                  foregroundColor: Colors.black, // <-- Splash color
                ),
              )),
              Expanded(
                  child: ElevatedButton(
                onPressed: () {
                  screen.text += "6";
                },
                child: Text(
                  "6",
                  style: TextStyle(fontSize: 35, color: Colors.white),
                ),
                style: ElevatedButton.styleFrom(
                  fixedSize: Size(90, 90),
                  shape: CircleBorder(),
                  padding: EdgeInsets.all(20),
                  backgroundColor:
                      Color.fromARGB(255, 77, 75, 75), // <-- Button color
                  foregroundColor: Colors.black, // <-- Splash color
                ),
              )),
              Expanded(
                  child: ElevatedButton(
                onPressed: () {
                  value = double.parse(screen.text);
                  operation = "-";
                  screen.text = "";
                },
                child: Text(
                  "-",
                  style: TextStyle(fontSize: 35),
                ),
                style: ElevatedButton.styleFrom(
                  fixedSize: Size(90, 90),
                  shape: CircleBorder(),
                  padding: EdgeInsets.all(20),
                  backgroundColor:
                      Color.fromARGB(255, 255, 153, 0), // <-- Button color
                  foregroundColor: Colors.white, // <-- Splash color
                ),
              )),
            ],
          ),
          Divider(
            height: 15,
          ),
          Row(
            children: [
              Expanded(
                  child: ElevatedButton(
                onPressed: () {
                  screen.text += "1";
                },
                child: Text(
                  "1",
                  style: TextStyle(fontSize: 35, color: Colors.white),
                ),
                style: ElevatedButton.styleFrom(
                  fixedSize: Size(90, 90),
                  shape: CircleBorder(),
                  padding: EdgeInsets.all(20),
                  backgroundColor:
                      Color.fromARGB(255, 77, 75, 75), // <-- Button color
                  foregroundColor: Colors.black, // <-- Splash color
                ),
              )),
              Expanded(
                  child: ElevatedButton(
                onPressed: () {
                  screen.text += "2";
                },
                child: Text(
                  "2",
                  style: TextStyle(fontSize: 35, color: Colors.white),
                ),
                style: ElevatedButton.styleFrom(
                  fixedSize: Size(90, 90),
                  shape: CircleBorder(),
                  padding: EdgeInsets.all(20),
                  backgroundColor:
                      Color.fromARGB(255, 77, 75, 75), // <-- Button color
                  foregroundColor: Colors.black, // <-- Splash color
                ),
              )),
              Expanded(
                  child: ElevatedButton(
                onPressed: () {
                  screen.text += "3";
                },
                child: Text(
                  "3",
                  style: TextStyle(fontSize: 35, color: Colors.white),
                ),
                style: ElevatedButton.styleFrom(
                  fixedSize: Size(90, 90),
                  shape: CircleBorder(),
                  padding: EdgeInsets.all(20),
                  backgroundColor:
                      Color.fromARGB(255, 77, 75, 75), // <-- Button color
                  foregroundColor: Colors.black, // <-- Splash color
                ),
              )),
              Expanded(
                  child: ElevatedButton(
                onPressed: () {
                  value = double.parse(screen.text);
                  operation = "+";
                  screen.text = "";
                },
                child: Text(
                  "+",
                  style: TextStyle(fontSize: 35),
                ),
                style: ElevatedButton.styleFrom(
                  fixedSize: Size(90, 90),
                  shape: CircleBorder(),
                  padding: EdgeInsets.all(20),
                  backgroundColor:
                      Color.fromARGB(255, 255, 153, 0), // <-- Button color
                  foregroundColor: Colors.white, // <-- Splash color
                ),
              )),
            ],
          ),
          Divider(
            height: 15,
          ),
          Row(
            children: [
              Expanded(
                  flex: 2,
                  child: ElevatedButton(
                    onPressed: () {
                      screen.text += "0";
                    },
                    child: Text(
                      "0",
                      style: TextStyle(fontSize: 35, color: Colors.white),
                    ),
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50.0),
                              // ignore: prefer_const_constructors
                              side: BorderSide())),
                      backgroundColor: MaterialStateProperty.all<Color>(
                        Color.fromARGB(255, 77, 75, 75),
                      ),
                      fixedSize: MaterialStateProperty.all<Size>(Size(50, 80)),
                      // <-- Splash color
                    ),
                  )),
              Expanded(
                  child: ElevatedButton(
                onPressed: () {
                  screen.text += ".";
                },
                child: Text(
                  ",",
                  style: TextStyle(fontSize: 35, color: Colors.white),
                ),
                style: ElevatedButton.styleFrom(
                  fixedSize: Size(90, 90),
                  shape: CircleBorder(),
                  padding: EdgeInsets.all(20),
                  backgroundColor:
                      Color.fromARGB(255, 77, 75, 75), // <-- Button color
                  foregroundColor: Colors.black, // <-- Splash color
                ),
              )),
              Expanded(
                  child: ElevatedButton(
                onPressed: () {
                  switch (operation) {
                    case "/":
                      value = value / double.parse(screen.text);
                      screen.text = value.toString();
                      break;
                    case "*":
                      value = value * double.parse(screen.text);
                      screen.text = value.toString();
                      break;
                    case "-":
                      value = value - double.parse(screen.text);
                      screen.text = value.toString();
                      break;
                    case "+":
                      value = value + double.parse(screen.text);
                      screen.text = value.toString();
                      break;
                    default:
                  }
                },
                child: Text(
                  "=",
                  style: TextStyle(fontSize: 35, color: Colors.white),
                ),
                style: ElevatedButton.styleFrom(
                  fixedSize: Size(90, 90),
                  shape: CircleBorder(),
                  padding: EdgeInsets.all(20),
                  backgroundColor:
                      Color.fromARGB(255, 255, 153, 0), // <-- Button color
                  foregroundColor: Colors.black, // <-- Splash color
                ),
              )),
            ],
          )
        ],
      ),
    );
  }
}
