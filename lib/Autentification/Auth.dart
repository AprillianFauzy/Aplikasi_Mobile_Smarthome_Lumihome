import 'package:flutter/material.dart';

class Auth extends StatefulWidget {
  const Auth({super.key});

  @override
  State<Auth> createState() => _AuthState();
}

class _AuthState extends State<Auth> {
  @override
  Widget build(BuildContext context) {
    // container
    return Container(
      color: Color(0xFFffffff),
      child: Container(
        margin: EdgeInsets.only(top: 90),
        child: Column(
          children: [
            // logo
            Image.asset(
              'images/logo.png',
              width: 250,
            ),

            // text caption
            Container(
              margin: EdgeInsets.only(top: 20),
              child: Text(
                "Illuminate Your Life with Smart Living !",
                style: TextStyle(
                    fontSize: 14,
                    color: Color(0xFF619EF5),
                    fontWeight: FontWeight.bold),
              ),
            ),

            Column(
              children: [
                ElevatedButton(
                  onPressed: () {
                    print("Tombol ditekan!");
                  },
                  child: Text(
                    "Sign Up",
                    style: TextStyle(
                      color: Color(0xffffffff),
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                      primary: Color(0xff619EF5),
                      fixedSize: Size(254, 45),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0))),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
