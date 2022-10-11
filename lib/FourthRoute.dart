import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:navigation_prove/main.dart';
import 'ThirdRoute.dart';
void main() {
  runApp(const MaterialApp(
    title: 'Navigation Basics',
    home: FourthRoute(),
  ));
}

class FourthRoute extends StatelessWidget {
  const FourthRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FourthRoute'),
      ),
      body: Container(
        child: Center(
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
      ),
    );
  }
  void _button1(BuildContext context){
     Navigator.push(
      context,
      BatmanPageRoute(ThirdRoute())
    );
  }
  void _button2(BuildContext context){
     Navigator.push(
      context,
      BatmanPageRoute(FirstRoute())
    );
  }
}
