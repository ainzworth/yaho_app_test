import 'package:app/utils/colors/colors.dart';
import 'package:app/utils/radius/border_radius.dart';
import 'package:flutter/material.dart';

class ButtonStyles{

  static ButtonStyle flatButtonStyle = TextButton.styleFrom(
    backgroundColor: AppColors.primary,
    foregroundColor: AppColors.black,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(8)),
    ));


    static ButtonStyle flattButtonNBG = TextButton.styleFrom(
    backgroundColor: AppColors.white,

    shape:  RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(8)),
      side: BorderSide(color: AppColors.primary ) 
    ),
  );
}
