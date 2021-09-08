import 'package:flutter/material.dart';
import 'package:chats_app/theme.dart';

class Details extends StatelessWidget {
  final imageUrl;
  final name;
  final member;

  Details({
    this.imageUrl,
    this.name,
    this.member,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            children: [
            Image.asset(imageUrl, width: 55,),
            SizedBox(width: 12,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(name, style:mainTitleTetxt,),
                Text(member,style: secondaryGreytxt,),
              ],
            ),
            Spacer(),
            Image.asset('assets/images/call.png', width: 55, height: 55, ),
            ],
          )
        ],
      )
    );
  }
}