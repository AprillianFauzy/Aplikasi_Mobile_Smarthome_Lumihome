import 'package:flutter/material.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xffF2F5FE),
        body: Container(
          margin: EdgeInsets.only(top: 30),
          padding: EdgeInsets.all(25),
          child: Column(children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CircleAvatar(
                  radius: 27.0,
                  backgroundColor: Colors.red,
                  backgroundImage:
                      NetworkImage('https://picsum.photos/id/10/200/300'),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Image.asset(
                    'images/setting.png',
                    width: 32.0,
                    height: 32.0,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            const Align(
              alignment: Alignment.centerLeft,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Hi, Satria Dharma",
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 20,
                        fontWeight: FontWeight.w600),
                  ),
                  Text(
                    "Welcome To Your Smarthome",
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 16,
                        fontWeight: FontWeight.w400),
                  ),
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
