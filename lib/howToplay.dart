import 'package:flutter/material.dart';

class HowToPlay extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.black, //change your color here
        ),
        title: Text("انظر ايضا",style: TextStyle( fontFamily: "Arabich" , fontSize: 30 , color: Colors.black),),
        centerTitle: true ,
        elevation: 0.0,
        backgroundColor: Colors.lightBlue,

      ),
      body:
      Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/bg.gif"),
            fit: BoxFit.cover,
          ),
        ),
        child: Card(
          color: Colors.lightBlue.withOpacity(0.8),


          shape: StadiumBorder(
            side: BorderSide(
              color: Colors.black,
              width: 1.0,


            ),),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(5,100,30,10),
              child: Container(



                child: Column(
                  children: [
                    Text("مرحبا", style: TextStyle(fontFamily: 'Arabich', fontSize: 30 , color: Colors.black),),
                    SizedBox(height: 50,),
                    Center(
                      child: Text( " هذا التطبيق يمكنك من إكتشاف وزنك الحقيقي على جميع الكواكب في المجموعة الشمسية      . "
                          " عليك بإختيار الكوكب و تحديد وزنك الحقيقي و اترك الباقي للتطبيق     ."
                        " هذا التطبيق صنع من طرف شخص مهووس بالتطبيقات و التكنولوجيا . "
                      "في الحقيقة هذا التطبيق لا يخضع لحقوق النشر ، يمكنك سرقته إن اردت."
                          " استمتع بوقتك "
                          "وشكرا."
                        , style: TextStyle( fontFamily : 'Arabich',fontSize: 30 , color: Colors.black),),
                    ),

                  ],
                ),
              ),
            ),
          ),
        ),
      )
      ,
    );
  }
}


