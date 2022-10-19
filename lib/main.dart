import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BallPage(),
    ),
  );
}

class BallPage extends StatelessWidget {
  const BallPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.shade900,
        title: const Center(
          child: Text('Ask Me Anything'),
        ),
      ),
      backgroundColor: Colors.blue,
      body: const Ball(),
    );
  }
}

class Ball extends StatefulWidget {
  const Ball({super.key});

  @override
  State<Ball> createState() => _BallPageState();
}

class _BallPageState extends State<Ball> {
  int ball = 1;

  void askMe() {
    setState(() {
      ball = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
              onPressed: () {
                askMe();
              },
              child: Image.asset('images/ball$ball.png'),
            ),
          ),
        ],
      ),
    );
  }
}
