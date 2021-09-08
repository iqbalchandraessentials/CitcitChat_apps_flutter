import 'package:flutter/material.dart';
import 'package:chats_app/theme.dart';

class Convesation extends StatelessWidget {
  final imageUrl;
  final text;
  final time;

  Convesation({
    this.imageUrl,
    this.text,
    this.time,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: EdgeInsets.only(bottom: 30),
        child: Column(
          children: [
            Row(
              children: [
                Image.asset(
                  imageUrl,
                  width: 40,
                  height: 40,
                ),
                SizedBox(
                  width: 12,
                ),
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 12,
                  ),
                  decoration: BoxDecoration(
                      color: conversation,
                      borderRadius: BorderRadius.circular(40)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        text,
                        style: mainTitleTetxt,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        time,
                        style: secondaryGreytxt,
                      )
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
