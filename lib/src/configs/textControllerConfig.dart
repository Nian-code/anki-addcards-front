// ignore_for_file: file_names

import 'package:anki_addcards_front/db/kvs.dart';
import 'package:anki_addcards_front/src/constant/constants.dart';
import 'package:flutter/cupertino.dart';

Map<String, TextEditingController> controllersListTite = {
    accessKey:  TextEditingController(text: _accessKey),
    secretKey:  TextEditingController(text: _secretkey),
    regionName: TextEditingController(text: _regionName),
    bucketName: TextEditingController(text: _bucketName),
    deckAnkiName: TextEditingController(text: _deckAnki),
    nameFields: TextEditingController(text: _nameFields),
    cartType:   TextEditingController(text: _cardType),
    traduction: TextEditingController(text: _translation),
    ipa: TextEditingController(text: _ipa),
    audio: TextEditingController(text: _audio),
    examples: TextEditingController(text: _example),
};

String _accessKey  = "";
String _secretkey  = "";
String _regionName = "";
String _bucketName = "";
String _deckAnki = "";
String _nameFields = "";
String _cardType = "";
String _translation = "";
String _ipa = "";
String _audio = "";
String _example = "";

loadConfigAnkiAndAws() async{
  _accessKey = await getStringFromKVS(accessKey);
  _secretkey = await getStringFromKVS(secretKey);
  _bucketName = await getStringFromKVS(bucketName);
  _deckAnki = await getStringFromKVS(deckAnkiName);
  _nameFields = await getStringFromKVS(nameFields);
  _cardType = await getStringFromKVS(cartType);
  _translation = await getStringFromKVS(traduction);
  _ipa = await getStringFromKVS(ipa);
  _audio = await getStringFromKVS(audio);
  _example = await getStringFromKVS(examples);
}