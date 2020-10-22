import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:urweight/start.dart';

class PreStart extends StatefulWidget {
  @override
  _PreStartState createState() => _PreStartState();
}

class _PreStartState extends State<PreStart> {

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  String weight;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.black, //change your color here
        ),
        title: Text("إكتشف وزنك",style: TextStyle( fontFamily: "Arabich" , fontSize: 30 , color: Colors.black),),
        centerTitle: true ,
        elevation: 0.0,
        backgroundColor: Colors.lightBlue,

      ),
      body:
      Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/bg2.gif"),
              fit: BoxFit.cover,
            ),
          ),

          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(80.0),
                child: Center(
                  child: new TextField(
                  onChanged: (x){
                    weight = x;
                  },

                   style: TextStyle(color: Colors.greenAccent,fontSize: 30),
                    decoration: new InputDecoration(

                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.greenAccent, width: 5.0),
                      ),



                        labelStyle: TextStyle(color: Colors.amber, fontSize: 30,
                    fontFamily: 'Arabich' ,


                    ),labelText:" أدخل وزنك الطبيعي بالكغ "  ),
                    keyboardType: TextInputType.number,
                    inputFormatters: <TextInputFormatter>[
                      FilteringTextInputFormatter.digitsOnly
                    ], // Only numbers can be entered
                  ),

                ),
              ),
             RaisedButton.icon(color: Colors.black,onPressed: (
                 ){
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => StartGame(weight : weight),
                  ));
                  } , icon: Icon(Icons.forward,color: Colors.greenAccent), label: Text(""))
            ],
          )),

    );
  }
}
