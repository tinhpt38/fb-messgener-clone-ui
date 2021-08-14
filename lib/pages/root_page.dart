import 'package:flutter/material.dart';

import 'chat_page.dart';
import 'contact_page.dart';

class RootPage extends StatefulWidget {
  const RootPage({Key? key}) : super(key: key);

  @override
  _RootPageState createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  late List<Widget> _tabs;
  int _currentIndex = 0;

  @override
  void initState() {
    _tabs = [ChatPage(), ContactPage()];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _tabs[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage('assets/images/chat.png'),
            ),
            label: 'Chat',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.people), label: 'Contact'),
        ],
      ),
    );
  }
}
