import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:fluttersocial/custom_widget/padding_with.dart';
import 'package:fluttersocial/custom_widget/profile_image.dart';
import 'package:fluttersocial/model/post.dart';

import '../model/member.dart';

class PostTile extends StatelessWidget{

  QueryDocumentSnapshot snapshot;
  Member member;
  PostTile({required this.snapshot, required this.member});

  Post post = Post(snapshot);

  @override
  Widget build(BuildContext context) {

    return Container(
      margin: EdgeInsets.only(bottom: 5),
      child: Card(
        elevation: 5,
        child: PaddingWith(
            child: Column(
              children: [
                Row(
                  children: [
                    ProfileImage(urlString: member.imageUrl.toString(), onPressed: null),
                    Column(
                      children: [
                        Text("${member.surname} ${member.name}"),
                        Text("${post.date}")
                      ],
                    )
                    
                  ],
                )
              ],
            )
        ),
      ),
    );
  }
  
}