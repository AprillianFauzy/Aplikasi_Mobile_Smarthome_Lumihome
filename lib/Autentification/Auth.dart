import 'package:aplikasi_smarthome_lumihome/Components/Button.dart';
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
                MyButton(
                  onTap: () {
                    print("Sign Up");
                  },
                  text: 'Sign Up',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
