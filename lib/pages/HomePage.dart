import 'package:chats_app/Widgets/Group_tile.dart';
import 'package:chats_app/Widgets/Chat_tile.dart';
import 'package:chats_app/theme.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainBlue,
      floatingActionButton: 
      FloatingActionButton(onPressed: (){},
      backgroundColor: greenColor,
      child: Icon(Icons.add,
      size: 28,
      ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
            children : [
              SizedBox(height: 90,),
              Image.asset('assets/images/profile.png', height: 100, width: 100,),
              SizedBox(height: 20,),
              Text('Euis Geulis Pisan',
              style: nameText,
              ),
              SizedBox(height: 2,),
              Text('Programmer_STS', style: secondaryNameText,),
              SizedBox(height: 30,),
              Container(
                width: double.infinity,
              padding: EdgeInsets.all(30),
              decoration: BoxDecoration(
            color: whiteColor,
            borderRadius: BorderRadius.vertical(
              top: Radius.circular(40),
            )),
            child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start, children: 
                  [
                  Text(
                    'Friends',
                    style: mainTitleTetxt.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                 Chats(
                   imageUrl: 'assets/images/pic.png',
                   name: 'Ujang Nur Jaman',
                   text: 'Haredang teuing neng',
                   time: 'Now',
                   unread: false,
                 ),
                 Chats(
                   imageUrl: 'assets/images/pic_1.png',
                   name: 'Ratmi Putria',
                   text: 'Kadieu atuh aa',
                   time: '12:00',
                   unread: true,
                 ),
              SizedBox(height: 30,),
              Column(
                  crossAxisAlignment: CrossAxisAlignment.start, children: 
                  [
                  Text(
                    'Groups',
                    style: mainTitleTetxt.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                 Group(
                   imageUrl: 'assets/images/icon (1).png',
                   name: 'Pemuda Pancak Silat',
                   text: 'we are Pemuda Pancak ..',
                   time: '04:00',
                   unread: false,
                 ),
                 Group(
                   imageUrl: 'assets/images/icon (2).png',
                   name: 'Justin Biber Lover',
                   text: 'Justin Biber Mine',
                   time: '22:00',
                   unread: true,
                 ),
                 Group(
                   imageUrl: 'assets/images/icon.png',
                   name: 'Jamaah umroh 2021',
                   text: 'get healty, get fit',
                   time: '19:00',
                   unread: true,
                 ),
               ],
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
