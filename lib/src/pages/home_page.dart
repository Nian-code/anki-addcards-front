// ignore_for_file: prefer_const_constructors, unnecessary_new
import 'package:anki_addcards_front/src/components/drawer.dart';
import 'package:anki_addcards_front/src/components/footer.dart';
import 'package:anki_addcards_front/src/configs/config.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  
  String _word = "";
  String _languajeSelectionated = "EN";
  bool   _checkTodo   = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Anki create cards")),
      body: Stack(
        children: [     
          createBody(),
          Footer().createFooter(context),
        ],
      ),
      drawer: drawerPage(context),
    );
  }

  Widget createBody() {
    return Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: ListView(
              children: [
                _getLogoAnki(),
                _searchBox(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    _languageDropDown(),  
                    _createCheckBox("Create card", "createCardCheck"),
                  ],
                ),
                _todoSwitch(),
                _visibleConfigCheck(),
                _generateButton(),
                !_checkTodo ? 
                  SizedBox(height: 100,)
                : SizedBox(height: 50,),
              ],
            ),
    );
  }

  Widget _generateButton() {
    return Center(
      child: ElevatedButton(
              onPressed: _word.isEmpty ? null : () {
                  print(_word);
              },
              child: const Text('Generate'),
            )
      );
  }

  Visibility _visibleConfigCheck() {
    return Visibility(
              visible: !_checkTodo, 
                child: Column(
                  children: [
                  _createCheckBox("Translate", "translateCheck"),
                  _createCheckBox("Ipa", "ipaCheck"),
                  _createCheckBox("Audio", "audioCheck"),
                  _createCheckBox("Example", "exampleCheck"),
                ],
                ),
            );
  }

  SizedBox _createCheckBox(String text, String item){
    return SizedBox(
      width: 200,
      child:
        CheckboxListTile(
          title: Text(text,
          style: TextStyle(fontWeight: FontWeight.bold),),
          value: configs[item]!, 
          onChanged: (status){
            setState(() {
              configs[item] = status!;
            });
        })
      );
  }

  _todoSwitch(){
    return Center(
      child: SizedBox(
        width: 200,
        child:
          SwitchListTile(
            title: Text("Todo",
            style: TextStyle(fontWeight: FontWeight.bold),),
            value: _checkTodo, 
            onChanged: (status){
              setState(() {
                _checkTodo = status;
              });
          })
        ),
    );
  }

  Padding _languageDropDown() {
    return Padding(
              padding: EdgeInsets.symmetric(horizontal: 12, vertical: 0),
              child:
            Row(children:[
              Text("Language:", 
              style: TextStyle(fontWeight: FontWeight.bold),),
              SizedBox(width: 15),
              _createDropDown()]));
  }

  Widget _searchBox() {
    return Center(
              child: SizedBox(              
              width: 600.0,
              child: TextField(
                  autofocus: true,
                  autocorrect: false,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Example: Hello world',
                    //helperText: 'Example: "Hello, world"',
                    suffixIcon: Icon( Icons.search ),
                    ),
                  onChanged: (value){
                    setState(() {
                      _word = value;
                    });
                  },
            ),
          ),
    );
  }

  Widget _getLogoAnki() {
    return Image.asset(
      "images/anki_logo.png", 
      width: 300, height: 200,);
  }

  Widget _createDropDown(){
    return SizedBox(
      width: 48,
      child:
        DropdownButtonFormField(
          value: _languajeSelectionated,
          items: _getItemsDropDown(), 
          onChanged: (languje){
            setState(() {
              _languajeSelectionated = languje.toString();
            });
          })
     ,);
    
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
