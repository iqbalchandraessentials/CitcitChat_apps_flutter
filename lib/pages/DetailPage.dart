import 'package:chats_app/Widgets/Conversation_tile.dart';
import 'package:chats_app/Widgets/Detail_tile.dart';
import 'package:chats_app/Widgets/SendConversation_tile.dart';
import 'package:flutter/material.dart';
import 'package:chats_app/theme.dart';

class Detail extends StatelessWidget {

  @override
  Widget build(BuildContext context) {


    Widget chatInput() {
      return Container(
        margin: EdgeInsets.all(20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              children: [
                Expanded(
                  child: Container(
                    height: 45,
                    padding: EdgeInsets.symmetric(
                      horizontal: 16,
                    ),
                    decoration: BoxDecoration(
                        color: whiteColor,
                        borderRadius: BorderRadius.circular(12)),
                    child: Center(
                      child: TextFormField(
                        decoration: InputDecoration.collapsed(
                            hintText: 'Typle Message...',
                            hintStyle: secondaryGreytxt),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Image.asset(
                  'assets/images/send.png',
                  width: 50,
                ),
              ],
            ),
          ],
        ),
      );
    }


    return Scaffold(
      backgroundColor: Color(0xfff8fafc),                
      bottomNavigationBar: chatInput(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(30),
                  decoration: BoxDecoration(
                    color: whiteColor,
                    borderRadius: BorderRadius.vertical(
                      bottom: Radius.circular(40),
                    ),
                  ),
                  child: Details(
                    imageUrl: 'assets/images/icon.png',
                    name: 'Jakarta Fine',
                    member: '56 members',
                  ),
                ),
                SizedBox(height: 30,),
                Padding( padding: EdgeInsets.symmetric(
                  horizontal: 30,
                ),
                  child: Column(
                    children: [
                      Convesation(
                        imageUrl: 'assets/images/pic.png',
                          text: 'How are ya guys?',
                          time: '20:15',
                      ),
                      Convesation(
                        imageUrl: 'assets/images/pic_1.png',
                          text: 'Find here :P',
                          time: '21:15',
                      ),
                      Send(
                        imageUrl: 'assets/images/profile.png',
                          text: 'Thinking with this client from',
                          time: '21:15',
                      ),
                    ],
                  ),
                ),
                

              ],
            ),
          ),
        ), 
      ),
    );
  }
}