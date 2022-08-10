import 'package:flutter/widgets.dart';

import '../model/member.dart';

class ProfilePage extends StatefulWidget{
  Member member;
  ProfilePage({required this.member});

  @override
  State<StatefulWidget> createState() => ProfileState();
}

class ProfileState extends State<ProfilePage>{
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text("Profile Page"),
    );
  }
}