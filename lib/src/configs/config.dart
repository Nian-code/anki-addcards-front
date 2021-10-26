import 'package:anki_addcards_front/db/kvs.dart';
import 'package:anki_addcards_front/src/constant/constants.dart';
import 'package:flutter/material.dart';


Map<String, bool?> configs = {
    isDark : null,
    "createCardCheck": true,
    "ipaCheck"     : true,
    "translateCheck"  : true,
    "audioCheck"   : true,
    "exampleCheck"   : true,
    "Credencials AWS" : true,
    "Anki config": true,
    
    // Button TextEditing
    accessKey: true,
    secretKey:  true,
    regionName: true,
    bucketName: true,
    deckAnkiName: true,
    nameFields: true,
    cartType: true,
};


Map<String, TextEditingController> controllersListTite = {
    accessKey:  TextEditingController(text: _accessKey),
    secretKey:  TextEditingController(text: _secretkey),
    regionName: TextEditingController(text: _regionName),
    bucketName: TextEditingController(text: _bucketName),
    deckAnkiName: TextEditingController(text: _deckAnki),
    nameFields: TextEditingController(text: _nameFields),
    cartType:   TextEditingController(text: _cardType),
};

String _accessKey  = "";
String _secretkey  = "";
String _regionName = "";
String _bucketName = "";
String _deckAnki = "";
String _nameFields = "";
String _cardType = "";

loadConfigAnkiAndAws() async{
  _accessKey = await getStringFromKVS(accessKey);
  _secretkey = await getStringFromKVS(secretKey);
  _bucketName = await getStringFromKVS(bucketName);
  _deckAnki = await getStringFromKVS(deckAnkiName);
  _nameFields = await getStringFromKVS(nameFields);
  _cardType = await getStringFromKVS(cartType);
}

