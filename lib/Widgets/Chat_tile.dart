import 'package:flutter/material.dart';
import 'package:chats_app/theme.dart';

class Chats extends StatelessWidget {
  final imageUrl;
  final name;
  final text;
  final time;
  final unread;

  Chats({
    this.imageUrl,
    this.name,
    this.text,
    this.time,
    this.unread,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: EdgeInsets.only(top: 16),
        child: GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, '/detail');
          },
          child: Row(
            children: [
              Image.asset(
                imageUrl,
                height: 55,
                width: 55,
              ),
              SizedBox(
                width: 12,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: mainTitleTetxt,
                  ),
                  Text(
                    text,
                    style: unread ? secondaryGreytxt : secondaryBlackTetxt,
                  ),
                ],
              ),
              Spacer(),
              Text(
                time,
                style: secondaryGreytxt,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
