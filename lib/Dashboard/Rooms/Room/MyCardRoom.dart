import 'package:flutter/material.dart';

class MyCardRoom extends StatelessWidget {
  const MyCardRoom({
    required this.image,
    required this.room,
    super.key,
  });

  final String image;
  final String room;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Tambahkan aksi ketika kartu disentuh (misalnya, ubah status)
        print('Kartu ruangan $room disentuh!');
      },
      child: ClipRRect(
        borderRadius: BorderRadius.circular(13.0),
        child: Container(
          child: Container(
            width: 130,
            color: Color(0xFF619EF5),
            child: Container(
              width: double.maxFinite,
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              child: Column(
                children: [
                  Image.asset(
                    image,
                    height: 60,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    room,
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: Colors.white),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    "On",
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 14,
                        fontWeight: FontWeight.w900,
                        color: Colors.white),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
