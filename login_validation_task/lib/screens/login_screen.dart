import 'package:flutter/material.dart';
import 'package:login_validation_task/screens/horizontal_vertical_screens.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  String email, phone;
  TextEditingController password = TextEditingController();

  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();

  InputDecoration buildInputDecoration(IconData icons, String hinttext) {
    return InputDecoration(
      hintText: hinttext,
      prefixIcon: Icon(icons),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(25.0),
      ),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(25.0),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(25.0),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Form(
            key: _formkey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 70,
                  backgroundImage: AssetImage('images/developer.jpg'),
                ),
                SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 15, left: 10, right: 10),
                  child: TextFormField(
                    keyboardType: TextInputType.text,
                    decoration: buildInputDecoration(Icons.email, "Email"),
                    validator: (String value) {
                      if (value.isEmpty) {
                        return 'Please Enter Email';
                      }
                      if (!RegExp("^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]")
                          .hasMatch(value)) {
                        return 'Please enter a valid Email';
                      }
                      return null;
                    },
                    onSaved: (String value) {
                      email = value;
                    },
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 15, left: 10, right: 10),
                  child: TextFormField(
                    keyboardType: TextInputType.number,
                    decoration: buildInputDecoration(Icons.phone, "Mobile No"),
                    validator: (String value) {
                      if (value.isEmpty) {
                        return 'Please Enter Mobile No ';
                      }

                      return null;
                    },
                    onSaved: (String value) {
                      phone = value;
                    },
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 15, left: 10, right: 10),
                  child: TextFormField(
                    controller: password,
                    keyboardType: TextInputType.text,
                    decoration: buildInputDecoration(Icons.lock, "Password"),
                    validator: (String value) {
                      if (value.isEmpty) {
                        return 'Please Enter Password';
                      }

                      return null;
                    },
                  ),
                ),
                SizedBox(
                  width: 200,
                  height: 50,

                  // ignore: deprecated_member_use
                  child: RaisedButton(
                    color: Colors.blue,
                    onPressed: () {
                      if (_formkey.currentState.validate())
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HorizontalVertical()));
                    },
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50.0),
                        side: BorderSide(color: Colors.blue, width: 2)),
                    textColor: Colors.white,
                    child: Text("Login"),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
