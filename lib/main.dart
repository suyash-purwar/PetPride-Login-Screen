import 'package:flutter/material.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  Widget build(BuildContext build) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
      theme: ThemeData(
        primaryColor: Color.fromRGBO(146, 220, 229, 1.0),
      )
    );
  }
}

class LoginPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => LoginPageState();
}

class LoginPageState extends State<LoginPage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child:Stack(
          fit: StackFit.expand,
          children: <Widget>[
            Image(
              image: AssetImage("assets/images/backgroundimg.jpg"),
              fit: BoxFit.cover,
              color: Theme.of(context).primaryColor.withOpacity(1),
              colorBlendMode: BlendMode.softLight
            ),

            Center(
              child: Container(
                height: double.infinity,
                width: double.infinity,
                color: Colors.white.withOpacity(0.5)
              )
            ),

            Column(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: 100),
                  child: Text(
                    "Pet Pride",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 45,
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.w900,
                      letterSpacing: 2.5,
                      height: 1
                    )
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 0),
                  child: Text(
                    "OF NEW YORK",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      height: 0.5,
                      color: Colors.black87,
                      fontSize: 15,
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.w600,
                      letterSpacing: 5,
                      wordSpacing: 5
                    )
                  ),
                ),
              ],
              
            ),

          ]
        ),
      )
    );
  }
}