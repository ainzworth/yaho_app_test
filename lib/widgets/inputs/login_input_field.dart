import 'package:app/utils/colors/colors.dart';
import 'package:app/utils/fonts.dart';
import 'package:app/utils/radius/border_radius.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class LoginInputField extends StatelessWidget {
  String? oldString = "";
  bool isNumber = false;
  String? Function(String?)? checkValidator;
  TextInputType? textInputType = TextInputType.text;
  final String hint;
  final TextEditingController textEditingController;
  LoginInputField(
      {super.key,
      required this.hint,
      required this.textEditingController,
      this.checkValidator,
      this.textInputType});

  @override
  Widget build(BuildContext context) {
    textInputType == TextInputType.number ? isNumber = true : isNumber = false;

    return Container(
        child: TextFormField(
      autovalidateMode: AutovalidateMode.onUserInteraction,
      onChanged: (text) {
        print("${text}");
        if (text.length == 10) {
          // oldString = textEditingController.text;

          // String str = textEditingController.text.substring(0, textEditingController.text.length - 1);
          // textEditingController.text = str;
          print("it is over 10 stopppp");
        }
      },
      keyboardType: textInputType,
      inputFormatters: textInputType == TextInputType.number
          ? <TextInputFormatter>[FilteringTextInputFormatter.digitsOnly]
          : <TextInputFormatter>[
              FilteringTextInputFormatter.singleLineFormatter
            ],


            validator: checkValidator,
            // (value) {
             
            //     return checkValidator!(value);
      
            // },
      // validator: (value) {
      //   // if(value !=null && value.length == 11 && isNumber){
      //   //   // String str = textEditingController.text
      //   //   //   .substring(0, textEditingController.text.length - 1);
      //   //   String? str = oldString;
      //   //   textEditingController.text = str!;

      //   //   return ("Phone number can not have more than 10 characters");
      //   // }
      //   if (value != null) {
      //     if (value.length != 10 && isNumber) {
      //       return ("Phone have to has 10 characters");
      //     }
      //     if (value.isNotEmpty && value.length < 5) {
      //       return ("Phone number is less than 5 characters");
      //     } else if (value.isEmpty) {
      //       return ("Field is empty");
      //     }
      //   }

      //   return null;
      // },
      controller: textEditingController,
      decoration: InputDecoration(
        hintText: hint,
        floatingLabelBehavior: FloatingLabelBehavior.always,
        border: OutlineInputBorder(
            borderSide: BorderSide(
              color: AppColors.greyBorder,
            ),
            borderRadius: BorderRadius.circular(AppBorderRadius.mediumBorder)),
        focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: AppColors.primary)),
      ),
    ));
  }
}
