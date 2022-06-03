import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

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
            children: [
              Container(
                child: Ticket(
                  radius: 20.0,
                  child: Container(
                    width: double.infinity,
                    height: 100.0,
                    child: Card(
                      color: Colors.green.withOpacity(0.3),
                      shape: Border.all(width: 2.0, color: Colors.brown),
                      child: Row(
                        children: [
                          Expanded(
                            child: ListTile(
                              title: Container(
                                  // alignment: Alignment.centerLeft,
                                  margin: const EdgeInsets.only(top: 29),
                                  child: Column(
                                    children: [
                                      Column(
                                        children: [
                                          Text('Diskon 60% ',
                                              style: TextStyle(
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.bold)),
                                          SizedBox(height: 16),
                                          Row(
                                            children: [
                                              Icon(
                                                Icons.access_time_rounded,
                                                color: Colors.black,
                                                size: 13,
                                              ),
                                              Text(
                                                ' Berakhir dalam',
                                                style: TextStyle(
                                                    fontSize: 10,
                                                    color: Colors.black
                                                        .withOpacity(0.6)),
                                              ),
                                            ],
                                          )
                                        ],
                                      ),
                                    ],
                                  )),
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              child: Align(
                                  alignment: Alignment.centerRight,
                                  child: Column(
                                    children: [
                                      Icon(
                                        Icons.confirmation_number,
                                        color: Colors.black,
                                      ),
                                      Text('Gunakan ',
                                          style: TextStyle(fontSize: 12))
                                    ],
                                  )),
                              padding:
                                  const EdgeInsets.only(top: 30, right: 30),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                child: Ticket(
                  radius: 20.0,
                  child: Container(
                    width: double.infinity,
                    height: 100.0,
                    child: Card(
                      color: Colors.green.withOpacity(0.3),
                      shape: Border.all(width: 2.0, color: Colors.brown),
                      child: Row(
                        children: [
                          Expanded(
                            child: ListTile(
                              title: Container(
                                  // alignment: Alignment.centerLeft,
                                  margin: const EdgeInsets.only(top: 29),
                                  child: Column(
                                    children: [
                                      Column(
                                        children: [
                                          Text('Diskon 40% ',
                                              style: TextStyle(
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.bold)),
                                          SizedBox(height: 16),
                                          Row(
                                            children: [
                                              Icon(
                                                Icons.access_time_rounded,
                                                color: Palette.black,
                                                size: 13,
                                              ),
                                              Text(
                                                ' Berakhir dalam',
                                                style: TextStyle(
                                                    fontSize: 10,
                                                    color: Colors.black
                                                        .withOpacity(0.6)),
                                              ),
                                            ],
                                          )
                                        ],
                                      ),
                                    ],
                                  )),
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              child: Align(
                                  alignment: Alignment.centerRight,
                                  child: Column(
                                    children: [
                                      Icon(
                                        Icons.confirmation_number,
                                        color: Colors.black,
                                      ),
                                      Text('Gunakan ',
                                          style: TextStyle(fontSize: 12))
                                    ],
                                  )),
                              padding:
                                  const EdgeInsets.only(top: 30, right: 30),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                child: Ticket(
                  radius: 20.0,
                  child: Container(
                    width: double.infinity,
                    height: 100.0,
                    child: Card(
                      color: Colors.green.withOpacity(0.3),
                      shape: Border.all(width: 2.0, color: Colors.brown),
                      child: Row(
                        children: [
                          Expanded(
                            child: ListTile(
                              title: Container(
                                  // alignment: Alignment.centerLeft,
                                  margin: const EdgeInsets.only(top: 29),
                                  child: Column(
                                    children: [
                                      Column(
                                        children: [
                                          Text('Diskon 40% ',
                                              style: TextStyle(
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.bold)),
                                          SizedBox(height: 16),
                                          Row(
                                            children: [
                                              Icon(
                                                Icons.access_time_rounded,
                                                color: Palette.black,
                                                size: 13,
                                              ),
                                              Text(
                                                ' Berakhir dalam',
                                                style: TextStyle(
                                                    fontSize: 10,
                                                    color: Colors.black
                                                        .withOpacity(0.6)),
                                              ),
                                            ],
                                          )
                                        ],
                                      ),
                                    ],
                                  )),
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              child: Align(
                                  alignment: Alignment.centerRight,
                                  child: Column(
                                    children: [
                                      Icon(
                                        Icons.confirmation_number,
                                        color: Colors.black,
                                      ),
                                      Text('Gunakan ',
                                          style: TextStyle(fontSize: 12))
                                    ],
                                  )),
                              padding:
                                  const EdgeInsets.only(top: 30, right: 30),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                child: Ticket(
                  radius: 20.0,
                  child: Container(
                    width: double.infinity,
                    height: 100.0,
                    child: Card(
                      color: Colors.green.withOpacity(0.3),
                      shape: Border.all(width: 2.0, color: Colors.brown),
                      child: Row(
                        children: [
                          Expanded(
                            child: ListTile(
                              title: Container(
                                  // alignment: Alignment.centerLeft,
                                  margin: const EdgeInsets.only(top: 29),
                                  child: Column(
                                    children: [
                                      Column(
                                        children: [
                                          Text('Diskon 40% ',
                                              style: TextStyle(
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.bold)),
                                          SizedBox(height: 16),
                                          Row(
                                            children: [
                                              Icon(
                                                Icons.access_time_rounded,
                                                color: Palette.black,
                                                size: 13,
                                              ),
                                              Text(
                                                ' Berakhir dalam',
                                                style: TextStyle(
                                                    fontSize: 10,
                                                    color: Colors.black
                                                        .withOpacity(0.6)),
                                              ),
                                            ],
                                          )
                                        ],
                                      ),
                                    ],
                                  )),
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              child: Align(
                                  alignment: Alignment.centerRight,
                                  child: Column(
                                    children: [
                                      Icon(
                                        Icons.confirmation_number,
                                        color: Colors.black,
                                      ),
                                      Text('Gunakan ',
                                          style: TextStyle(fontSize: 12))
                                    ],
                                  )),
                              padding:
                                  const EdgeInsets.only(top: 30, right: 30),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                child: Ticket(
                  radius: 20.0,
                  child: Container(
                    width: double.infinity,
                    height: 100.0,
                    child: Card(
                      color: Colors.green.withOpacity(0.3),
                      shape: Border.all(width: 2.0, color: Colors.brown),
                      child: Row(
                        children: [
                          Expanded(
                            child: ListTile(
                              title: Container(
                                  // alignment: Alignment.centerLeft,
                                  margin: const EdgeInsets.only(top: 29),
                                  child: Column(
                                    children: [
                                      Column(
                                        children: [
                                          Text('Diskon 40% ',
                                              style: TextStyle(
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.bold)),
                                          SizedBox(height: 16),
                                          Row(
                                            children: [
                                              Icon(
                                                Icons.access_time_rounded,
                                                color: Palette.black,
                                                size: 13,
                                              ),
                                              Text(
                                                ' Berakhir dalam',
                                                style: TextStyle(
                                                    fontSize: 10,
                                                    color: Colors.black
                                                        .withOpacity(0.6)),
                                              ),
                                            ],
                                          )
                                        ],
                                      ),
                                    ],
                                  )),
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              child: Align(
                                  alignment: Alignment.centerRight,
                                  child: Column(
                                    children: [
                                      Icon(
                                        Icons.confirmation_number,
                                        color: Colors.black,
                                      ),
                                      Text('Gunakan ',
                                          style: TextStyle(fontSize: 12))
                                    ],
                                  )),
                              padding:
                                  const EdgeInsets.only(top: 30, right: 30),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                child: Ticket(
                  radius: 20.0,
                  child: Container(
                    width: double.infinity,
                    height: 100.0,
                    child: Card(
                      color: Colors.green.withOpacity(0.3),
                      shape: Border.all(width: 2.0, color: Colors.brown),
                      child: Row(
                        children: [
                          Expanded(
                            child: ListTile(
                              title: Container(
                                  // alignment: Alignment.centerLeft,
                                  margin: const EdgeInsets.only(top: 29),
                                  child: Column(
                                    children: [
                                      Column(
                                        children: [
                                          Text('Diskon 40% ',
                                              style: TextStyle(
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.bold)),
                                          SizedBox(height: 16),
                                          Row(
                                            children: [
                                              Icon(
                                                Icons.access_time_rounded,
                                                color: Palette.black,
                                                size: 13,
                                              ),
                                              Text(
                                                ' Berakhir dalam',
                                                style: TextStyle(
                                                    fontSize: 10,
                                                    color: Colors.black
                                                        .withOpacity(0.6)),
                                              ),
                                            ],
                                          )
                                        ],
                                      ),
                                    ],
                                  )),
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              child: Align(
                                  alignment: Alignment.centerRight,
                                  child: Column(
                                    children: [
                                      Icon(
                                        Icons.confirmation_number,
                                        color: Colors.black,
                                      ),
                                      Text('Gunakan ',
                                          style: TextStyle(fontSize: 12))
                                    ],
                                  )),
                              padding:
                                  const EdgeInsets.only(top: 30, right: 30),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                child: Ticket(
                  radius: 20.0,
                  child: Container(
                    width: double.infinity,
                    height: 100.0,
                    child: Card(
                      color: Colors.green.withOpacity(0.3),
                      shape: Border.all(width: 2.0, color: Colors.brown),
                      child: Row(
                        children: [
                          Expanded(
                            child: ListTile(
                              title: Container(
                                  // alignment: Alignment.centerLeft,
                                  margin: const EdgeInsets.only(top: 29),
                                  child: Column(
                                    children: [
                                      Column(
                                        children: [
                                          Text('Diskon 40% ',
                                              style: TextStyle(
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.bold)),
                                          SizedBox(height: 16),
                                          Row(
                                            children: [
                                              Icon(
                                                Icons.access_time_rounded,
                                                color: Palette.black,
                                                size: 13,
                                              ),
                                              Text(
                                                ' Berakhir dalam',
                                                style: TextStyle(
                                                    fontSize: 10,
                                                    color: Colors.black
                                                        .withOpacity(0.6)),
                                              ),
                                            ],
                                          )
                                        ],
                                      ),
                                    ],
                                  )),
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              child: Align(
                                  alignment: Alignment.centerRight,
                                  child: Column(
                                    children: [
                                      Icon(
                                        Icons.confirmation_number,
                                        color: Colors.black,
                                      ),
                                      Text('Gunakan ',
                                          style: TextStyle(fontSize: 12))
                                    ],
                                  )),
                              padding:
                                  const EdgeInsets.only(top: 30, right: 30),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ))
        ],
      ),
    );
  }
}
