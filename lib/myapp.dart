import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:anki_addcards_front/db/kvs.dart';
import 'package:anki_addcards_front/src/configs/config.dart';
import 'package:anki_addcards_front/src/pages/home_page.dart';
import 'package:anki_addcards_front/src/ui/themes/themes.dart';
import 'package:flutter/material.dart';


class MyApp extends StatefulWidget {

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  void initState() {
    super.initState();
    _loadConfig();
    loadConfigAnkiAndAws();
    currentTheme.addListener(() {
      setState(() {});
    });
  }

  _loadConfig(){
    getBoolFromKVS("isDark").then(
      (value) 
        {
          setState(() {
            currentTheme.currenTheme();
          });
          print("Este es el tema guardado $value");
        }
    );
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Anki add cards',
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      themeMode: configs["isDark"] == null ? ThemeMode.dark :
                  currentTheme.currenTheme(), 
      home: AnimatedSplashScreen(
              duration: 800,
              splash: Image.asset("images/anki_logo.png"),
              splashTransition: SplashTransition.fadeTransition,
              backgroundColor: Colors.blue,
              nextScreen: const HomePage())
                   
    );
  }
}

