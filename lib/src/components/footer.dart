import 'package:anki_addcards_front/src/configs/config.dart';
import 'package:anki_addcards_front/src/ui/themes/themes.dart';
import 'package:flutter/material.dart';

class FooterPage extends StatefulWidget {
  FooterPage({Key? key}) : super(key: key);

  @override
  _FooterPageState createState() => _FooterPageState();
}

class _FooterPageState extends State<FooterPage> {

  @override
  void initState() {
    super.initState();

    currentTheme.addListener(() {
      setState(() {});
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children:[ 
              Container(
                height: 50.0,
                color: configs["isDark"] == null ? Colors.grey.shade800 : 
                  currentTheme.getPrimaryColor(),
                child:  
                    const Center(
                      child: Text("With 💖 by DAFM & NIAN", 
                      style: 
                        TextStyle(
                          fontFamily: "RampartOne",
                          color: Colors.white,
                          fontSize: 20,
                          letterSpacing: 2
                        ),
                      )
                    ),
              ),
              ]);
  }
}
