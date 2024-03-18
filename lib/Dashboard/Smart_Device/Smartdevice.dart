import 'package:aplikasi_smarthome_lumihome/Dashboard/Rooms/Rooms.dart';
import 'package:aplikasi_smarthome_lumihome/Dashboard/Smart_Device/Device/Door.dart';
import 'package:aplikasi_smarthome_lumihome/Dashboard/Smart_Device/Device/Light.dart';
import 'package:flutter/material.dart';

class Smartdevice extends StatefulWidget {
  const Smartdevice({super.key});

  @override
  State<Smartdevice> createState() => _SmartdeviceState();
}

class _SmartdeviceState extends State<Smartdevice> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 25,
        ),
        Container(
          padding: EdgeInsets.only(
            left: 28,
            right: 28,
          ),
          child: Text(
            "Smart Device",
            style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 16,
                fontWeight: FontWeight.w700),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Roomspage()),
            );
          },
          child: Lights(),
        ),
        SizedBox(
          height: 20,
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Roomspage()),
            );
          },
          child: Door(),
        )
      ],
    );
  }
}
