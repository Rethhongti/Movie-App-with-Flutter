import 'package:flutter/material.dart';
import 'package:movieapp/account_screen.dart';
import 'package:movieapp/home_screen.dart';
import 'package:movieapp/movie_screen.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectIndex = 0;
  HomeScreen home = HomeScreen();
  MovieScreen movie = MovieScreen();
  AccountScreen account = AccountScreen();

  List screen = List();
  PageController _pageController = PageController();

  @override
  void initState() {
    super.initState();
    screen.add(home);
    screen.add(movie);
    screen.add(account);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.grey[900],
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("Movie App"),
      ),
      body: _bodyBuild,
      drawer: _drawer,
      bottomNavigationBar: _bottomBar,
    );
  }

  get _bodyBuild{
    return PageView(
      children:<Widget> [...screen],
      controller: _pageController,
      onPageChanged: (index) {
         setState(() {
           _selectIndex = index;
         });
      },
    );
  }

  get _drawer {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            child: Column(children: [
              CircleAvatar(
                backgroundImage: AssetImage("images/MyPhoto.jpg"),
                radius: 50,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Reth Hongti",
                style: TextStyle(fontSize: 22),
              ),
            ]),
          ),
          ListTile(
            title: Text(
              "Home",
              style: TextStyle(fontSize: 18),
            ),
            leading: Icon(
              Icons.home,
              size: 30,
            ),
            trailing: Icon(Icons.navigate_next),
            onTap: () {
              Navigator.of(context).pop();
              setState(() {
                _selectIndex = 0;
                _pageController.jumpToPage(0);
              });
            },
          ),
          SizedBox(
            height: 10,
          ),
          ListTile(
            title: Text(
              "Movie",
              style: TextStyle(fontSize: 18),
            ),
            leading: Icon(
              Icons.movie,
              size: 30,
            ),
            trailing: Icon(Icons.navigate_next),
            onTap: () {
              setState(() {
                _selectIndex = 1;
                _pageController.jumpToPage(1);
              });
              Navigator.of(context).pop();
            },
          ),
          SizedBox(
            height: 10,
          ),
          ListTile(
            title: Text(
              "My Account",
              style: TextStyle(fontSize: 18),
            ),
            leading: Icon(
              Icons.account_circle,
              size: 30,
            ),
            trailing: Icon(Icons.navigate_next),
            onTap: () {
              setState(() {
                _selectIndex = 2;
                _pageController.jumpToPage(2);
              });
              Navigator.of(context).pop();
            },
          ),
          SizedBox(
            height: 10,
          ),
          ListTile(
            title: Text(
              "Settings",
              style: TextStyle(fontSize: 18),
            ),
            leading: Icon(
              Icons.settings,
              size: 30,
            ),
            trailing: Icon(Icons.navigate_next),
          ),
          SizedBox(
            height: 10,
          ),
          ListTile(
            title: Text(
              "Log Out",
              style: TextStyle(fontSize: 18),
            ),
            leading: Icon(
              Icons.exit_to_app,
              size: 30,
            ),
            trailing: Icon(Icons.navigate_next),
          ),
          SizedBox(
            height: 200,
          ),
          Text(
            "Developed by Reth Hongti",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 16),
          ),
        ],
      ),
    );
  }

  // Create bottom navigation bar on get method
  get _bottomBar {
    return BottomNavigationBar(
        selectedItemColor: Colors.deepOrange,
        unselectedItemColor: Colors.white,
        selectedFontSize: 16,
        currentIndex: _selectIndex,
        backgroundColor: Colors.grey[900],
        onTap: (index) {
          setState(() {
            _selectIndex = index;
            _pageController.animateToPage(index, duration: Duration(milliseconds: 500), curve: Curves.easeInOut);
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.movie), label: "Today Movie"),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle), label: "Profile"),
        ]);
  }
}
