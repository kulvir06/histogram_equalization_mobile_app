import 'package:flutter/foundation.dart';
import 'dart:math';

numExtractor(x) {
  
  var arr = x.split(" ");
  var numArr = List<int>.filled(arr.length, 0);
  int i = 0;
  for (i = 0; i < arr.length; i++) {
    if (arr[i] != " ") {
      numArr[i] = int.parse(arr[i]);
    }
  }
  print(numArr);
  return numArr;
}

sumOfArray(x) {
  var s = 0.0;
  for (var i = 0; i < x.length; i++) {
    s = s + x[i];
  }
  return s;
}

//bezkoder round function in dart//
double roundDouble(double value, int places) {
  double? mod = pow(10.0, places) as double?;
  return ((value * mod!).round().toDouble() / mod);
}

probabilityDistribution(x, n) {
  var arr = List<double>.filled(x.length, 0);
  for (int i = 0; i < x.length; i++) {
    arr[i] = roundDouble(x[i] / n, 4);
  }
  return arr;
}

cumulativeDistribution(x) {
  var arr = List<double>.filled(x.length, 0);
  arr[0] = x[0];
  for (int i = 1; i < x.length; i++) {
    arr[i] = roundDouble(x[i] + arr[i - 1], 4);
  }
  return arr;
}

multiplyCDF(x, val) {
  var arr = List<double>.filled(x.length, 0);
  for (int i = 0; i < x.length; i++) {
    arr[i] = roundDouble(x[i] * val, 4);
  }
  return arr;
}

histogramEqualizationLevel(x) {
  var arr = List<int>.filled(x.length, 0);
  for (int i = 0; i < x.length; i++) {
    arr[i] = (x[i]).round();
  }
  return arr;
}
