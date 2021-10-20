// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';


class Footer{
  
  Widget createFooter(){
    return  Scaffold(
        bottomNavigationBar: Stack(
          children: [
            Container(
              height: 50.0,
              color: Colors.blue.shade500,
            ),
            Positioned(
              left: 0.0,
              right: 0.0,
              top: 0.0,
              bottom: 0.0,
              child: 
                Center(
                  child: Text("With 💖 by DAFM & NIAN", 
                  style: TextStyle(
                    fontFamily: "RampartOne",
                    fontSize: 20,
                    color: Colors.white,
                    letterSpacing: 2
                  ),
                  )
                ))
          ]));
  }

}