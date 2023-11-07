import 'package:flutter/material.dart';

class ThirdScreen extends StatelessWidget {
  const ThirdScreen ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Third Screen')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(context, '/');
          },
          child: Text('Go back to first screen'),
        ),
        ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('Go back'),
        ),
          ],
        )
      ),
      bottomNavigationBar: BottomNavigationBar(
        items : const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.fit_screen),
            label: 'First Screen',
            ),
          BottomNavigationBarItem(
            icon: Icon(Icons.fit_screen),
            label: 'I don`t know how this shi works'
            ),
        ],
        onTap: (int index){
          index = 0;
          if (index == 0 ){
            Navigator.pushNamed(context, '/');
          }
        },
      ),
    );
  }
}