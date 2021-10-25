import 'package:anki_addcards_front/src/configs/config.dart';
import 'package:flutter/material.dart';


class ConfigPage extends StatefulWidget {
  
  ConfigPage({Key? key}) : super(key: key);

  @override
  State<ConfigPage> createState() => _ConfigPageState();
}

class _ConfigPageState extends State<ConfigPage> {
  final _paddingInt = 10.0;
  final _styleBold = TextStyle(fontWeight: FontWeight.bold);
  double maxSize = 160;

  @override
  Widget build(BuildContext context) {

    List<String> _ankiConfigList = ["Type card:", "Fields name:", "Deck anki name:",];
    List<String> credentialsSettings = ["Access Key:", "Secret key:", "Region name:", "Bucket name:"];

    return Scaffold(
      appBar: AppBar(title: const Text("Settings"),),
      body: Padding(
        padding: EdgeInsets.all(_paddingInt),
        child: ListView(
          children: [
            textTitle("Credencials AWS"),
            invisibleContainer("Credencials AWS", credentialsSettings),
            textTitle("Anki config"),
            invisibleContainer("Anki config", _ankiConfigList),
          ],),
      ),

    );
  }

  Visibility invisibleContainer(String text, List<String> list) {
    return Visibility(
            visible: configs[text]!,
            child: Column(
                  children: 
                    _getTextByMap(list),
                ),
              )
           ;
  }
  List<Widget> _getTextByMap(List<String> list) {
    List<Widget> listWidget = [];

    list.forEach((value) {

      var listTitle = 
        Padding(padding: EdgeInsets.symmetric(horizontal: _paddingInt*5),
        child: Row(
        children: [
          SizedBox( width: maxSize,
                    child: 
                    Text(value, 
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 15),)),
          Flexible(
            child: _getListTitleWidget(value)),          
          IconButton(
            icon: 
                configs[value]! ? Icon(Icons.edit)
                  :  Icon(Icons.check_outlined, color: Colors.green.shade700),
            onPressed: (){
              setState(() {
                configs[value] = !configs[value]!;
              });
            }, 
          ),
        ] ,
        ));
              
      listWidget..add(listTitle)
                ..add(Divider());
    } 
    );
  
    return listWidget;
  }

  Widget _getListTitleWidget(String editName){

    TextField textField = TextField(
      autocorrect: false,
      readOnly: configs[editName]!,
      controller: controllersListTite[editName],
      onSubmitted: (string){
        setState(() {
          controllersListTite[editName]!.text = string;
          configs[editName] = true;  
          print(string); 
        });
      },
    );
    return textField;
    }


  ListTile textTitle(String text) {
    return ListTile(
            title: Text(text,
                    style:  _styleBold,),
            trailing: Icon(
                 configs[text]! ? Icons.keyboard_arrow_up
                 : Icons.keyboard_arrow_down_outlined),
            onTap: (){
              setState(() {
                configs[text] = !configs[text]!;
              });
            },
          );
  }
}
