import 'package:app/utils/colors/colors.dart';
import 'package:flutter/material.dart';

class TextStyles{
  static TextStyle whitefs14 = TextStyle(
    color: Colors.white,
    fontSize: 14,
    decoration: TextDecoration.none,
  );
    static TextStyle whitefs18 = TextStyle(
    color: Colors.white,
    fontSize: 18,
    decoration: TextDecoration.none,
  );

    static TextStyle blackfs14 = TextStyle(
    color: Colors.black87,
    fontSize: 14,
    decoration: TextDecoration.none,
  );
static TextStyle primaryfs14fw4 = TextStyle(
    color: AppColors.primary,
    fontSize: 14,
    fontWeight: FontWeight.w400,
    decoration: TextDecoration.none,
  );
  static TextStyle pageHeadingTextStyle = TextStyle(
    color: Colors.black87,
    fontSize: 18,
    decoration: TextDecoration.none,
  );

  static TextStyle greyTextStyle = TextStyle(
    color: Colors.grey[400],
    fontSize: 14,
    decoration: TextDecoration.none,
  );

  static TextStyle labelTextStyle = TextStyle(
    color: AppColors.black,
    fontSize: 14,
    decoration: TextDecoration.none,
    fontWeight: FontWeight.w700
  );
}