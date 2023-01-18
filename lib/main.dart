import 'package:flutter/material.dart';
import 'package:circular_menu/circular_menu.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  String _colorName = 'No';
  Color _color = Colors.black;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text("Circular Menu",style: TextStyle(fontSize: 15,fontWeight: FontWeight.normal),),
        centerTitle: true,
      ),
      body: CircularMenu(
        alignment: Alignment.bottomCenter,
        backgroundWidget: Center(
          child: RichText(
            text: TextSpan(
              style: const TextStyle(color: Colors.black, fontSize: 28),
              children: <TextSpan>[
                TextSpan(
                  text: _colorName,
                  style:
                      TextStyle(color: _color, fontWeight: FontWeight.bold),
                ),
                const TextSpan(text: ' button is clicked.'),
              ],
            ),
          ),
        ),
        toggleButtonColor: Colors.green,
        items: [
          CircularMenuItem(
            icon: Icons.home,
            color: Colors.green,
            onTap: () {
              setState(() {
                _color = Colors.green;
                _colorName = 'Green';
              });
            }
          ),
          CircularMenuItem(
            icon: Icons.search,
            color: Colors.blue,
            onTap: () {
              setState(() {
                _color = Colors.blue;
                _colorName = 'Blue';
              });
            }
          ),
          CircularMenuItem(
            icon: Icons.settings,
            color: Colors.orange,
            onTap: () {
              setState(() {
                _color = Colors.orange;
                _colorName = 'Orange';
              });
            }
          ),
          CircularMenuItem(
            icon: Icons.chat,
            color: Colors.purple,
            onTap: () {
              setState(() {
                _color = Colors.purple;
                _colorName = 'Purple';
              });
            }
          ),
          CircularMenuItem(
            icon: Icons.notifications,
            color: Colors.brown,
            onTap: () {
              setState(() {
                _color = Colors.brown;
                _colorName = 'Brown';
              });
            }
          )
        ],
      ),
    );
  }
}