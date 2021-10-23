// ignore_for_file: prefer_const_constructors
import 'package:anki_addcards_front/src/pages/configPage.dart';
import 'package:anki_addcards_front/src/ui/themes/themes.dart';
import 'package:flutter/material.dart';

Widget drawerPage(BuildContext context){
    return Drawer(
    child:  
      ListView(
      children: [
        _getHeader(),
        _buttonSettings(context)
      ],
    ),
    );
  }

ListTile _buttonSettings(BuildContext context) {
  return ListTile(
        title: Text("Settings"),
        leading: Icon(Icons.settings),
        onTap: (){
          final route = MaterialPageRoute(
            builder: (context) => ConfigPage());

          Navigator.push(context, route);
        },
      );
}

Container _getHeader() {
  return Container(
      color: currentTheme.getPrimaryColor(),
      child:
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(width: 12,),
              const Text("Hello",
                style: 
                  TextStyle(
                    color:  Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w500
                  ),
              ),
              Expanded(child: SizedBox()),
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
              ],
            ),
        ),
          height: 70,);
}