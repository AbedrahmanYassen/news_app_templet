import 'package:flutter/material.dart';
import 'package:news_app_template/modules/NaveMenue.dart';
import 'package:news_app_template/modules/screenTodrawer.dart';
import 'package:news_app_template/Screens/home_screen.dart';
import 'package:news_app_template/modules/TwitterFeeds.dart';
import 'package:news_app_template/modules/InstgramFeed.dart';
import 'package:news_app_template/modules/FaceBookFeeds.dart';
class NavigationDrawer extends StatefulWidget {
  @override
  _NavigationDrawerState createState() => _NavigationDrawerState();
}

class _NavigationDrawerState extends State<NavigationDrawer> {
  List<Modules> modules = [
    Modules(() => ScreenOne(), ' Heading'),
    Modules(() => HomeScreen(), 'Explore'),
    Modules(() => TwitterFeeds(),
         'Twitter feed'),//this to get the twitter feed page and adding its name to the
    //...to the navigator .
    Modules(() => InstegramFeeds(), 'Instgram Feeds'),
    Modules(() => FaceBookFeeds(), 'FaceBookFeeds'),

  ];
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Padding(
        padding: EdgeInsets.only(left: 32, top: 75),
        child: ListView.builder(
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(
                modules[index].title,
                style: TextStyle(color: Colors.grey.shade400, fontSize: 22),
              ),
              trailing: Icon(
                Icons.chevron_right,
                color: Colors.grey.shade500,
              ),
              onTap: () {
                Navigator.pop(context); //close when click on the tap
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return modules[index].destnation();
                    },
                  ),
                );
              },
            );
          },
          itemCount: modules.length,
        ),
      ),
    );
  }
}
