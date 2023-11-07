import 'package:flutter/material.dart';

class GenerateScreen extends StatelessWidget {
  final TextEditingController _controller = TextEditingController();
  final List<Widget> generatedScreens = [];

  void generateScreens(BuildContext context, int numberOfScreens) {
    for (var i = 1; i <= numberOfScreens; i++) {
      String screenName = 'Screen $i';
      generatedScreens.add(
        ListTile(
          title: Text(screenName),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => DynamicScreen(screenName: screenName),
              ),
            );
          },
        ),
      );
    }
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) =>
            GeneratedScreensList(generatedScreens: generatedScreens),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Generate Screens'),
      ),
      body: Column(
        children: [
          TextField(
            controller: _controller,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              hintText: 'Enter the number of screens to generate',
            ),
          ),
          ElevatedButton(
            onPressed: () {
              int numberOfScreens = int.tryParse(_controller.text) ?? 0;
              generateScreens(context, numberOfScreens);
            },
            child: Text('Generate Screens'),
          ),
        ],
      ),
    );
  }
}

class DynamicScreen extends StatelessWidget {
  final String screenName;

  DynamicScreen({required this.screenName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(screenName),
      ),
      body: Center(
        child: Text('This is the dynamically generated screen: $screenName'),
      ),
    );
  }
}

class GeneratedScreensList extends StatelessWidget {
  final List<Widget> generatedScreens;

  GeneratedScreensList({required this.generatedScreens});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Generated Screens'),
      ),
      body: ListView(
        children: generatedScreens,
      ),
    );
  }
}
