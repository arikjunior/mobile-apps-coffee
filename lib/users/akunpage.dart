import 'package:flutter/material.dart';

class AkunPage extends StatefulWidget {
  @override
  State<AkunPage> createState() => _AkunPageState();
}

class _AkunPageState extends State<AkunPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Coffee Shop'),
      ),
      body: Center(
        child: Text(
          'AkunPage',
        ),
      ),
    );
  }
}
