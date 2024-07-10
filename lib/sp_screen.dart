import 'package:flutter/material.dart';

class SpScreen extends StatefulWidget {
  const SpScreen({super.key});

  @override
  State<SpScreen> createState() => _SpScreenState();
}

class _SpScreenState extends State<SpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Shared Preferences"),
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){},
      child: Icon(Icons.add),),
      body: Column(
        children: [

        ],
      ),
    );
  }
}
