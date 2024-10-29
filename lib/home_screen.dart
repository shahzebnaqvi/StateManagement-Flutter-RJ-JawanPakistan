import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _count = 0;
  @override
  Widget build(BuildContext context) {
    print("calling build method");
    return Scaffold(
      body: Center(
        child: Text(
          "$_count",
          style: TextStyle(
            fontSize: 30,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _count++;
          print("Tapping increment button and Count value $_count");
          setState(() {});
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
