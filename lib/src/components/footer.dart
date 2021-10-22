// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Footer{
  
  Widget createFooter(){
    return 
           Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children:[ 
              Container(
                height: 50.0,
                color: Colors.blue.shade500,
                child:  
                    Center(
                      child: Text("With 💖 by DAFM & NIAN", 
                      style: 
                        TextStyle(
                          fontFamily: "RampartOne",
                          fontSize: 20,
                          color: Colors.white,
                          letterSpacing: 2
                        ),
                      )
                    ),
              ),
              ]);
  }

}