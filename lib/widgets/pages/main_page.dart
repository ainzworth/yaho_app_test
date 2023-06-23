import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  static String pageName = '/main';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(icon: Icon(Icons.arrow_back),onPressed:(){ Navigator.pop(context);},)
      ),
      body: Container(
        child: Column( 
          children: [
          Expanded(
              child: ListView(
                children: [
                  Text("This is the main page")
                ],
              )
            )
          ],
        ),
      ),
    );
  }
} 