import 'package:flutter/material.dart';
import 'package:go_mall_flutter_app/pages/signup.page.dart';

import 'home.page.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Container(
        color: Color(0xFFF5F5F5),
        padding: EdgeInsets.only(top: 80, left: 20, right: 20, bottom: 40),
        child: Column(
          children: <Widget>[
            Container(
              height: 450,
              decoration: BoxDecoration(color: Colors.white, boxShadow: [
                new BoxShadow(
                  color: Colors.black12,
                  offset: new Offset(1, 2.0),
                  blurRadius: 5,
                  spreadRadius: 1,
                ),
              ]),
              child: Padding(
                padding: EdgeInsets.only(left: 15, right: 15, top: 60),
                child: Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Column(
                          children: <Widget>[
                            Text(
                              "Welcome",
                              style: TextStyle(
                                  fontSize: 30, fontWeight: FontWeight.w500),
                            ),
                            Text("Sign-in to continue")
                          ],
                        ),
                        FlatButton(
                            child: Text("Sign-up"),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => SignupPage(),
                                ),
                              );
                            })
                      ],
                    ),
                    SizedBox(
                      height: 60,
                    ),
                    TextFormField(
                      autofocus: true,
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        labelText: "E-mail",
                        labelStyle: TextStyle(
                          color: Theme.of(context).primaryColor,
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                        ),
                      ),
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      autofocus: true,
                      keyboardType: TextInputType.text,
                      obscureText: true,
                      decoration: InputDecoration(
                        labelText: "Password",
                        labelStyle: TextStyle(
                          color: Theme.of(context).primaryColor,
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                        ),
                      ),
                      style: TextStyle(fontSize: 20),
                    ),
                    Container(
                      alignment: Alignment.centerRight,
                      height: 40,
                      child: FlatButton(
                        onPressed: () {},
                        child: Text("Forgot your password?"),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Theme.of(context).primaryColor,
                        borderRadius: BorderRadius.all(
                          Radius.circular(5),
                        ),
                      ),
                      child: FlatButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => HomePage(),
                            ),
                          );
                        },
                        child: Text(
                          "Sign In",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 15, bottom: 15),
              child: Text(
                "- OR -",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ),
            Container(
              width: double.infinity,
              height: 60,
              decoration: BoxDecoration(
                border: Border.all(
                  width: 2.0,
                  color: Theme.of(context).primaryColor,
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(5),
                ),
              ),
              child: FlatButton(
                onPressed: () {},
                child: Row(
                  children: <Widget>[
                    Container(
                      height: 24,
                      width: 100,
                      child: Image.asset(
                        "assets/facebook.png",
                      ),
                    ),
                    Text("Sign In with faceboook")
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              width: double.infinity,
              height: 60,
              decoration: BoxDecoration(
                border: Border.all(
                  width: 2.0,
                  color: Theme.of(context).primaryColor,
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(5),
                ),
              ),
              child: FlatButton(
                onPressed: () {},
                child: Row(
                  children: <Widget>[
                    Container(
                      height: 24,
                      width: 100,
                      child: Image.asset(
                        "assets/google.png",
                      ),
                    ),
                    Text("Sign In with Google")
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    ));
  }
}
