
import 'package:anki_addcards_front/db/kvs.dart';
import 'package:anki_addcards_front/src/configs/config.dart';
import 'package:flutter/material.dart';

bool isDark = false;
final currentTheme = MyTheme();

class MyTheme extends ChangeNotifier{

  ThemeMode currenTheme() {
    return configs["isDark"]! ? ThemeMode.dark : ThemeMode.light;
  }

  void switchTheme() {
    configs["isDark"] = !configs["isDark"]!;
    notifyListeners();
    setBoolFromKVS("isDark", configs["isDark"]!);
  }

  Color getPrimaryColor(){
    return configs["isDark"]! ? Colors.grey.shade800 : Colors.blue;
  }

}