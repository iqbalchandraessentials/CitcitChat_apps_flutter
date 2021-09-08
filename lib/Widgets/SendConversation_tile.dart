import 'package:flutter/material.dart';
import 'package:chats_app/theme.dart';

class Send extends StatelessWidget {
  final imageUrl;
  final text;
  final time;

  Send({
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
                Spacer(),
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 12,
                  ),
                  decoration: BoxDecoration(
                      color: whiteColor,
                      borderRadius: BorderRadius.circular(40)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
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
                ),
                SizedBox(
                  width: 12,
                ),
                   Image.asset(
                  imageUrl,
                  width: 40,
                  height: 40,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
