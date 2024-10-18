import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Screen1(), // Starting point is Screen 1
    );
  }
}

class Screen1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hero Animation: Screen 1'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            GestureDetector(
              onTap: () {
                // Navigate to Screen 2 on tap
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Screen2()),
                );
              },
              child: Hero(
                tag: 'hero-image',
                child: Image.network(
                  'https://picsum.photos/200',
                  width: 200, // Size of the image on Screen 1
                ),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Navigate to Screen 2 on button press
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Screen2()),
                );
              },
              child: Text('Go to Screen 2'),
            ),
          ],
        ),
      ),
    );
  }
}

class Screen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hero Animation: Screen 2'),
      ),
      body: Center(
        child: Hero(
          tag: 'hero-image', // The same tag used in Screen 1
          child: Image.network(
            'https://picsum.photos/400',
            width: 400, // Larger size on Screen 2
          ),
        ),
      ),
    );
  }
}
