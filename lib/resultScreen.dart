import 'package:flutter/material.dart';
class Resultas extends StatefulWidget {
  String finaleRes;
  Resultas({this.finaleRes});

  @override
  _ResultasState createState() => _ResultasState(finaleRes);
}

class _ResultasState extends State<Resultas> {
  String finaleRes;
 
  _ResultasState(this.finaleRes);
  
  @override
  Widget build(BuildContext context) {
    return     Scaffold(
        appBar: AppBar(
          title: Text("النتيجة",style: TextStyle( fontFamily: "Arabich" , fontSize: 30 , color: Colors.black),),
          centerTitle: true ,
          elevation: 0.0,
          backgroundColor: Colors.lightBlue,

        ),
        body: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/bg3.gif"),
                fit: BoxFit.cover,
              ),
            ),
            child:
            Column(
                children : [
                  Row(
                    children:<Widget>[
                      SizedBox(height: 50,),
                      Padding(
                        padding: const EdgeInsets.all(50.0),
                        child: Text("وزنك على هذا الكوكب هو ",style: TextStyle( fontFamily: "Arabich" , fontSize: 30 , color: Colors.amber),),
                      ),
                      SizedBox(height: 150),



                    ],
                  ),
                  Row(
                    children: [
                      Text("     كغ",style: TextStyle( fontFamily: "Arabich" , fontSize: 70 , color: Colors.amber),),
                      Text(finaleRes.substring(0,5),style: TextStyle( fontFamily: "Arabich" , fontSize: 70 , color: Colors.amber),),

                    ],
                  ),

                ]
            )






        )
    );
  }
}
