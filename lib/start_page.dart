import 'package:flutter/material.dart';


class StartPage extends StatelessWidget {
  const StartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10.0),
      padding: const EdgeInsets.all(10),
      color: Colors.blueAccent,
      width: double.infinity,
      child: const Center(
        child: Text(
          'This is a text widget',
          style: TextStyle(color: Colors.white),
        ),
      ),
    );

  }
}
