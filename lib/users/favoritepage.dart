import 'package:flutter/material.dart';

import '../constans.dart';
import 'package:clippy_flutter/clippy_flutter.dart';
import 'package:clippy_flutter/arc.dart';
import 'package:clippy_flutter/ticket.dart';
import 'package:clippy_flutter/chevron.dart';
import 'package:clippy_flutter/diagonal.dart';

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
                // SizedBox(
                //   width: 20,
                // ),
                // Icon(
                //   Icons.confirmation_number,
                //   color: Colors.grey[800],
                //   size: 30,
                // )
              ],
            ),
          ),
          Expanded(
              child: ListView(
            children: List.generate(10, (index) {
              return Container(
                child: Ticket(
                  radius: 20.0,
                  child: Container(
                    width: double.infinity,
                    height: 100.0,
                    child: Card(
                      child: Row(
                        children: [
                          Expanded(
                            child: ListTile(
                              title: const Text('Card title 1'),
                              subtitle: Text(
                                'Secondary Text',
                                style: TextStyle(
                                    color: Colors.black.withOpacity(0.6)),
                              ),
                            ),
                          ),
                          Expanded(
                            child: ButtonBar(
                              alignment: MainAxisAlignment.start,
                              children: [],
                            ),
                          ),
                          Expanded(
                              child: Icon(
                            Icons.confirmation_number,
                            color: Palette.black,
                          )),
                        ],
                      ),
                    ),
                  ),
                ),
              );
            }),
          ))
        ],
      ),
    );
  }
}
