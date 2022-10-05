import 'package:flutter/material.dart';
import 'package:news_app_template/Screens/home_tabs/Favourates.dart';
import 'package:news_app_template/Screens/home_tabs/Popular.dart';
import 'package:news_app_template/Screens/home_tabs/WhatsNew.dart';
import 'package:news_app_template/shared_ui/navigationDrawer.dart';

class ScreenOne extends StatefulWidget {
  @override
  _ScreenOneState createState() => _ScreenOneState();
}

enum popOutMenu { HELP, SETTINGS, ABOUT, CONTACT }

class _ScreenOneState extends State<ScreenOne>
    with SingleTickerProviderStateMixin {
   TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(initialIndex: 0, length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavigationDrawer(),
      appBar: AppBar(
        title: Text("Explore"),
        centerTitle: false,
        actions: [
          IconButton(icon: Icon(Icons.search), onPressed: () {}),
          _drawPopUpButton(context),
        ],
        bottom: TabBar(
          tabs: const [
            Tab(
              text: 'Head line news  ',
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
            Favourates(), //Because has the same design with Favourates we added it
            Popular(),
            Favourates(),
          ],
          controller: _tabController,
        ),
      ),
    );
  }

  Widget _drawPopUpButton(BuildContext context) {
    return PopupMenuButton(
      itemBuilder: (context) {
        return[ 
          PopupMenuItem(child: Text('ABOUT'), value: popOutMenu.ABOUT,),
          PopupMenuItem(child: Text('CONTACT'), value: popOutMenu.CONTACT,),
          PopupMenuItem(child: Text('HELP'), value: popOutMenu.HELP,),
          PopupMenuItem(child: Text('SETTINGS'), value: popOutMenu.SETTINGS,),
          ];
      },
      onSelected: (popOutMenu menu) {
         // TODO :
      },icon: Icon(Icons.more_vert),
    );
  }
}
