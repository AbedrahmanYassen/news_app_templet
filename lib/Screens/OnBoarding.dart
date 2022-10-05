import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'home_screen.dart';
import 'package:page_view_indicator/page_view_indicator.dart';

class OnBoarding extends StatefulWidget {
  @override
  _OnBoardingState createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
   List<PageModel> pages;

  ValueNotifier<int> _pageViewNotifier = ValueNotifier(0);

  void _addPages() {
    pages = <PageModel>[];
    pages.add(PageModel(
        'Welcome',
        '    We are so happy to see you        ',
        Icons.newspaper,
        'assets/images/bg2.png'));

    pages.add(PageModel(
        'Hope to Enjoy',
        '           Enjoy the flow of world news          ',
        Icons.face_unlock_rounded,
        'assets/images/bg4.png'),);
    pages.add(PageModel(
        'Don\'t miss any thing',
        'We assure you that you won\'t miss any important thing',
        Icons.access_alarm,
        'assets/images/bg3.png'));
  }

  @override
  Widget build(BuildContext context) {
    _addPages();

    return Stack(
      children: <Widget>[
        Scaffold(
          body: PageView.builder(
            itemBuilder: (context, index) {
              return Stack(
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: ExactAssetImage(
                          pages[index].images,
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Transform.translate(
                        child: Icon(
                          pages[index].icon,
                          size: 150,
                          color: Colors.white,
                        ),
                        offset: Offset(0, -100),
                      ),
                      Text(
                        pages[index].title,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      Padding(
                        padding:
                        const EdgeInsets.only(left: 48, right: 48, top: 18),
                        child: Text(
                          pages[index].paragraph,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                ],
              );
            },
            itemCount: pages.length,
            onPageChanged: (index) {
              _pageViewNotifier.value = index;
            },
          ),
        ),
        Transform.translate(
          offset: Offset(0, 175),
          child: Align(
            alignment: Alignment.center,
            child: _displayPageIndicators(pages.length),
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: const EdgeInsets.only(bottom: 24, left: 16, right: 16),
            child: SizedBox(
              width: double.infinity,
              height: 50,
              child: RaisedButton(
                color: Colors.red.shade900,
                child: Text(
                  'GET STARTED',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    letterSpacing: 1,
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        _updateSeen();
                        return HomeScreen();
                      },
                    ),
                  );
                },
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _displayPageIndicators(int length) {
    return PageViewIndicator(
      pageIndexNotifier: _pageViewNotifier,
      length: length,
      normalBuilder: (animationController, index) => Circle(
        size: 8.0,
        color: Colors.grey,
      ),
      highlightedBuilder: (animationController, index) => ScaleTransition(
        scale: CurvedAnimation(
          parent: animationController,
          curve: Curves.ease,
        ),
        child: Circle(
          size: 12.0,
          color: Colors.red,
        ),
      ),
    );
  }

  void _updateSeen() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool( 'seen' , true);
  }
}


class PageModel {
  String _title;

  String _paragraph;

  IconData _icon;

  String _images;

  PageModel(this._title, this._paragraph, this._icon, this._images);

  set title(String value) {
    _title = value;
  }

  String get images => _images;

  IconData get icon => _icon;

  String get paragraph => _paragraph;

  String get title => _title;
}

class PageIndecators {
  Color _color;

  Widget _widget;

  PageIndecators(this._color, this._widget);
}
// thos after i have made the class PadgeModel i dont need them
// List<String> images = [
//   'assets/images/bg2.png',
//   'assets/images/bg3.png',
//   'assets/images/bg4.png',
//   'assets/images/bg5.png',
//   'assets/images/bg8.png',
// ];
// List<String> titles = [
//   'Welcome!',
//   'Contact',
//   'Warnings',
//   'Map',
// ];
// List<String> paragraph = [
//   'here the place where to find the fresh news for the world ',
//   'On Facabook : Alaqsa News ',
//   'There is fake facebook pages with the same name of us ',
//   'Palestine-Gaza-Zaytoon-wadiAlarays street',
// ];
//
// List<IconData> icon = [
//   Icons.alarm,
//   Icons.add_comment,
//   Icons.access_alarm,
//   Icons.add_location,
//   Icons.train,
// ];
//-----------
// Scaffold(
// // it has also some of settings , information , config , and others
// appBar: AppBar(
// backgroundColor: Colors.white,
// elevation: 3,
// ),
// body:
