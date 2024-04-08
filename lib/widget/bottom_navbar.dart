import 'package:flutter/material.dart';
import 'package:movies_app/screen/browse_screen.dart';
import 'package:movies_app/screen/home_screen.dart';
import 'package:movies_app/screen/search_screen.dart';
import 'package:movies_app/screen/watch_list_screen.dart';

class BottomNavBar extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          bottomNavigationBar: Container(
            color: Colors.black,
            height:70 ,
            child:TabBar(tabs: [
              Tab
                (icon: Icon(Icons.home),
                text: "Home",
          ),
              Tab
                (icon: Icon(Icons.search),
                text: "search",
              ),
              Tab
                (icon: Icon(Icons.movie),
                text: "Browse",
              ),
              Tab
                (icon: Icon(Icons.book),
                text: "WatchList",
              ),
            ],

            ) ,
          ),
          body :TabBarView(
               children: [
                 HomeScreen(),
                 SearchScreen(),
                 BrowseScreen(),
                 WatchListScreen(),

               ],
          ),
        ),);
  }
}
