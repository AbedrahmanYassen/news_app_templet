import 'package:flutter/material.dart';
import 'package:news_app_template/shared_ui/navigationDrawer.dart';
import 'package:news_app_template/Screens/home_tabs/Favourates.dart';
import 'package:news_app_template/Screens/home_tabs/WhatsNew.dart';
import 'package:news_app_template/Screens/home_tabs/Popular.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
   TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(initialIndex: 0, length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        drawer: NavigationDrawer(),
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Text("Explore"),
          centerTitle: false,
          actions: [
            IconButton(icon: Icon(Icons.search), onPressed: () {}),
            IconButton(icon: Icon(Icons.more_vert), onPressed: () {}),
          ],
          bottom: TabBar(
            tabs: [
              Tab(
                text: "WHAT'S THE NEXT ",
              ),
              Tab(
                text: "POPULAR ",
              ),
              Tab(
                text: "FAVOURAITS",
              ),
            ],
            indicatorColor: Colors.white,
            controller: _tabController,
          ),
        ),
        body: Center(
          child: TabBarView(
            children: [
              WhatsNew(),
              Popular(),
              Favourates(),
            ],
            controller: _tabController,
          ),
        ),
      ),
    );
  }
}
