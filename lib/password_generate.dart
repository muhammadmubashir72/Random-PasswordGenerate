// ignore_for_file: prefer_const_constructors

import 'dart:math';
import 'package:flutter/material.dart';

class GeneratePassword extends StatefulWidget {
  const GeneratePassword({super.key});

  @override
  State<GeneratePassword> createState() => _GeneratePasswordState();
}

class _GeneratePasswordState extends State<GeneratePassword> {
  String alpha = "abcdefghijklmnopqrstuvwxyz";
  String numb = "0123456789";
  String special = ",./';][]<>?!@#%^&*()_+=-|\~'";
  String user_specif = "";
  String password = "";

  String GeneratePassword(
      {int length = 10,
      bool should_Allow_Letter = false,
      bool should_Allow_Number = false,
      bool should_Allow_Special = false}) {
    if (should_Allow_Letter == true) {
      user_specif = user_specif + alpha;
    }

    if (should_Allow_Number == true) {
      user_specif = user_specif + numb;
    }
    if (should_Allow_Special == true) {
      user_specif = user_specif + special;
    }
    print(user_specif);
    for (int i = 0; i < length; i++) {
      int index = Random().nextInt(user_specif.length);
      print(user_specif[index]);
    }
    return password;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
          title: Text(
            "Generate Password",
            style: TextStyle(
              backgroundColor: Colors.blueAccent,
              color: Colors.white,
            ),
          ),
          centerTitle: true),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 30),

            // Text(
            //   "${password}",
            //   style: TextStyle(color: Colors.white, fontSize: 14),
            // ),
            SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  GeneratePassword(
                      length: 11,
                      should_Allow_Letter: true,
                      should_Allow_Number: true,
                      should_Allow_Special: true);
                });
              },
              child: Text(
                "CLICK",
                style: TextStyle(
                    backgroundColor: Colors.blueAccent,
                    color: Colors.white,
                    fontSize: 30),
              ),
            )
          ],
        ),
      ),
    );
  }
}
