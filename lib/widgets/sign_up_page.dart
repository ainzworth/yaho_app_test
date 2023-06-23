import 'package:app/utils/buttonStyles/button_styles.dart';
import 'package:app/utils/colors/colors.dart';
import 'package:app/utils/fonts.dart';
import 'package:app/utils/padding/padding.dart';
import 'package:app/widgets/inputs/input_dropdown.dart';
import 'package:app/widgets/inputs/login_input_field.dart';
import 'package:app/widgets/texts/texts.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
 
  RegisterPage({Key? key}) : super(key:key);
  final _formkey = GlobalKey<FormState>();
  final usernameController = TextEditingController();
  final emailController = TextEditingController();
  final phoneController = TextEditingController();

  void loginUser(context){
    if(_formkey.currentState !=null && _formkey.currentState!.validate()){
        print(usernameController.text);
        print(emailController.text);
        print(phoneController.text);
        print('login successfully');
    }else{
        print('login failed');
    }
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    print("page width: $width");
    return Scaffold(
      appBar: AppBar(
          backgroundColor: AppColors.primary,
          leading: IconButton(icon: Icon(Icons.arrow_back),onPressed:(){ Navigator.popAndPushNamed(context, '/');},),
        centerTitle: true,
        title: Text('Register page',style: TextStyles.whitefs18),

      ),
      body: Container(
        margin: const EdgeInsetsDirectional.symmetric(horizontal: 20),
        child:Column(
          children: [
            Expanded(child: 
            ListView(
              children: [     
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                          const CustomPadding(height: 30),
                          Image(image: AssetImage('logo.png')),
                          TextCustom(
                              content: "Create an Account",
                              textStyle: TextStyles.pageHeadingTextStyle),
                          const CustomPadding(height: 10),
                          TextCustom(
                            content: "Enter your information to register",
                            textStyle: TextStyles.greyTextStyle,
                          ),
                          const CustomPadding(height: 20),
                      ],
                    ),
                    Form(
                        key: _formkey,
                        child: Column(children: [
                          Container(
                              alignment: Alignment.centerLeft,
                              child: TextCustom(
                                  content: "Your full name",
                                  textStyle: TextStyles.labelTextStyle)),
                          CustomPadding(height: 5),
                          LoginInputField(
                              hint: "Enter your full name...",
                              textEditingController: usernameController),
                          CustomPadding(height: 20),
                          Container(
                              alignment: Alignment.centerLeft,
                              child: TextCustom(
                                  content: "Your Email",
                                  textStyle: TextStyles.labelTextStyle)),
                          CustomPadding(height: 5),
                          LoginInputField(
                              hint: "Enter your Email...",
                              textEditingController: emailController),
                          CustomPadding(height: 20),
                          Container(
                              alignment: Alignment.centerLeft,
                              child: TextCustom(
                                  content: "Your Phone number",
                                  textStyle: TextStyles.labelTextStyle)),
                          CustomPadding(height: 5),
                          Row(children: [
                            InputDropdown(),
                            CustomPadding(height: 0, width: 20),
                            Expanded(
                                child: LoginInputField(
                              hint: "Enter your Phone number...",
                              textEditingController: phoneController,
                            )),
                          ]),
                          CustomPadding(height: 20),
                         
                              
                        ])),
              
                ],
            )
            ),
            Container(
                  margin: const EdgeInsetsDirectional.symmetric(
                      horizontal: 20, vertical: 10),
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: 40,
                    child: TextButton(
                        onPressed: () => loginUser(context),
                        child: Text(
                          "Resister",
                          style: TextStyles.whitefs14,
                        ),
                        style: ButtonStyles.flatButtonStyle),
                  ))
          ],
        )
          
      ),
   
    );
  }
}
