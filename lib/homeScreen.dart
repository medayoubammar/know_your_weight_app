import 'package:flutter/material.dart';


class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return
      SafeArea(
          child :
          Scaffold(
              appBar: AppBar(
                title: Text("مرحبا",style: TextStyle( fontFamily: "Arabich" , fontSize: 30 , color: Colors.black),),
                centerTitle: true ,
                elevation: 0.0,
                backgroundColor: Colors.lightBlue,

              ),
              body: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/bg.gif"),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child:
                  Column(
                      children : [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(100,60,0,0),
                          child: Row(
                            children:<Widget>[
                              SizedBox(height: 50,),
                              Text("إكتشف",style: TextStyle( fontFamily: "Arabich" , fontSize: 80 , color: Colors.amber),),


                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(120,0,0,0),
                          child: Row(
                            children:<Widget>[
                              SizedBox(height: 50,),
                              Text("وزنك",style: TextStyle( fontFamily: "Arabich" , fontSize: 60 , color: Colors.amber),),


                            ],
                          ),
                        ),

                        SizedBox(height: 80,),
                        RaisedButton(color: Colors.lightBlue.withOpacity(0.7),onPressed: (){

                          Navigator.pushNamed(context, '/prestart');

                        } , child: Text("إبدأ",style: TextStyle( fontFamily: "Arabich" , fontSize: 70 , color: Colors.black),)),
                        SizedBox(height: 40,),
                        RaisedButton(color: Colors.lightBlue.withOpacity(0.7),onPressed: (
                            ){

                          Navigator.pushNamed(context, '/howtoplay');
                               } , child: Text("أنظر أيضا",style: TextStyle( fontFamily: "Arabich" , fontSize: 30 , color: Colors.black),))
                        ,
                        SizedBox(height: 120,),
                        Card(child: Text("جميع الحقوق محفوظة  ©  عمار محمد أيوب عمار  © 2021  ", style: TextStyle( fontFamily: "Arabich" )),color: Colors.lightBlue.withOpacity(0.8),)
                      ]
                  )






              )
          )
      );
  }
}


