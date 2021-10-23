
import 'package:flutter/material.dart';

bool isDark = false;
final currentTheme = MyTheme();

class MyTheme extends ChangeNotifier{

  ThemeMode currenTheme(){
    return isDark ? ThemeMode.dark : ThemeMode.light;
  }

  void switchTheme(){
    isDark = !isDark; 
    notifyListeners();
  }

  Color getPrimaryColor(){
    return isDark ? Colors.grey.shade800 : Colors.blue;
  }

}