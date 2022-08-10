import 'package:flutter/widgets.dart';

import '../model/member.dart';

class HomePage extends StatefulWidget{
  Member member;
  HomePage({required this.member});

  @override
  State<StatefulWidget> createState() => HomeState();


}

class HomeState extends State<HomePage>{
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text("Home Page"),
    );
  }
}