import 'package:flutter/material.dart';

import 'pages/root_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: RootPage(),
    );
  }
}

String avatar =
    'https://scontent-hkg4-1.xx.fbcdn.net/v/t1.6435-9/220886375_1458569487810096_2789989426668101866_n.jpg?_nc_cat=107&ccb=1-3&_nc_sid=09cbfe&_nc_ohc=g_FfF9EnaIgAX9-2S3O&_nc_ht=scontent-hkg4-1.xx&oh=73812d9bab65ab97bafc775a9dda3b7f&oe=612BE5B0';
