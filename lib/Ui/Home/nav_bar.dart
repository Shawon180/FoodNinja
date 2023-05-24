import 'package:flutter/material.dart';
import 'package:foodninja/Ui/ChatScreen/chat.dart';
import 'package:foodninja/Ui/ShoppingCart.dart';

import '../../Const/const.dart';
import '../Profile/profile.dart';
import 'home.dart';
class Navbar extends StatefulWidget {
  const Navbar({Key? key}) : super(key: key);

  @override
  State<Navbar> createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  int _currentIndex=0;

  late final List<Widget> _pages = [
    const HomeScreen(),
    const ProfileScreen(),
    const CartScreen(),
    const ChatScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        onTap: (int value){
          setState(() {
            _currentIndex=value;
          });
        },
        currentIndex: _currentIndex,
        backgroundColor: Colors.grey,
        fixedColor: kPrimaryColor,
        unselectedItemColor: Colors.grey,

        items: const [
          BottomNavigationBarItem(

              icon: Icon(Icons.home),label: 'Home',backgroundColor: Colors.white),

          BottomNavigationBarItem(icon: Icon(Icons.person),label: 'Profile'),

          BottomNavigationBarItem(icon: Icon(Icons.shopping_cart),label: 'Cart'),



          BottomNavigationBarItem(icon: Icon(Icons.chat),label: 'Chat'),
        ],
      ),
      body: _pages[_currentIndex],
    );
  }
}