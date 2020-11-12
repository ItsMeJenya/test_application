import 'package:flutter/material.dart';
import 'dart:math';


class ColorGeneration{
  static Color random(){
    return Color(Random().nextInt(0xffffffff));
  }
}