import 'package:flutter/material.dart';

class Auth extends StatefulWidget {
  const Auth({super.key});

  @override
  State<Auth> createState() => _AuthState();
}

class _AuthState extends State<Auth> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFFffffff),
      child: Center(
        child: Column(children: [
          Image.asset(
            'images/logo.png',
            width: 250,
          ),
          Text(
            "Illuminate Your Life with Smart Living !",
            style: TextStyle(fontSize: 13, color: Color(0xFF619EF5)),
          ),
          Column(
            children: [
              TextButton(
                onPressed: () {
                  print("Tombol ditekan!");
                },
                child: Text("Sign Up"),
              ),
            ],
          )
        ]),
      ),
    );
  }
}
