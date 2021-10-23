// ignore_for_file: prefer_const_constructors
import 'package:anki_addcards_front/src/ui/themes/themes.dart';
import 'package:flutter/material.dart';

class Footer{
  
  Widget createFooter(BuildContext context){
    return 
           Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children:[ 
              Container(
                height: 50.0,
                color: currentTheme.getPrimaryColor(),
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