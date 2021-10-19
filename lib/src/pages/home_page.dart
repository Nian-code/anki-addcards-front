// ignore_for_file: prefer_const_constructors, unnecessary_new

import 'package:anki_addcards_front/src/components/footer.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Anki create cards")),
      body: Footer().createFooter());
  }
}
