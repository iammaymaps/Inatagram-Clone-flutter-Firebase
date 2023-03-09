import 'package:flutter/material.dart';
import 'package:instagram_firebase/Screens/SignupScreen.dart';
import 'package:instagram_firebase/resources/Auth_Methods.dart';
import 'package:instagram_firebase/ulitls/colors.dart';
import 'package:instagram_firebase/ulitls/global.dart';
import 'package:instagram_firebase/ulitls/utils.dart';
import 'package:instagram_firebase/widget/text_field_Input.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text("Home Screen")),
    );
  }
}
