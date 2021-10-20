// ignore_for_file: prefer_const_constructors, unnecessary_new

import 'package:anki_addcards_front/src/components/footer.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  
  String _word = "";
  String _languajeSelectionated = "EN";

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
              _getLogoAnki(),
              searchBox(),
              LanguageDropDown(),
              ElevatedButton(
                onPressed: () {
                  print(_word);
                },
                child: const Text('Generate'),)
            ],
          );
  }

  Padding LanguageDropDown() {
    return Padding(
              padding: EdgeInsets.symmetric(horizontal: 12, vertical: 0),
              child:
            Row(children:[
              Text("Language:", 
              style: TextStyle(fontWeight: FontWeight.bold),),
              SizedBox(width: 15,),
              _createDropDown()]));
  }

  Padding searchBox() {
    return Padding(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: TextField(
              autofocus: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Enter a search word'),
              onChanged: (value){
                _word = value;
              },
          ));
  }

  Widget _getLogoAnki() {
    return Image.asset(
      "images/anki_logo.png", 
      width: 300, height: 200,);
  }

  Widget _createDropDown(){
    return DropdownButton(
      value: _languajeSelectionated,
      items: _getItemsDropDown(), 
      onChanged: (languje){
        setState(() {
           _languajeSelectionated = languje.toString();
        });
      });
  }

  List<DropdownMenuItem<String>> _getItemsDropDown(){
    List<String> optionLanguage = ["EN", "ES"];

    return optionLanguage.map((e) => 
      DropdownMenuItem(
        child: Text(e), value: e, 
      )
    ).toList();
  }
}
