import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final String args = ModalRoute.of(context)?.settings.arguments as String;
    return Scaffold(
      appBar: AppBar(title: Text('Second Screen')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(context, '/ThirdScreen');
          },
        child : Text("Go To Third screen"),
        ),
        ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
        child : Text("Go Back"),
        ),
        Text(args),
        ],
        )
      ),
      bottomNavigationBar: BottomNavigationBar(
        items : const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.fit_screen),
            label: 'Next Screen',
            ),
          BottomNavigationBarItem(
            icon: Icon(Icons.fit_screen),
            label: 'Third Screen'
            ),
        ],
        onTap: (int index){
          index = 2;
          if (index == 2 ){
            Navigator.pushNamed(context, '/ThirdScreen');
          }
        },
      ),
    );
  }
}