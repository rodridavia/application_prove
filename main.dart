import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'SecondRoute.dart';
import 'ThirdRoute.dart';
import 'FourthRoute.dart';

void main() {
  runApp(const MaterialApp(
    title: 'Navigation Basics',
    home: FirstRoute(),
  ));
}

class FirstRoute extends StatelessWidget {
  const FirstRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('First Route'),
      ),
      body: Container(
        color: Colors.green,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: ElevatedButton(
                child: const Text('Open route 2'),
                onPressed: () {
                  _button1(context);
                },
              ),
            ),
            Center(
              child: ElevatedButton(child: const Text('Open route 3'),
                onPressed: () {
                  _button2(context);
                },
              ),
            ),
            Center(
              child: ElevatedButton(child: const Text('Open route 4'),
                onPressed: (){
                  _button3(context);
                },
              ),
            )
          ],
        ),
      ),
    );
  }
void _button3(BuildContext context){
  Navigator.push(
    context,
    CupertinoPageRoute(builder: (context) => const FourthRoute()),
    );
}
void _button2(BuildContext context){
  Navigator.push(
    context,
    CupertinoPageRoute(builder: (context) => const ThirdRoute()),
    );
}
void _button1(BuildContext context){
  Navigator.push(
    context,
    CupertinoPageRoute(builder: (context) => const SecondRoute()),
    );
}
}


class BatmanPageRoute extends PageRouteBuilder{
  final Widget child;

  BatmanPageRoute(this.child) : 
    super (
      pageBuilder: (BuildContext context, 
      Animation<double> animation, Animation<double> secondaryAnimation
      ){
        return child;
      },
      transitionsBuilder: (BuildContext context, Animation<double> animation, 
      Animation<double> secondaryAnimation, Widget child){
        return Transform.rotate(
          angle: 1 - animation.value,
           child: FadeTransition(
             opacity: animation,
             child: child,
            ),
        );
      }
    );
  }
