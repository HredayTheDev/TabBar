import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.orange,
            centerTitle: true,
            title: Text(
              "This is Appbar",
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            ),
            bottom: TabBar(
              tabs: [
                Tab(
                  icon: Icon(
                    Icons.home,
                    color: Colors.black,
                  ),
                ),
                Tab(
                  icon: Icon(
                    Icons.contact_mail,
                    color: Colors.black,
                  ),
                ),
                Tab(
                  icon: Icon(
                    Icons.favorite_rounded,
                    color: Colors.black,
                  ),
                )
              ],
            ),
          ),
          body: Center(
            child: TabBarView(
              children: [
                Center(
                    child: Text(
                  "Home",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                )),
                Center(
                    child: Text(
                  "Contact",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                )),
                Center(
                    child: Text(
                  "Favourite",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
