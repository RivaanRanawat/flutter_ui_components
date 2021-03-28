import 'package:flutter/material.dart';

class LoginScreen1 extends StatefulWidget {
  final TextEditingController emailController;
  final TextEditingController passwordController;
  final String avatarImage;
  LoginScreen1({@required this.emailController, @required this.passwordController, @required this.avatarImage});
  @override
  _LoginScreen1State createState() => _LoginScreen1State();
}

class _LoginScreen1State extends State<LoginScreen1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          FittedBox(
            child: Image.asset('assets/images/signin_page_background.png'),
            fit: BoxFit.fitHeight,
          ),
          Container(
            margin: EdgeInsets.only(top: 120),
            decoration: BoxDecoration(
              color: Color.fromRGBO(53, 55, 88, 1),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(37.5),
                topRight: Radius.circular(37.5),
              ),
            ),
            child: Container(
              margin: EdgeInsets.only(top: 90),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Welcome Back",
                    style: TextStyle(
                        fontSize: 17,
                        color: Color.fromRGBO(147, 148, 184, 1),
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 30),
                  Container(
                    margin: EdgeInsets.only(top: 22.5, right: 22.5, left: 22.5),
                    child: TextField(
                      controller: widget.emailController,
                      cursorColor: Colors.white,
                      decoration: InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                                color: Color.fromRGBO(90, 90, 90, 1))),
                        icon: Icon(
                          Icons.email,
                          color: Colors.white,
                        ),
                        contentPadding: EdgeInsets.all(11.25),
                        hintText: "Email",
                        hintStyle: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 22.5, right: 22.5, left: 22.5),
                    child: TextField(
                      controller: widget.passwordController,
                      cursorColor: Colors.white,
                      decoration: InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Color.fromRGBO(90, 90, 90, 1),
                          ),
                        ),
                        icon: Icon(Icons.lock, color: Colors.white),
                        contentPadding: EdgeInsets.all(11.25),
                        hintText: "Password",
                        hintStyle: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      obscureText: true,
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 60,
                    margin: EdgeInsets.only(top: 40, left: 30, right: 30),
                    child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                          Color.fromRGBO(255, 87, 34, 1),
                        ),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                      ),
                      onPressed: () {},
                      child: Text(
                        "Log in",
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 60,
                    margin: EdgeInsets.only(top: 20, right: 30, left: 30),
                    child: TextButton(
                      style: ButtonStyle(
                        // backgroundColor: MaterialStateProperty.all<Color>(
                        //   Colors.transparent,
                        // ),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                      ),
                      onPressed: () {},
                      child: Text(
                        "Another Account",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 17,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.only(top: 60),
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(40),
                          topRight: Radius.circular(40),
                        ),
                      ),
                      child: Column(
                        children: [
                          IconButton(
                              icon: Icon(Icons.keyboard_arrow_up),
                              onPressed: () {}),
                          Text(
                            "Sign up",
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              left: MediaQuery.of(context).size.width / 2 - 50,
              top: MediaQuery.of(context).size.height / 10.1,
            ),
            child: CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage(widget.avatarImage),
            ),
          ),
        ],
      ),
    );
  }
}
