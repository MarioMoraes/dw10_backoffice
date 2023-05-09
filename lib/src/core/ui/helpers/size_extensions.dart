import 'package:flutter/material.dart';

extension SizeExtensions on BuildContext {
  double get sizeWidth => MediaQuery.of(this).size.width;
  double get sizeHeight => MediaQuery.of(this).size.height;
  double get sizeShortestSide => MediaQuery.of(this).size.shortestSide;
  double get sizeLongestSide => MediaQuery.of(this).size.longestSide;

  double percentWidth(double percent) => sizeWidth * percent;
  double percentHeigth(double percent) => sizeHeight * percent;
}
