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
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          color: const Color(0xffffffff),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // Gambar logo
                Image.asset(
                  "images/logo.png",
                  width: 280,
                ),
                const SizedBox(
                  height: 40,
                ),
                // Caption
                const Text(
                  "Illuminate Your Life with Smart Living !",
                  style: TextStyle(
                      decoration: TextDecoration.none,
                      fontSize: 14,
                      color: Color(0xff619EF5),
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 80,
                ),
                // Kumpulan Button
                Column(
                  children: [
                    // Button Sign Up
                    MyButton(
                      text: "Sign Up",
                      onTap: () {
                        showModalBottomSheet(
                          context: context,
                          isScrollControlled: true,
                          builder: (BuildContext context) {
                            return const SizedBox(
                                width: double.infinity,
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    SizedBox(
                                      height: 600,
                                    ),
                                    Text(
                                      "jasbfbasifbiasbifbasibfiua adasidi asd asd aioshdo iajspdj asjdajspfj poajsp ofjaspfjpasjpfoajspfhais oafjpasfpajssb",
                                      style: TextStyle(fontSize: 20),
                                    ),
                                  ],
                                ));
                          },
                        );
                      },
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Container(
                      width: 255,
                      child: const Row(
                        children: [
                          Expanded(
                            child: Divider(
                              color: Color(0xff474747),
                              thickness: 2.0,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10.0),
                            child: Text(
                              "Or",
                              style: TextStyle(
                                  fontSize: 16.0, color: Color(0xff000000)),
                            ),
                          ),
                          Expanded(
                            child: Divider(
                              color: Color(0xff474747),
                              thickness: 2.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    // Button Sign In
                    MyButton(
                      text: "Sign In",
                      onTap: () {},
                      type: ButtonType.secondary,
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
