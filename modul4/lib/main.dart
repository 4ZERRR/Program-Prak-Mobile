import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: Scaffold(
        body: const Center(
          child: Text('Pemutar Musik', style: TextStyle(fontSize: 35)),
        ),
        bottomNavigationBar: Container(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
          color: Colors.black54,
          child: Row(
            children: [
              const Expanded(
                child: Icon(Icons.shuffle, color: Colors.white, size: 35),
              ),
              const Expanded(
                child: Icon(Icons.skip_previous, color: Colors.white, size: 35),
              ),
              Flexible(
                flex: 2,
                fit: FlexFit.tight,
                child: Icon(Icons.play_circle_fill,
                    color: Colors.white, size: 100),
              ),
              const Expanded(
                child: Icon(
                  Icons.skip_next,
                  color: Colors.white,
                  size: 35,
                ),
              ),
              const Expanded(
                child: Icon(
                  Icons.repeat,
                  color: Colors.white,
                  size: 35,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}