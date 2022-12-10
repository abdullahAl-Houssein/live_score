import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:soccerlive/FastApi/SMProvider.dart';
import 'package:soccerlive/FastApi/TimeClass.dart';
class MatchesPage extends StatelessWidget {

  int i=0;
  @override
  Widget build(BuildContext context) {
    if(i==0){
      Provider.of<SMProvider>(context,listen: false ).getTime();
      i++;
    }
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            SizedBox(height: 10,),
            Container(
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text("مباريات يوم السبت 2022/10/08 ",style: TextStyle(fontSize: 15),),
                ],
              ),
            ),
            SizedBox(height: 15,),
            Container(
              color: Color(0xff2c666e),
              child: Row(
                children: [
                  SizedBox(width: 10,),
                  Text("Leicester City"),
                  SizedBox(width: 15,),
                  Container(
                      width: 40,
                      height: 40,
                      child: Expanded(child: Image(image: AssetImage('assets/listerC10.png')),),
                    ),
                  SizedBox(width: 25,),
                  Text("${Provider.of<SMProvider>(context,listen: false).lst[2].hours}",style: TextStyle(
                      color: Colors.white
                  ),),
                  SizedBox(width: 15,),
                  Container(
                    width: 60,
                    height: 60,
                    child: Expanded(child: Image(image: AssetImage('assets/bronmoth.png')),),
                  ),
                  SizedBox(width: 15,),
                  Text("Bronmouth"),
                ],
              ),
            ),
            SizedBox(height: 1,),
            Container(
              height: 55,
              color: Color(0xff2c666e),
              child: Row(
                children: [
                  SizedBox(width: 10,),
                  Text("Sassuolo"),
                  SizedBox(width: 40,),
                  Container(
                    width: 40,
                    height: 40,
                    child: Expanded(child: Image(image: AssetImage('assets/Sassuolo_logo_PNG1.png')),),
                  ),
                  SizedBox(width: 25,),
                  Text("${Provider.of<SMProvider>(context,listen: false).lst[2].hours}",style: TextStyle(
                      color: Colors.white
                  ),),
                  SizedBox(width: 25,),
                  Container(
                    width: 45,
                    height: 45,
                    child: Expanded(child: Image(image: AssetImage('assets/Internazionale_logo_PNG1.png')),),
                  ),
                  SizedBox(width: 20,),
                  Text("Inter Milan"),
                ],
              ),
            ),
            SizedBox(height: 1,),
            Container(
              height: 60,
              color: Color(0xff2c666e),
              child: Row(
                children: [
                  SizedBox(width: 10,),
                  Text("Manchester\n       City"),
                  SizedBox(width: 20,),
                  Container(
                    width: 45,
                    height: 45,
                    child: Expanded(child: Image(image: AssetImage('assets/manchester_city_logo_PNG2.png')),),
                  ),
                  SizedBox(width: 25,),
                  Text("${Provider.of<SMProvider>(context,listen: false).lst[2].hours}",style: TextStyle(
                      color: Colors.white
                  ),),
                  SizedBox(width: 25,),
                  Container(
                    width: 45,
                    height: 45,
                    child: Expanded(child: Image(image: AssetImage('assets/Southampton_logo_PNG1.png')),),
                  ),
                  SizedBox(width: 20,),
                  Text("Southampton"),
                ],
              ),
            ),
            SizedBox(height: 1,),
            Container(
              height: 55,
              color: Color(0xff2c666e),
              child: Row(
                children: [
                  SizedBox(width: 10,),
                  Text("Wolverhamp\n        ton"),
                  SizedBox(width: 20,),
                  Container(
                    width: 40,
                    height: 40,
                    child: Expanded(child: Image(image: AssetImage('assets/Wolverhampton_Wanderers_Icon_64.png')),),
                  ),
                  SizedBox(width: 30,),
                  Text("${Provider.of<SMProvider>(context,listen: false).lst[3].hours}",style: TextStyle(
                      color: Colors.white
                  ),),
                  SizedBox(width: 30,),
                  Container(
                    width: 45,
                    height: 45,
                    child: Expanded(child: Image(image: AssetImage('assets/Chelsea_logo_PNG1.png')),),
                  ),
                  SizedBox(width: 20,),
                  Text("Chelsea"),
                ],
              ),
            ),
            SizedBox(height: 1,),
            Container(
              height: 55,
              color: Color(0xff2c666e),
              child: Row(
                children: [
                  SizedBox(width: 10,),
                  Text("Real Madrid"),
                  SizedBox(width: 15,),
                  Container(
                    width: 60,
                    height: 60,
                      child: Expanded(child: Image(image: AssetImage('assets/Real_madrid_logo_PNG1.png'),),),
                  ),
                  SizedBox(width: 20,),
                  Text("${Provider.of<SMProvider>(context,listen: false).lst[1].hours}",style: TextStyle(
                      color: Colors.white
                  ),),
                  SizedBox(width: 35,),
                  Container(
                    width: 45,
                    height: 45,
                    child: Expanded(child: Image(image: AssetImage('assets/Getafe-icon.png')),),
                  ),
                  SizedBox(width: 15,),
                  Text("Getafe"),
                ],
              ),
            ),
            SizedBox(height: 1,),
            Container(
              height: 55,
              color: Color(0xff2c666e),
              child: Row(
                children: [
                  SizedBox(width: 10,),
                  Text("Juventus"),
                  SizedBox(width: 25,),
                  Container(
                    width: 70,
                    height: 70,
                    child: Expanded(child: Image(image: AssetImage('assets/Juventus_Logo.png')),),
                  ),
                  SizedBox(width: 23,),
                  Text("${Provider.of<SMProvider>(context,listen: false).lst[7].hours}",style: TextStyle(
                      color: Colors.white
                  ),),
                  SizedBox(width: 20,),
                  Container(
                    width: 80,
                    height: 80,
                    child: Expanded(child: Image(image: AssetImage('assets/A_C_Milan_logo_PNG7.png')),),
                  ),
                  SizedBox(width: 0,),
                  Text("AC Milan"),
                ],
              ),
            ),
            SizedBox(height: 1,),
            Container(
              height: 55,
              color: Color(0xff2c666e),
              child: Row(
                children: [
                  SizedBox(width: 10,),
                  Text("Bayern Munich"),
                  SizedBox(width: 5,),
                  Container(
                    width: 45,
                    height: 45,
                    child: Expanded(child: Image(image: AssetImage('assets/Bayern Bayern .png')),),
                  ),
                  SizedBox(width: 20,),
                  Text("${Provider.of<SMProvider>(context,listen: false).lst[2].hours}",style: TextStyle(
                      color: Colors.white
                  ),),
                  SizedBox(width: 30,),
                  Container(
                    width: 45,
                    height: 45,
                    child: Expanded(child: Image(image: AssetImage('assets/durtmound.png')),),
                  ),
                  SizedBox(width: 20,),
                  Text("Borussia\n Dortmund"),
                ],
              ),
            ),
            SizedBox(height: 1,),
            Container(
              height: 55,
              color: Color(0xff2c666e),
              child: Row(
                children: [
                  SizedBox(width: 10,),
                  Text("Reims"),
                  SizedBox(width: 60,),
                  Container(
                    width: 40,
                    height: 40,
                    child: Expanded(child: Image(image: AssetImage('assets/Stade_de_Reims_Logo_(2020).svg.png')),),
                  ),
                  SizedBox(width: 25,),
                  Text("${Provider.of<SMProvider>(context,listen: false).lst[2].hours}",style: TextStyle(
                      color: Colors.white
                  ),),
                  SizedBox(width: 30,),
                  Container(
                    width: 45,
                    height: 45,
                    child: Expanded(child: Image(image: AssetImage('assets/PSG_logo_PNG13.png')),),
                  ),
                  SizedBox(width: 20,),
                  Text("Paris\n Saint-Germain"),
                ],
              ),
            ),
            SizedBox(height: 1,),
            Container(
              color: Color(0xff2c666e),
              child: Row(
                children: [
                  SizedBox(width: 10,),
                  Text("Leicester City"),
                  SizedBox(width: 15,),
                  Container(
                    width: 40,
                    height: 40,
                    child: Expanded(child: Image(image: AssetImage('assets/listerC10.png')),),
                  ),
                  SizedBox(width: 25,),
                  Text("${Provider.of<SMProvider>(context,listen: false).lst[2].hours}",style: TextStyle(
                      color: Colors.white
                  ),),
                  SizedBox(width: 15,),
                  Container(
                    width: 60,
                    height: 60,
                    child: Expanded(child: Image(image: AssetImage('assets/bronmoth.png')),),
                  ),
                  SizedBox(width: 15,),
                  Text("Bronmouth"),
                ],
              ),
            ),
            SizedBox(height: 1,),
            Container(
              color: Color(0xff2c666e),
              child: Row(
                children: [
                  SizedBox(width: 10,),
                  Text("Leicester City"),
                  SizedBox(width: 15,),
                  Container(
                    width: 40,
                    height: 40,
                    child: Expanded(child: Image(image: AssetImage('assets/listerC10.png')),),
                  ),
                  SizedBox(width: 25,),
                  Text("${Provider.of<SMProvider>(context,listen: false).lst[2].hours}",style: TextStyle(
                      color: Colors.white
                  ),),
                  SizedBox(width: 15,),
                  Container(
                    width: 60,
                    height: 60,
                    child: Expanded(child: Image(image: AssetImage('assets/bronmoth.png')),),
                  ),
                  SizedBox(width: 15,),
                  Text("Bronmouth"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
