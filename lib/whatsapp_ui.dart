import 'package:flutter/material.dart';
import 'package:practice/page1.dart';
import 'package:practice/page2.dart';
import 'package:practice/page3.dart';
import 'package:practice/page4.dart';

class WhatsAppUI extends StatefulWidget {
  const WhatsAppUI({super.key});

  @override
  State<WhatsAppUI> createState() => _WhatsAppUIState();
}

class _WhatsAppUIState extends State<WhatsAppUI> {
  int selectedindex = 0;
  PageController pageController = PageController();

 void onTapped(int index) {
    
    pageController.jumpToPage(
      index,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: PageView(
        controller: pageController,
        onPageChanged: (index) {
          setState(() {
            selectedindex = index;
          });
        },
        children: [ Page1(), Page2(),Page3(), Page4()],
      ),

      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.chat), label: 'Chats'),
          BottomNavigationBarItem(icon: Icon(Icons.update), label: 'Updates'),
          BottomNavigationBarItem(
            icon: Icon(Icons.groups_2_outlined),
            label: 'Communities ',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.call), label: 'Calls'),
        ],
        currentIndex: selectedindex,
        selectedItemColor: Colors.green,

        unselectedItemColor: Colors.black54,
        onTap: onTapped,
      ),
    );
  }
}
