import 'package:aplikasi_smarthome_lumihome/Dashboard/Rooms/Room/Room.dart';
import 'package:flutter/material.dart';

class Roomspage extends StatefulWidget {
  const Roomspage({super.key});

  @override
  State<Roomspage> createState() => _RoomspageState();
}

class _RoomspageState extends State<Roomspage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xffF2F5FE),
        // backgroundColor: Colors.amber,
        body: Container(
          height: double.infinity,
          width: double.infinity,
          child: Column(
            children: [
              Container(
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
                  Align(
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
                              fontWeight: FontWeight.w700),
                        ),
                        Text(
                          "Welcome To Your Smarthome",
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 16,
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  ),
                ]),
              ),
              Expanded(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(40.0),
                  child: Container(
                    width: double.infinity,
                    color: Colors.white,
                    child: RoomPage(),
                  ),
                ),
              ),
              Positioned(
                bottom: 0.0,
                right: 0.0,
                child: Container(
                  padding: EdgeInsets.only(bottom: 10),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Image.asset(
                      'images/logo.png',
                      height: 45,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
