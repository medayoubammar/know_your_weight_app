import 'package:flutter/material.dart';
import 'package:urweight/planet.dart';
import 'package:urweight/resultScreen.dart';

class StartGame extends StatefulWidget {
  String weight;
  StartGame({this.weight});


  @override
  _StartGameState createState() => _StartGameState(weight);
}

class _StartGameState extends State<StartGame> {
 String weight;
 _StartGameState(this.weight);
  List<Planet> locations = [
    Planet(surfaceG: 0.38, location: 'عطارد', flag: 'merc.png'),//mercury
    Planet(surfaceG: 0.91, location: 'الزهرة', flag: 'venus.png'), //venus
    Planet(surfaceG: 0.38, location: 'المريخ', flag: 'mars.png'),//mars
    Planet(surfaceG: 2.34, location: 'المشتري', flag: 'jupiter.png'),//jupiter
    Planet(surfaceG: 0.93, location: 'زحل', flag: 'Saturnx.png'),//saturn
    Planet(surfaceG: 0.92, location: 'أورانوس', flag: 'uranus.png'),//uranus
    Planet(surfaceG: 1.12, location: 'نبتون', flag: 'Neptune.png'),//neptune

  ];

double finaleResDouble;
String finaleRes;

 void traitement (BuildContext context,index) async {

   finaleResDouble = await CalculWeight (index);
   finaleRes = finaleResDouble.toString();

  Navigator.of(context).push(MaterialPageRoute(
    builder: (context) => Resultas(finaleRes : finaleRes),
   ));
   
 }
 
  double CalculWeight (index)
  {
     Planet  planetChosen = locations[index];
  print(weight);
     double weightD = double.parse(weight);
    double result  = weightD * planetChosen.surfaceG ;

  return result;

   

  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(
            color: Colors.black, //change your color here
          ),
          title: Text("إختيار الكوكب",style: TextStyle( fontFamily: "Arabich" , fontSize: 30 , color: Colors.black),),
          centerTitle: true ,
          elevation: 0.0,
          backgroundColor: Colors.lightBlue,

        ),
        body:
        Container(
          color: Colors.white70,
          child: ListView.builder(

              itemCount: locations.length,
              itemBuilder: (context, index){

                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Card(color: Colors.white60,child:
                    ListTile(onTap: () {
                      traitement(context,index);
                        }, title: Text(locations[index].location),
                             leading: CircleAvatar(backgroundImage: AssetImage('assets/${locations[index].flag}'),)

                    ,),


                  ),
                );

              }
          ),
        )
    );
  }
}
