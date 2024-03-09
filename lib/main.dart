import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'практика3',
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  HomeScreenState createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
  Color _mainColor = Colors.blue;

  void changeColor(Color color) {
    setState(() {
      _mainColor = color;
    });
  }
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('практика3'),
      ),
      body: Container(
        color: _mainColor,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              for (final color in [Colors.red, Colors.green, Colors.blue, Colors.yellow, Colors.purple])
                ColorButton(color, changeColor),
            ],
          ),
        ),
      ),
    );
  }
}
class ColorButton extends StatelessWidget {
  final Color color;
  final Function(Color) onColorChanged;
  ColorButton(this.color, this.onColorChanged);
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.10),
      child: ElevatedButton(
        onPressed: ()
        {
          onColorChanged(color);
        },
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(color),
        ),
        child: Text('изменить цвет'),
      ),
    );
  }
}
