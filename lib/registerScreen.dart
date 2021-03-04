import 'package:flutter/material.dart';

class RegisterPageTD extends StatefulWidget {
  @override
  _RegisterPageTD createState() => _RegisterPageTD();
}

class _RegisterPageTD extends State<RegisterPageTD> {
  Widget _buildEmailRow() {
    return Padding(
        padding: EdgeInsets.fromLTRB(
          30.0,
          75.0,
          30.0,
          0.0,
        ),
        child: TextFormField(
          keyboardType: TextInputType.visiblePassword,
          textAlign: TextAlign.center,
          decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.transparent),
                borderRadius: BorderRadius.all(Radius.circular(19))),
            prefixIcon: Icon(
              Icons.lock,
              color: Colors.blueGrey[800],
            ),
            labelText: 'Email',
            filled: true,
            fillColor: Colors.grey[100],
          ),
        ));
  }

  Widget _buildUserRow() {
    return Padding(
        padding: EdgeInsets.fromLTRB(
          30.0,
          10.0,
          30.0,
          0.0,
        ),
        child: TextFormField(
          keyboardType: TextInputType.visiblePassword,
          decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.transparent),
                borderRadius: BorderRadius.all(Radius.circular(19))),
            prefixIcon: Icon(
              Icons.person,
              color: Colors.blueGrey[800],
            ),
            labelText: "User",
            filled: true,
            fillColor: Colors.grey[100],
          ),
          obscureText: true,
        ));
  }

  Widget _buildPasswordRow() {
    return Padding(
        padding: EdgeInsets.fromLTRB(
          30.0,
          10.0,
          30.0,
          20.0,
        ),
        child: TextFormField(
          keyboardType: TextInputType.visiblePassword,
          decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.transparent),
                borderRadius: BorderRadius.all(Radius.circular(19))),
            prefixIcon: Icon(
              Icons.lock,
              color: Colors.blueGrey[800],
            ),
            labelText: 'Password',
            filled: true,
            fillColor: Colors.grey[100],
          ),
          obscureText: true,
        ));
  }

  Widget _buildRegisterButton() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          height: 1.4 * (MediaQuery.of(context).size.height / 20),
          width: 3 * (MediaQuery.of(context).size.width / 7),
          margin: EdgeInsets.only(bottom: 20),
          child: RaisedButton(
            elevation: 5.0,
            color: Colors.blueGrey[800],
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(19),
            ),
            onPressed: () {},
            child: Text(
              "Register",
              style: TextStyle(
                color: Colors.white,
                letterSpacing: 1.5,
                fontSize: MediaQuery.of(context).size.height / 40,
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildContainer() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        ClipRRect(
          borderRadius: BorderRadius.all(
            Radius.circular(50),
          ),
          child: Container(
            height: MediaQuery.of(context).size.height * 0.80,
            width: MediaQuery.of(context).size.width * 0.8,
            decoration: BoxDecoration(
              color: Colors.white,
            ),
            padding: EdgeInsets.only(top: 45),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "HELLO",
                      style: TextStyle(
                        fontFamily: 'Lemonada',
                        fontSize: MediaQuery.of(context).size.height / 11.5,
                        color: Colors.blueGrey[800],
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "Sign in with your account",
                      style: TextStyle(
                        fontFamily: 'Monoton-Regular',
                        fontSize: MediaQuery.of(context).size.height / 55,
                        color: Colors.grey[300],
                      ),
                    ),
                  ],
                ),
                _buildEmailRow(),
                _buildUserRow(),
                _buildPasswordRow(),
                //_buildCheckBox(),
                Padding(padding: EdgeInsets.only(top: 15)),
                _buildRegisterButton(),
              ],
            ),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xfff2f3f7),
        body: Stack(
          children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.height * 0.63,
              width: MediaQuery.of(context).size.width,
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [Colors.blue[600], Colors.blue[100]],
                  ),
                  borderRadius: BorderRadius.only(
                    bottomLeft: const Radius.circular(30),
                    bottomRight: const Radius.circular(30),
                  ),
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                _buildContainer(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
