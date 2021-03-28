import 'package:flutter/material.dart';

class LoginScreen2 extends StatefulWidget {
  final TextEditingController emailController;
  final TextEditingController passwordController;
  final Function onLoginClick;
  final Function googleLogin;
  final Function navigatePage;

  LoginScreen2({
    @required this.emailController,
    @required this.passwordController,
    @required this.onLoginClick,
    @required this.googleLogin,
    @required this.navigatePage
  });
  @override
  _LoginScreen2State createState() => _LoginScreen2State();
}

class _LoginScreen2State extends State<LoginScreen2> {
  FocusNode myFocusNode;
  final Color primaryColor = Color(0xff18203d);
  final Color secondaryColor = Color(0xff232c51);
  final Color logoGreen = Color(0xff25bcbb);

  @override
  void initState() {
    super.initState();
    myFocusNode = FocusNode();
  }

  @override
  void dispose() {
    myFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Container(
        alignment: Alignment.topCenter,
        margin: EdgeInsets.symmetric(horizontal: 30),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text(
                'Login To Continue!',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white, fontSize: 28),
              ),
              SizedBox(height: 20),
              Text(
                'Enter your email and password below to continue!',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white, fontSize: 14),
              ),
              SizedBox(
                height: 50,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                decoration: BoxDecoration(
                    color: secondaryColor,
                    border: Border.all(color: Colors.blue)),
                child: TextFormField(
                  controller: widget.emailController,
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(horizontal: 10),
                    labelText: "Email",
                    labelStyle: TextStyle(color: Colors.white),
                    icon: Icon(
                      Icons.email,
                      color: Colors.white,
                    ),
                    border: InputBorder.none,
                  ),
                  keyboardType: TextInputType.emailAddress,
                  textInputAction: TextInputAction.next,
                  onFieldSubmitted: (_) => myFocusNode.requestFocus(),
                ),
              ),
              SizedBox(height: 20),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                decoration: BoxDecoration(
                    color: secondaryColor,
                    border: Border.all(color: Colors.blue)),
                child: TextFormField(
                  focusNode: myFocusNode,
                  controller: widget.passwordController,
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(horizontal: 10),
                    labelText: "Password",
                    labelStyle: TextStyle(color: Colors.white),
                    icon: Icon(
                      Icons.lock,
                      color: Colors.white,
                    ),
                    border: InputBorder.none,
                  ),
                  obscureText: true,
                ),
              ),
              SizedBox(height: 30),
              MaterialButton(
                elevation: 0,
                minWidth: double.maxFinite,
                height: 50,
                onPressed: widget.onLoginClick,
                color: logoGreen,
                child: Text('Login',
                    style: TextStyle(color: Colors.white, fontSize: 16)),
                textColor: Colors.white,
              ),
              SizedBox(height: 20),
              MaterialButton(
                elevation: 0,
                minWidth: double.maxFinite,
                height: 50,
                onPressed: widget.googleLogin,
                color: Colors.blue,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text('Sign In using Google',
                        style: TextStyle(color: Colors.white, fontSize: 16)),
                  ],
                ),
                textColor: Colors.white,
              ),
              SizedBox(height: 100),
              Align(
                alignment: Alignment.bottomCenter,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    GestureDetector(
                      onTap: widget.navigatePage,
                      child: Text('Sign Up?',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold)),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}