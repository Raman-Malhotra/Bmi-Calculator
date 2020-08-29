import 'package:flutter/material.dart';
import 'dart:math';

class calculate{
  int height;
  int weight;
  calculate( int h, int w)
  {
    height=h;
    weight=w;
  }double bmi;
  String bc()
  {
     bmi=weight/pow(height/100,2);
    return bmi.toStringAsFixed(1);
  }
  String status()
  {
    if(bmi>=25)
      {
        return 'Overweight';
      }
    else if(bmi>18.5){
      return 'Normal';
    }
    else{
      return 'UnderWeight';
    }
  }
  String rv()
  {
    if(bmi>=25)
    {
      return 'You have higher body weight then normal.Try to exercise more.';
    }
    else if(bmi>18.5){
      return 'You have normal body weight.Good Job';
    }
    else{
      return 'You have lower body weight then normal.Try to eat more.';
    }
  }

}