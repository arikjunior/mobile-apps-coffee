import 'package:flutter/material.dart';

import '../constans.dart';

class FavoritePage extends StatefulWidget {
  @override
  State<FavoritePage> createState() => _FavoritePageState();
}

class _FavoritePageState extends State<FavoritePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: new Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(
              'Coupon',
              style: TextStyle(color: Palette.black),
            ),
          ],
        ),
      ),
      body: new Column(
        children: <Widget>[
          // Text(
          //   'Ambil Kode Voucher',
          //   style: TextStyle(color: Palette.black),
          // ),
          Container(
            height: 60,
            padding: EdgeInsets.only(top: 5, right: 20, left: 20, bottom: 5),
            margin: const EdgeInsets.only(bottom: 20),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.grey[200]),
                    child: TextField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.search,
                          color: Colors.grey,
                        ),
                        border: InputBorder.none,
                        hintStyle: TextStyle(color: Colors.grey),
                        hintText: "Masukkan kode vocher...",
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Icon(
                  Icons.confirmation_number,
                  color: Colors.grey[800],
                  size: 30,
                )
              ],
            ),
          ),
          Expanded(
              child: ListView(
            children: List.generate(10, (index) {
              return Card(
                child: Container(
                    child: Row(
                  children: [
                    ListTile(
                      title: const Text('Card title 1'),
                      subtitle: Text(
                        'Secondary Text',
                        style: TextStyle(color: Colors.black.withOpacity(0.6)),
                      ),
                    ),
                    ButtonBar(
                      alignment: MainAxisAlignment.start,
                      children: [],
                    ),
                    Icon(Icons.confirmation_number)
                  ],
                )),
              );
            }),
          ))
        ],
      ),
    );
  }
}
