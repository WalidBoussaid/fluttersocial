import 'package:flutter/widgets.dart';

import '../model/member.dart';

class NotifPage extends StatefulWidget{
  Member member;
  NotifPage({required this.member});

  @override
  State<StatefulWidget> createState() => NotifState();


}

class NotifState extends State<NotifPage>{
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text("Notif Page"),
    );
  }
}