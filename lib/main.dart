import 'package:flutter/material.dart';
import 'dart:math';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'second.dart';
import 'calculate.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xff0A0D22),
        scaffoldBackgroundColor: Color(0xff0A0D22),


      ),


      home: InputPage(),
    );
  }
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  static Color iac=Color(0xff111328);
  Color mc=iac;
  Color fc=iac;
  Color ac=Color(0xff1D1F33);
  int h=180;
  int weight=60;
  int age=20;

  void uc(int gender)
  {
    if(gender==1)
      {
        if(mc==iac)
          {
            mc=ac;fc=iac;
          }
        else{
          mc=iac;fc=iac;
        }
      }
    else if(gender==2)
    {
      if(fc==iac)
      {
        fc=ac; mc=iac;
      }
      else{
        fc=iac; mc=iac;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Row(

              children: <Widget>[

                    Expanded(child: reuse(mc,GestureDetector(
                     onTap: (){
                       setState(() {
                         uc(1);
                       });
                     },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[

                          Icon(
                            FontAwesomeIcons.mars,
                            size: 80,

                          ),
                          SizedBox(
                            height: 15,
                            width: double.infinity,
                          ),
                          Text("Male",style: TextStyle(
                            fontSize: 18,
                            color: Color(0xff8D8E98),
                          ),)
                        ],
                      ),
                    ))),

                Expanded(child:reuse(fc,GestureDetector(
                  onTap: (){
                    setState(() {
                      uc(2);
                    });
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        FontAwesomeIcons.venus,
                        size: 80,

                      ),
                      SizedBox(
                        height: 15,
                        width: double.infinity,
                      ),
                      Text("Female",style: TextStyle(
                        fontSize: 18,
                        color: Color(0xff8D8E98),
                      ),)
                    ],
                  ),
                ))),
              ],
            ),
          ),
          Expanded(
            child:  Row(
              children: <Widget>[
                Expanded(child: reuse(Color(0xff1D1F33),Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(
                      height: 10,
                    ),
                    Text("HEIGHT",style: TextStyle(
                      fontSize: 18,
                      color: Color(0xff8D8E98),
                    ),),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: <Widget>[
                        Text(h.toString(),style: TextStyle(
                          fontWeight: FontWeight.w900,
                          fontSize: 40,
                          color: Colors.white,
                        ),),
                        Text("cm",style: TextStyle(
                          fontSize: 16,
                          color: Color(0xff8D8E98),
                        ),)

                      ],
                    ),

                    SliderTheme(
                      data: SliderTheme.of(context).copyWith(

                        thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15),
                        activeTrackColor: Colors.white, thumbColor: Color(0xffFF0067),
                      ),
                      child: Slider(value: h.toDouble(),inactiveColor:  Color(0xff8D8E98),
                          activeColor:Colors.white ,


                          max: 220,
                          min: 120,
                        onChanged: (double newValue) {
                          setState(() {
                            h=newValue.toInt();
                          });
                        },
                      ),
                    )],
                ))),
              ],
            ),
          ),
          Expanded(
            child: Row(

              children: <Widget>[

                Expanded(child: reuse(Color(0xff1D1F33),Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[


                    Text("Weight",style: TextStyle(
                      fontSize: 18,
                      color: Color(0xff8D8E98),
                    ),),
                    Text(weight.toString(),style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: 40,
                      color: Colors.white,
                    ),),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[

                        myButton(FontAwesomeIcons.plus,()
                            {
                              setState(() {
                                weight++;
                              });
                            }

                        ),
                        myButton(FontAwesomeIcons.minus,()
                        {
                          setState(() {
                            weight--;
                          });
                        }),
                      ],
                    )
                  ],
                ))),

                Expanded(child: reuse(Color(0xff1D1F33),Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[


                    Text("Age",style: TextStyle(
                      fontSize: 18,
                      color: Color(0xff8D8E98),
                    ),),
                    Text(age.toString(),style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: 40,
                      color: Colors.white,
                    ),),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[

                        myButton(FontAwesomeIcons.plus,()
                        {
                          setState(() {
                            age++;
                          });
                        }

                        ),
                        myButton(FontAwesomeIcons.minus,()
                        {
                          setState(() {
                            age--;
                          });
                        }),
                      ],
                    )
                  ],
                ))),
              ],
            ),
          ),
          GestureDetector(
            onTap:  () {
              calculate cl=new calculate(h, weight);

    Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => second(cl.bc(),cl.status(),cl.rv())),
    );
    },
            child:  Container(
              color: Color(0xffFF0067),
              child:  Center(child: Text("Calculate",style:
                TextStyle(
                  fontSize: 20,
                  letterSpacing: 2
                )
                ,)),
              width: double.infinity ,
              height: 80,
            ),
          )
        ],
      )
      
    );
  }
}

class reuse extends StatelessWidget {
   Color colour; Widget w;
  reuse(  Color a,Widget b)
  {
    colour=a;
    w=b;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: w,
      margin: EdgeInsets.all(15),


      decoration: BoxDecoration(
        color: colour,
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}
class myButton extends StatelessWidget {
  IconData id;
  Function op;
  myButton(IconData icon,Function onpress)
  {
    id=icon;op=onpress;
  }
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      fillColor: Color(0xFF4C4F5E) ,
      disabledElevation: 160,

      elevation: 160,
      constraints: BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
        
      ),
onPressed: op,
      shape: CircleBorder(),

      child:  Icon(id),

    );
  }
}

