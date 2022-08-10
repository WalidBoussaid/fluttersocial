import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fluttersocial/util/constants.dart';

class Member {
  String? uid;
  String? name;
  String? surname;
  String? imageUrl;
  List<dynamic>? followers;
  List<dynamic>? following;
  DocumentReference<Map<String, dynamic>>? ref;
  String? documentId;
  String? description;

  Member(DocumentSnapshot<Map<String, dynamic>> snapshot) {
    ref = snapshot.reference;
    uid = snapshot.id;
    Map<String, dynamic>? datas = snapshot.data();
    name = datas?[nameKey];
    surname = datas?[surnameKey];
    imageUrl = datas?[imageUrlKey];
    followers = datas?[followersKey];
    following = datas?[followingKey];
    description = datas?[descriptionKey];
  }

  Map<String, dynamic> toMap() {
    return {
      uidKey: uid,
      nameKey: name,
      surnameKey: surname,
      followingKey: following,
      followersKey: followers,
      imageUrlKey: imageUrl,
      descriptionKey: description
    };
  }

}







