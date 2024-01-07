import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  String img;
  DetailPage({super.key, required this.img});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.more_vert))],
      ),
      body: Column(
        children: [
          SizedBox(
            height: 30,
          ),
        ],
      ),
    );
  }
}
