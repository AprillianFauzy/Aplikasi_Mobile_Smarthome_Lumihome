import 'package:aplikasi_smarthome_lumihome/Dashboard/Rooms/Room/MyCardRoom.dart';
import 'package:flutter/material.dart';

class RoomPage extends StatefulWidget {
  const RoomPage({super.key});

  @override
  State<RoomPage> createState() => _RoomPageState();
}

class _RoomPageState extends State<RoomPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 25,
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 28),
          child: Text(
            "My Rooms",
            style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 16,
                fontWeight: FontWeight.w700),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(horizontal: 28),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  MyCardRoom(
                    image: 'images/lamp.png',
                    room: 'Bedroom',
                  ),
                  SizedBox(
                    width: 50,
                  ),
                  MyCardRoom(
                    image: 'images/lamp.png',
                    room: 'Bedroom',
                  ),
                ],
              ),
              SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  MyCardRoom(
                    image: 'images/lamp.png',
                    room: 'Bedroom',
                  ),
                  SizedBox(
                    width: 50,
                  ),
                  MyCardRoom(
                    image: 'images/lamp.png',
                    room: 'Bedroom',
                  ),
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}
