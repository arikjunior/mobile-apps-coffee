import 'package:flutter/material.dart';
import 'package:tokokopi/constans.dart';
import 'package:tokokopi/users/depanpage.dart';
import 'package:tokokopi/users/kategoripage.dart';

class Beranda extends StatefulWidget {
  @override
  State<Beranda> createState() => _BerandaState();
}

class _BerandaState extends State<Beranda> with SingleTickerProviderStateMixin {
  late TabController _tabController;
  late int _activeTabIndex;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: 2);
    _tabController.addListener(_setActiveTabIndex);
  }

  void _setActiveTabIndex() {
    _activeTabIndex = _tabController.index;
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: Icon(
            Icons.person,
            color: Palette.black,
          ),
          centerTitle: true,
          title: new Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                'Menu',
                style: TextStyle(color: Palette.black),
              ),
            ],
          ),
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.search),
              color: Palette.black,
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(Icons.message_rounded),
              onPressed: () {},
              color: Palette.black,
            ),
            IconButton(
              icon: const Icon(Icons.shopping_cart_checkout),
              onPressed: () {},
              color: Palette.black,
            ),
          ],
          // leading: new Row(children: <Widget>[
          //   Text('   Menus'),
          // ]),
          // title: TextField(
          //   onTap: () {},
          //   readOnly: true,
          //   style: TextStyle(fontSize: 15),
          //   decoration: InputDecoration(
          //       hintText: 'Search',
          //       prefixIcon: Icon(Icons.search, color: Palette.orange),
          //       contentPadding: const EdgeInsets.symmetric(vertical: 5.0),
          //       border: OutlineInputBorder(
          //         borderRadius: BorderRadius.circular(10),
          //         borderSide: new BorderSide(color: Colors.white),
          //       ),
          //       fillColor: Color(0xfff3f3f4),
          //       filled: true),
          // ),

          backgroundColor: Colors.transparent,
          elevation: 0,

          bottom: TabBar(
            controller: _tabController,
            indicatorColor: Palette.orange,
            labelColor: Palette.orange,
            unselectedLabelColor: Colors.grey,
            labelPadding: EdgeInsets.all(0),
            tabs: [
              Tab(text: 'Beranda'),
              Tab(text: 'Kategori'),
            ],
          ),
        ),
        body: TabBarView(
          physics: NeverScrollableScrollPhysics(),
          controller: _tabController,
          children: [
            DepanPage(),
            KategoriPage(),
          ],
        ));
  }
}
