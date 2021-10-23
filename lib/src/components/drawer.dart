import 'package:anki_addcards_front/src/ui/themes/themes.dart';
import 'package:flutter/material.dart';

Widget drawerPage(){
    return Drawer(
    child: ListView(
      children: [
        Container(
        color: currentTheme.getPrimaryColor(),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              IconButton(
                  iconSize: 28,
                  icon: Icon(
                        !isDark ? Icons.nights_stay_outlined 
                              : Icons.wb_sunny_outlined ,
                        color: Colors.amber,),
                  onPressed: () {
                    currentTheme.switchTheme();
                  },
                ),
              const Text("Hello",
                style: 
                  TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500
                  ),
              ),
              ],
              ),
        ),
            height: 70,)
          ],
    ),
    );
  }