import 'package:flutter/material.dart';

Map<String, bool> configs = {
    "createCardCheck": true,
    "ipaCheck"     : true,
    "translateCheck"  : true,
    "audioCheck"   : true,
    "exampleCheck"   : true,
    "Credencials AWS" : true,
    "Anki config": true,
    
    // Button TextEditing
    "Access Key:": true,
    "Secret key:":  true,
    "Region name:": true,
    "Bucket name:": true,
    "Deck anki name:": true,
    "Fields name:": true,
    "Type card:": true,
};


Map<String, TextEditingController> controllersListTite = {
    "Access Key:":  TextEditingController(text: "Inicial config"),
    "Secret key:":  TextEditingController(text: "Inicial config"),
    "Region name:": TextEditingController(text: "Inicial config"),
    "Bucket name:": TextEditingController(text: "Inicial config"),
    "Deck anki name:": TextEditingController(text: "Inicial config"),
    "Fields name:": TextEditingController(text: "Inicial config"),
    "Type card:":   TextEditingController(text: "Inicial config"),
};


