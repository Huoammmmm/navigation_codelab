import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {
  final int index = 0;
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('First Screen')),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/SecondScreen',
                  arguments: 'Hello From First screen');
            },
            child: Text('Go To Second Screen'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text('Go Back'),
          ),
          ElevatedButton(
            onPressed: () {   
              Navigator.pushNamed(context, '/GenerateScreen');
            },
            child: Text('Page Generator'),
          ),
        ],
      )),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.fit_screen),
            label: 'Next Screen',
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.fit_screen), label: 'Second Screen'),
        ],
        onTap: (int index) {
          index = 1;
          if (index == 1) {
            Navigator.pushNamed(context, '/SecondScreen');
          }
        },
      ),
    );
  }
}
