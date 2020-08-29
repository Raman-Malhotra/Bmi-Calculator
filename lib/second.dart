import 'package:flutter/material.dart';
import 'main.dart';

class second extends StatelessWidget {
  String bmi;
  String st;
  String ab;
  second(String bm,String ov,String st)
  {
    bmi=bm;
    this.st=ov;
    ab=st;

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI CALCULATOR"),
      ),
      body: Column(
        children: <Widget>[
          Text(
            "Your Result",
            style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.bold,
            ),
          ),
          Expanded(
            child: Container(
              width: double.infinity,
              margin: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
              decoration: BoxDecoration(
                color: Colors.blueGrey.shade900,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[

                  Text(
                    st,
                    style: TextStyle(

                      color: Colors.green,
                      fontSize: 30
                    ),
                  ) ,
                  Text(
                    bmi,
                    style: TextStyle(
                      fontSize: 80,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                   Text(
                    ab,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),



                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: ()
            {
              Navigator.pop(context);
            },
            child:Container(
              color: Color(0xffFF0067),
              child: Center(
                  child: Text(
                    "Re-Calculate",
                    style: TextStyle(fontSize: 20, letterSpacing: 2),
                  )),
              width: double.infinity,
              height: 80,
            ),
          )

        ],
      ),
    );
  }
}
