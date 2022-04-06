import 'package:flutter/material.dart';

class KeranjangPage extends StatefulWidget {
  @override
  State<KeranjangPage> createState() => _KeranjangPageState();
}

class _KeranjangPageState extends State<KeranjangPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Coffee Shop'),
      ),
      body: Center(
        child: Text(
          'KeranjangPage',
        ),
      ),
    );
  }
}
