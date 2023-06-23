import 'package:app/models/user.dart';
import 'package:app/utils/buttonStyles/button_styles.dart';
import 'package:app/utils/colors/colors.dart';
import 'package:app/utils/fonts.dart';
import 'package:app/utils/padding/padding.dart';
import 'package:app/widgets/inputs/input_dropdown.dart';
import 'package:app/widgets/inputs/login_input_field.dart';
import 'package:app/widgets/pages/main_page.dart';
import 'package:app/widgets/texts/texts.dart';
import 'package:flutter/material.dart';

class SignInPage extends StatelessWidget {
  static String pageName = '/';

  final _formkey = GlobalKey<FormState>();
  SignInPage({super.key});
  final phonenumberTextEditingContoller = TextEditingController();

  void login(context) {
    final userData = [
      {
        "name": "admin",
        "id": "10001",
        "phoneNumber": "0867049337",
        "email": "devilgacon123"
        
      },
      {
        "name": "admin",
        "id": "10001",

        "email": "devilgacon123"
      },
    ];

    List<User> data = userData.map((listItem) {
      return User.fromJson(listItem);
    }).toList();

    print("data.length: ${data[0].name}");

    if (_formkey.currentState!.validate() &&
            phonenumberTextEditingContoller.text.length == 10
        // &&
        // data[0].phoneNumber.toString() ==
        //     phonenumberTextEditingContoller.text
        ) {
      Navigator.pushNamed(context, MainPage.pageName);
    } else {
      print("login failed");
    }
  }

  void doSomething() {
    print("${phonenumberTextEditingContoller.text}");
  }

  @override
  Widget build(BuildContext context) {
    doSomething();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.white,
        centerTitle: true,
        title: Text('Login page', style: TextStyles.pageHeadingTextStyle),
      ),
      body: Container(
          padding: EdgeInsets.symmetric(horizontal: 30, vertical: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                  child: ListView(
                children: [
                  // list view item 1
                  Column(
                    children: [
                      Image(image: AssetImage('logo.png')),
                      TextCustom(
                          content: "Login with phone number",
                          textStyle: TextStyles.pageHeadingTextStyle),
                      const CustomPadding(height: 10),
                      TextCustom(
                        content: "Enter your phone number to get a sign-in OTP",
                        textStyle: TextStyles.greyTextStyle,
                      ),
                      const CustomPadding(height: 20),
                      // list view item 2
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            InputDropdown(),
                            CustomPadding(height: 0, width: 20),
                            Expanded(
                                child: Form(
                                    key: _formkey,
                                    child: LoginInputField(
                                      hint: "Enter your Phone number...",
                                      textEditingController:
                                          phonenumberTextEditingContoller,
                                      textInputType: TextInputType.number,
                                      checkValidator: (value) {
                                        if (value != null) {
                                          if (value.length != 10) {
                                            return ("Phone have to has 10 characters");
                                          }
                                          if (value.isNotEmpty &&
                                              value.length < 5) {
                                            return ("Phone number is less than 5 characters");
                                          }
                                        }
                                      },
                                    ))),
                          ])
                    ],
                  )
                ],
              )),
              Container(
                  child: SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 40,
                child: TextButton(
                    onPressed: () => login(context),
                    child: Text(
                      "Login Here",
                      style: TextStyles.whitefs14,
                    ),
                    style: ButtonStyles.flatButtonStyle),
              )),
              const CustomPadding(height: 10),
              Container(
                  child: SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 40,
                child: TextButton(
                    onPressed: () {
                      Navigator.pushReplacementNamed(context, '/register');

                      print("onPressed");
                    },
                    child: Text(
                      "Register here",
                      style: TextStyles.primaryfs14fw4,
                    ),
                    style: ButtonStyles.flattButtonNBG),
              ))
            ],
          )),
    );
  }
}
