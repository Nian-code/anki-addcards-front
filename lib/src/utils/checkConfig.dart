// ignore: file_names
import 'package:anki_addcards_front/src/configs/statusConfig.dart';
import 'package:anki_addcards_front/src/configs/textControllerConfig.dart';
import 'package:anki_addcards_front/src/constant/constants.dart';

class CheckWithMensagge{
  bool status;
  String mensaje;

  CheckWithMensagge(this.status, this.mensaje);
}

CheckWithMensagge checkConfig(){
  if (
    configs["checkTodo"]! == true &&
    configs["createCardCheck"]! == true
  ){
    final status = _checkAnkiConfig() && _checkConfigAudio();
    return CheckWithMensagge( status, 
      "Check credentials AWS and Anki Config fields cant be empty");
  }

  bool status = true;
  String mensaje = "";

  if (configs["createCardCheck"]! == true){
    status = status && _checkAnkiConfig();
    mensaje += "Check anki config required is required to create anki card and config fields is optional ";
  }

  if (configs["audioCheck"]! == true){
    status = status && _checkConfigAudio();
    mensaje += "Check credentials aws is required to create audio";
  }
  
  return CheckWithMensagge(status, mensaje);
}

bool _checkAnkiConfig(){
  if (
    controllersListTite[cartType]!.text.isNotEmpty &&
    controllersListTite[deckAnkiName]!.text.isNotEmpty ||
    controllersListTite[traduction]!.text.isNotEmpty ||
    controllersListTite[ipa]!.text.isNotEmpty ||
    controllersListTite[audio]!.text.isNotEmpty ||
    controllersListTite[examples]!.text.isNotEmpty 
  ){
    return true;
  }
  return false;
}

bool _checkConfigAudio(){
  if (
    controllersListTite[accessKey]!.text.isNotEmpty &&
    controllersListTite[secretKey]!.text.isNotEmpty &&
    controllersListTite[regionName]!.text.isNotEmpty &&
    controllersListTite[bucketName]!.text.isNotEmpty
  ){
    return true;
  }
  return false;
}

