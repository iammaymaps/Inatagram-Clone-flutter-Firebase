// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';

class Post {
  final String description;
  final String uid;
  final String username;
  final String postId;
  final datePublished;
  final String postUrl;
  final String profImage;
  final likes;

  Post({
    required this.description,
    required this.uid,
    required this.username,
    required this.postId,
    required this.datePublished,
    required this.postUrl,
    required this.profImage,
    required this.likes,
  });

  Map<String, dynamic> toJson() => {
        'description': description,
        'uid': uid,
        'datePublished': datePublished,
        'username': username,
        'postUrl': postUrl,
        'profImage': profImage,
        'likes': likes,
      };

  static Post fromSnap(DocumentSnapshot snap) {
    var snapshot = snap.data() as Map<String, dynamic>;
    return Post(
        username: snapshot["username"],
        uid: snapshot["uid"],
        description: snapshot["description"],
        postUrl: snapshot['postUrl'],
        postId: snapshot["postId"],
        profImage: snapshot["profImage"],
        likes: snapshot["likes"],
        datePublished: snapshot["datePublished"]);
  }
}
