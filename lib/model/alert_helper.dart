import 'package:flutter/material.dart';

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

  TextButton close(BuildContext context, String string){
    return TextButton(
        onPressed: (() => Navigator.pop(context)),
        child: Text(string));
  }

}