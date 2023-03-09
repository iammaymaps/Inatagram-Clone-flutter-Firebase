import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:instagram_firebase/Screens/Profile_Screen.dart';
import 'package:instagram_firebase/Screens/SearchScreen.dart';
import 'package:instagram_firebase/Screens/add_Post_Screen.dart';
import 'package:instagram_firebase/Screens/feed_Screen.dart';

const webScreenSize = 600;

List<Widget> homeScreenItems = [
  FeedScreen(),
  SearchScreen(),
  AddPostScreen(),
  Text("Notification"),
  ProfileScreen(
    uid: FirebaseAuth.instance.currentUser!.uid,
  )
];
