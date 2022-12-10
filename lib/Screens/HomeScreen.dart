import 'package:flutter/material.dart';
import 'package:soccerlive/Screens/TableScreen.dart';
import 'package:soccerlive/Widgets/LeagueContainer.dart';

import '../DrawerPage.dart';
import '../RankingLeuges.dart';
import 'MatchesPage.dart';

class HomeScreen extends StatefulWidget {
  static Widget wid1=MatchesPage();
  static String titleAppBar="MATCHES";
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int index=0;
  getCurrentIndex(currentIndex){
    setState(() {
      index=currentIndex;
      if(currentIndex==0) {
        HomeScreen.titleAppBar="MATCHES";
        HomeScreen.wid1 = MatchesPage();
      }else if(currentIndex==1){
        HomeScreen.titleAppBar="LEAGUES";
        HomeScreen.wid1=RankingLeuges();
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerPage(),
      appBar: AppBar(
        backgroundColor: Color(0xff2c666e),
        title: Text("${HomeScreen.titleAppBar}",style: TextStyle(
          fontSize: 25,
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),),
        centerTitle: true,
      ),
      body: SafeArea(
        child:HomeScreen.wid1,
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: getCurrentIndex,
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: true,
        showUnselectedLabels: false,
        currentIndex: index,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.sports_football_outlined), label: 'Matches'),
          BottomNavigationBarItem(icon: Icon(Icons.date_range), label: 'Club Ranking')
        ],
      ),
    );
  }
}
