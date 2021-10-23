import 'package:anki_addcards_front/src/configs/config.dart';
import 'package:flutter/material.dart';


class ConfigPage extends StatefulWidget {
  
  ConfigPage({Key? key}) : super(key: key);

  @override
  State<ConfigPage> createState() => _ConfigPageState();
}

class _ConfigPageState extends State<ConfigPage> {
  final _paddingInt = 20.0;
  final _styleBold = TextStyle(fontWeight: FontWeight.bold);

  @override
  Widget build(BuildContext context) {
    List<String> _credentialsList = ["Acess key:", "Secret key:", "Region name:", "Bucket name:"];
    List<String> _ankiConfigList = ["Deck anki name", "Fields name:", "Type card:"];

    return Scaffold(
      appBar: AppBar(title: const Text("Settings"),),
      body: Padding(
        padding: EdgeInsets.all(_paddingInt),
        child: Column(
          children: [
            textTitle("Credencials AWS"),
            invisibleContainer("Credencials AWS", _credentialsList),
            textTitle("Anki config"),
            invisibleContainer("Anki config", _ankiConfigList),
          ],),
      ),

    );
  }

  Visibility invisibleContainer(String text, List<String> list) {
    return Visibility(
            visible: configs[text],
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: _paddingInt),
              child: Align(
                alignment: Alignment.topLeft,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: 
                    _getTextByList(list),
                ),
              ),
            ));
  }

  ListTile textTitle(String text) {
    return ListTile(
            title: Text(text,
                    style:  _styleBold,),
            trailing: Icon(
                 configs[text] ? Icons.keyboard_arrow_up
                 : Icons.keyboard_arrow_down_outlined),
            onTap: (){
              setState(() {
                configs[text] = !configs[text];
              });
            },
          );
  }

  List<Widget> _getTextByList(List<String> list) {
    List<Widget> listWidget = [];

    list.forEach((element) {
      listWidget.add(ListTile(
                        title: Text(
                          element,
                          ),
                      ));
    });

    return listWidget;
  }
}