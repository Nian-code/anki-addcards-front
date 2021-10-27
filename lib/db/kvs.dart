import 'package:anki_addcards_front/src/configs/statusConfig.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<bool> getBoolFromKVS(String text) async {
    final prefs = await SharedPreferences.getInstance();
    bool resp =  (prefs.getBool(text) ?? false);
    configs[text] = resp;
    return resp;
}

Future<bool> setBoolFromKVS(String text, bool status) async{
  final prefs = await SharedPreferences.getInstance();
  return prefs.setBool(text, status);
}

Future<String> getStringFromKVS(String text) async {
    final prefs = await SharedPreferences.getInstance();
    return (prefs.getString(text) ?? "");
}

Future<bool> setStringFromKVS(String text, String value) async{
  final prefs = await SharedPreferences.getInstance();
  return prefs.setString(text, value);
}
