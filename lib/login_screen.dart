import 'package:burger_ui/home_page.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  // const LoginScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          SizedBox(
            height: 120.0,
          ),
          Text(
            "Log in to place your order",
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w500,
              fontSize: 16.0,
            ),
          ),
          SizedBox(
            height: 35.0,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25.0, right: 25.0),
            child: TextFormField(
                textAlign: TextAlign.justify,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.only(bottom: -23),
                  hintText: 'Name',
                  focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.red)),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.red),
                  ),
                  border: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.red),
                  ),
                  //  contentPadding: EdgeInsets.zero,
                )),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25.0, right: 25.0),
            child: TextFormField(
              cursorColor: Colors.white.withOpacity(1.0),
              cursorHeight: 1.0,
              decoration: InputDecoration(
                contentPadding: EdgeInsets.only(bottom: -23),
                hintText: 'Email',
                hintStyle: TextStyle(height: 0.0),
                focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.red)),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.red),
                ),
                border: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.red),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 5.0,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25.0, right: 25.0),
            child: Container(
              child: Align(
                alignment: Alignment.centerRight,
                child: Text(
                  'Forgot password',
                ),
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 10,
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(7.0),
            child: Padding(
              padding: const EdgeInsets.only(left: 25.0, right: 25.0),
              child: FlatButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return HomePage();
                  }));
                },
                child: Text("Log in",
                    style: TextStyle(
                      color: Colors.white,
                    )),
                color: Color(0xffe53120),
                height: 45.0,
                minWidth: double.infinity,
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 15,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25.0, right: 25.0),
            child: Row(
              children: [
                Text(
                  "Sign up",
                  style: TextStyle(color: Color(0xffe53120), fontSize: 15.0),
                ),
                SizedBox(
                  width: 5.0,
                ),
                Text("to create an account")
              ],
            ),
          ),
          SizedBox(
            height: 90.0,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 50.0),
            child: Container(
              //  width: 300.0,
              //    color: Colors.blue,
              child: Align(
                alignment: Alignment.centerLeft,
                child: Image.asset(
                  "images/leaf.png",
                  height: 120.0,
                  width: 300.0,
                  alignment: Alignment.centerLeft,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
