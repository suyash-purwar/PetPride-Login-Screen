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
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
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

                Form(
                  child: Theme(
                    data: ThemeData(
                      primaryColor: Colors.black,
                      accentColor: Colors.black54,
                      brightness: Brightness.light,
                      inputDecorationTheme: InputDecorationTheme(
                        labelStyle: TextStyle(color: Colors.black, fontSize: 17),
                      )
                    ),
                    child: Container(
                      margin: EdgeInsets.only(top: 50),
                      padding: EdgeInsets.all(40.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          TextFormField(
                            decoration: InputDecoration(
                              labelText: "Email Address",
                              border: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.black87,
                                  width: 2.0
                                ),
                              )
                            ),
                            keyboardType: TextInputType.emailAddress,
                          ),
                          TextFormField(
                            decoration: InputDecoration(
                              labelText: "Password",
                            ),
                            keyboardType: TextInputType.text,
                            obscureText: true,
                          )
                        ],
                      )
                    )
                  ),
                )
              ],
            ),
          ]
        ),
      )
    );
  }
}