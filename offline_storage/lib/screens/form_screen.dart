import 'package:flutter/material.dart';
import 'package:offline_storage/screens/update.dart';
import 'package:realm/realm.dart';

class Name {
  @RealmProperty(primaryKey: true)
  String firstName;
}

class FormScreen extends StatefulWidget {
  @override
  _FormScreenState createState() => _FormScreenState();
}

class _FormScreenState extends State<FormScreen> {
  String firstName, phone;
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

  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
            child: Form(
          key: _formkey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(bottom: 15, left: 10, right: 10),
                child: TextFormField(
                  keyboardType: TextInputType.text,
                  decoration: buildInputDecoration(Icons.person, "First Name"),
                  validator: (String value) {
                    if (value.isEmpty) {
                      return 'Please Enter FirstName';
                    }
                    if (!RegExp("^[a-zA-Z0-9+_.-]").hasMatch(value)) {
                      return 'Please enter a FirstName';
                    }
                    return null;
                  },
                  onSaved: (String value) {
                    firstName = value;
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 10, right: 10, bottom: 15),
                child: TextFormField(
                  keyboardType: TextInputType.number,
                  decoration: buildInputDecoration(Icons.phone, 'Mobile No'),
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
                padding: EdgeInsets.only(left: 10, right: 10, bottom: 15),
                child: TextFormField(
                  controller: password,
                  keyboardType: TextInputType.text,
                  decoration: buildInputDecoration(Icons.lock, 'Password'),
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
                child: ElevatedButton(
                  child: Text(
                    'Submit',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                    ),
                  ),
                  onPressed: () {
                    if (_formkey.currentState.validate())
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Update()));
                  },
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                ),
              ),
            ],
          ),
        )),
      ),
    );
  }
}
