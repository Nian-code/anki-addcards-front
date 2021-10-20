// ignore_for_file: prefer_const_constructors, unnecessary_new

import 'package:anki_addcards_front/src/components/footer.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  
  TextEditingController myController = TextEditingController();

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    myController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Anki create cards")),
      body: Stack(
        children: [
          Footer().createFooter(),
          createBody(),
        ],
      ),
      
    );
   }

  Column createBody() {
    return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
              getLogoAnki(),
              Padding(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: TextField(
                controller: myController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Enter a search word')
                )),
              ElevatedButton(
                onPressed: () {
                  print(myController.text);
                },
                child: const Text('Generate'),)
            ],
          );
  }

  Widget getLogoAnki() {
    return Image.network(
            "https://upload.wikimedia.org/wikipedia/commons/thumb/3/3d/Anki-icon.svg/1200px-Anki-icon.svg.png",
            height: 120,
            width: 200,
            );
  }
}
