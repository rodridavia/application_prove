import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:navigation_prove/main.dart';
import 'SecondRoute.dart';
void main() {
  runApp(const MaterialApp(
    title: 'Navigation Basics',
    home: ThirdRoute(),
  ));
}

class ThirdRoute extends StatelessWidget {
  const ThirdRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Third Route'),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                _button1(context);
              },
              child: const Text('Go back!'),
            ),
            ElevatedButton(
              onPressed: () {
                _button2(context);
              },
              child: const Text('Go home!'),
              ),
          ],
        ),
      ),
    );
  }
  void _button1(BuildContext context){
     Navigator.push(
      context,
      BatmanPageRoute(SecondRoute())
    );
  }
  void _button2(BuildContext context){
     Navigator.push(
      context,
      BatmanPageRoute(FirstRoute())
    );
  }
}
