import 'package:blackcoffer/chatScreen.dart';
import 'package:blackcoffer/constants/styles.dart';
import 'package:blackcoffer/contactScreen.dart';
import 'package:blackcoffer/hashScreen.dart';
import 'package:blackcoffer/home/homeScreen.dart';
import 'package:blackcoffer/networkScreen.dart';
import 'package:flutter/material.dart';
import 'package:blackcoffer/constants/colors.dart';
import 'package:get/get.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var currentNavIndex=0.obs;

    var navbarItem=[
      BottomNavigationBarItem(icon:Icon(Icons.remove_red_eye, size: 26,),label:"Explore"),
      BottomNavigationBarItem(icon:Icon(Icons.cached_rounded, size: 26,),label:"Network"),
      BottomNavigationBarItem(icon:Icon(Icons.chat, size: 26,),label:"Chat"),
      BottomNavigationBarItem(icon:Icon(Icons.quick_contacts_mail_outlined, size: 26,),label:"Contact"),
      BottomNavigationBarItem(icon:Icon(Icons.bookmark_border, size: 26,),label:"Hashtags"),

    ];
    var navBody =[
      HomeScreen(),
      NetworkScreen(),
      ChatScreen(),
      ContactScreen(),
      HashScreen()
    ];
    return WillPopScope(
      onWillPop: ()async{
        return false;
      },
      child: Scaffold(
        body:Column(
          children: [
            Obx(()=>Expanded(
              child: navBody.elementAt(currentNavIndex.value),
            ),
            ),
          ],
        ),
        bottomNavigationBar: Obx(()=>
            BottomNavigationBar(
                currentIndex:currentNavIndex.value,
                selectedItemColor: darkBlue,
                selectedLabelStyle: TextStyle(fontFamily: semibold),
                backgroundColor: white,
                type: BottomNavigationBarType.fixed,
                onTap: (value){
                  currentNavIndex.value=value;
                },
                items:navbarItem),
        ),
      ),
    );
  }
}
