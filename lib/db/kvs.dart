import 'dart:io';

import 'package:anki_addcards_front/src/configs/config.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<bool> getBoolKVS(String text) async {
    final prefs = await SharedPreferences.getInstance();
    bool resp =  (prefs.getBool(text) ?? false);
    configs[text] = resp;
    return resp;
}


Future<bool> setBoolKVS(String text, bool status) async{
  final prefs = await SharedPreferences.getInstance();
  return prefs.setBool(text, status);
}

Future justWait(int numberOfSeconds) async {
    return await Future.delayed(Duration(seconds: numberOfSeconds));
}