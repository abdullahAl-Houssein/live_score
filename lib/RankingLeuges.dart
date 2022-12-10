import 'package:flutter/material.dart';

import 'Screens/TableScreen.dart';
import 'Widgets/LeagueContainer.dart';
class RankingLeuges extends StatefulWidget {

  @override
  State<RankingLeuges> createState() => _RankingLeugesState();
}

class _RankingLeugesState extends State<RankingLeuges> {
  @override
  Widget build(BuildContext context) {
    return  Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              const Color(0xff07393c),
              const Color(0xff2c666e),
            ],
            begin: const FractionalOffset(0.0, 0.0),
            end: const FractionalOffset(0.0, 1.0),
            stops: [0.0, 1.0],
            tileMode: TileMode.clamp,
          )),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: ListView(
          children: [
            SizedBox(
              height: 10 ,
            ),

            GridView.count(
              shrinkWrap: true,
              crossAxisCount: 2,
              crossAxisSpacing: 15,
              mainAxisSpacing: 15,
              children: [
                GestureDetector(
                  child: LeagueContainer(image: 'assets/pl.png'),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => TableScreen(code: 'PL'),
                        ));
                  },
                ),
                GestureDetector(
                  child: LeagueContainer(image: 'assets/laliga.png',),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => TableScreen(code: 'PD'),
                        ));
                  },
                ),
                GestureDetector(
                  child: LeagueContainer(image: 'assets/bundesliga.png'),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => TableScreen(code: 'BL1'),
                        ));
                  },
                ),
                GestureDetector(
                  child: LeagueContainer(image: 'assets/seria.png'),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => TableScreen(code: 'SA'),
                        ));
                  },
                ),
                GestureDetector(
                  child: LeagueContainer(image: 'assets/ligue1.png'),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => TableScreen(code: 'FL1'),
                        ));
                  },
                ),
                GestureDetector(
                  child: LeagueContainer(image: 'assets/nos.png'),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => TableScreen(code: 'PPL'),
                        ));
                  },
                ),
              ],
            ),

            SizedBox(height: 10,)
          ],
        ),
      ),
    );
  }
}
