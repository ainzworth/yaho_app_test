import 'package:app/widgets/pages/main_page.dart';
import 'package:app/widgets/pages/sign_in_page.dart';
import 'package:app/widgets/sign_up_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.amber,
        // colorScheme: ColorScheme(
        //   brightness: Brightness.light,
        //   primary: Colors.black26,
        //   onPrimary: Colors.black26,
        //   secondary: Colors.black26,
        //   onSecondary: Colors.black26,
        //   error: Colors.black26,
        //   onError:Colors.black26 ,
        //   background: Colors.black26,
        //   onBackground:Colors.black26 ,
        //   surface: Colors.black26,
        //   onSurface: Colors.black26,
        // )
      ),
      home: SignInPage(),
      routes: {
        '/register': (context) => RegisterPage(),
        MainPage.pageName: (context) => MainPage()
      },
    );
  }
}
