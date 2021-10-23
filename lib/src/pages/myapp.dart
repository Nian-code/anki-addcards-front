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
    currentTheme.addListener(() {
      setState(() {});
    });
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Anki add cards',
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      themeMode: currentTheme.currenTheme(),
      home: HomePage(),
    );
  }
}

