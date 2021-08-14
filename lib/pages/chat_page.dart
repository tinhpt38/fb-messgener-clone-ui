import 'package:fb_mess_ui/main.dart';
import 'package:flutter/material.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  List<Color> colors = [
    Colors.black,
    Colors.red,
    Colors.green,
    Colors.blue,
    Colors.yellow,
    Colors.orange
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          'Chat',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        toolbarHeight: 42,
        leading: TextButton(
          onPressed: () {},
          child: CircleAvatar(
            radius: 14,
            backgroundImage: NetworkImage(avatar),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.new_label,
              color: Colors.blue,
            ),
          )
        ],
      ),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            flexibleSpace: buildSearch(),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              buildList(),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildSearch() {
    return Container(
      color: Colors.grey,
      alignment: Alignment.center,
      child: Text('Search'),
    );
  }

  List<Widget> buildList() {
    return colors.map((e) => Container(color: e, height: 100)).toList();
  }
}
