import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';
import 'package:instagram_firebase/model/user.dart';
import 'package:instagram_firebase/provider/user%20provider.dart';
import 'package:instagram_firebase/resources/firstore_Methods.dart';
import 'package:instagram_firebase/ulitls/colors.dart';
import 'package:instagram_firebase/ulitls/utils.dart';
import 'package:instagram_firebase/widget/commentcard.dart';
import 'package:provider/provider.dart';

class CommentCard extends StatefulWidget {
  const CommentCard({super.key});

  @override
  State<CommentCard> createState() => _CommentCardState();
}

class _CommentCardState extends State<CommentCard> {
  @override
  Widget build(BuildContext context) {
    final User user = Provider.of<UserProvider>(context).getUser;
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 16),
      child: Row(
        children: [
          CircleAvatar(
            backgroundImage: NetworkImage(
                'https://images.pexels.com/photos/7363239/pexels-photo-7363239.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
            radius: 18,
          ),
          Expanded(
            child: Padding(
                padding: const EdgeInsets.only(left: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                              text: 'username ',
                              style:
                                  const TextStyle(fontWeight: FontWeight.bold)),
                          TextSpan(
                            text: 'some description to insert',
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 4),
                      child: Text(
                        '23/12/21',
                        style: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.w400),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(8),
                      child: Icon(
                        Icons.favorite,
                        size: 16,
                      ),
                    )
                  ],
                )),
          )
        ],
      ),
    );
  }
}
