import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:fluttersocial/model/color_theme.dart';

class LoadingController extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text("Chargement ....")),
    );
  }
}