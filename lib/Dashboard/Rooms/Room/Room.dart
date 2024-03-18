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
      crossAxisAlignment: CrossAxisAlignment.start, // Kiri-rata
      children: [
        SizedBox(
          height: 25.0, // Jarak atas 25 piksel
        ),
        Container(
          padding: EdgeInsets.symmetric(
              horizontal: 28.0), // Jarak horizontal 28 piksel
          child: Text(
            "My Room", // Judul "Ruangan Saya"
            style: TextStyle(
              fontFamily: 'Poppins',
              fontSize: 16.0,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        SizedBox(
          height: 20.0, // Jarak antara judul dan konten 20 piksel
        ),
        Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(
              horizontal: 28.0), // Jarak horizontal 28 piksel
          child: Column(
            children: [
              Row(
                // Baris pertama kartu ruangan
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  MyCardRoom(
                    image: 'images/lamp.png',
                    room: 'Living Room',
                  ),
                  SizedBox(
                    width: 50.0, // Jarak antar kartu 50 piksel
                  ),
                  MyCardRoom(
                    image: 'images/lamp.png',
                    room: 'Bedroom',
                  ),
                ],
              ),
              SizedBox(
                height: 50.0, // Jarak antar baris kartu 50 piksel
              ),
              Row(
                // Baris kedua kartu ruangan
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  MyCardRoom(
                    image: 'images/lamp.png',
                    room: 'Kamar',
                  ),
                  SizedBox(
                    width: 50.0, // Jarak antar kartu 50 piksel
                  ),
                  MyCardRoom(
                    image: 'images/lamp.png',
                    room: 'Kamar',
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
