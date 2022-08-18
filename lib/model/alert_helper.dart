import 'package:flutter/material.dart';
import 'package:fluttersocial/util/firebase_handler.dart';

class AlertHelper{

  Future<void> error(BuildContext context, String error) async{
    final title = Text("Erreur");
    final explanation = Text(error);
    return showDialog(
        context: context,
        builder: (BuildContext ctx) {
          return AlertDialog(title: title, content: explanation, actions: [close(ctx, "OK")],);
        }
    );
  }
  
  Future<void> disconnect(BuildContext context) async{
    Text title = Text("Voulez vous vous déconnecter ? ");
    return showDialog(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext ctx) {
          return AlertDialog(title: title, actions: [close(context, "NON"), disconnectBtn(context)]);
        }
    );
  }

  TextButton close(BuildContext context, String string){
    return TextButton(
        onPressed: (() => Navigator.pop(context)),
        child: Text(string));
  }

  TextButton disconnectBtn(BuildContext context){
    return TextButton(
        onPressed: () {
          Navigator.pop(context);
          FirebaseHandler().logOut();
        },
        child: Text("OUI"));
  }

}