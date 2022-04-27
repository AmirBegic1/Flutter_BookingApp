import 'package:flutter/material.dart';
import 'package:bookingapp/Screens/LoginScreen.dart' as route1;
import 'package:bookingapp/Screens/RegistrationScreen.dart' as route;
import 'package:bookingapp/Screens/mainscreen.dart' as route3;
import 'package:bookingapp/Screens/aboutusscreen.dart' as route4;
import 'package:bookingapp/Screens/contactscreen.dart' as route5;
import 'package:bookingapp/Screens/admin.dart' as admin;
class NavBar extends StatelessWidget {
  const NavBar({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _foreKey = GlobalKey<FormState>();
    final homeButton = Material(
      elevation: 10,
      borderRadius: BorderRadius.circular(3),
      color: Color.fromRGBO(241, 106, 103, 1),
      child: MaterialButton(
        height: 41,
        padding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        minWidth: 143,
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => route3.MainScreen()));
        },
        child: Text(
          "Home",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontFamily: 'Poppinsbold',
            fontSize: 16,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
    final aboutusButton = Material(
      elevation: 10,
      borderRadius: BorderRadius.circular(3),
      color: Color.fromRGBO(241, 106, 103, 1),
      child: MaterialButton(
        height: 41,
        padding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        minWidth: 143,
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => route4.AboutUsScreen()));
        },
        child: Text(
          "About us",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontFamily: 'Poppinsbold',
            fontSize: 16,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
    final contactButton = Material(
      elevation: 10,
      borderRadius: BorderRadius.circular(3),
      color: Color.fromRGBO(241, 106, 103, 1),
      child: MaterialButton(
        height: 41,
        padding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        minWidth: 143,
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => const route5.ContactScreen()));
        },
        child: Text(
          "Contact",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontFamily: 'Poppinsbold',
            fontSize: 16,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
    /*final guestButton = Material(
      elevation: 10,
      borderRadius: BorderRadius.circular(3),
      color: Color.fromRGBO(241, 106, 103, 1),
      child: MaterialButton(
        height: 41,
        padding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        minWidth: 143,
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => route3.LoggedScreen()));
          if (_foreKey.currentState!.validate()) {
            Navigator.of(context).pop();
          }
        },
        child: Text(
          "Guest",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontFamily: 'Poppinsbold',
            fontSize: 16,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );*/
    final admin2Button = Material(
      elevation: 10,
      borderRadius: BorderRadius.circular(3),
      color: Color.fromRGBO(241, 106, 103, 1),
      child: MaterialButton(
        height: 31,
        padding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        minWidth: 143,
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => admin.AdminScreen()));
        },
        child: Text(
          "Admin",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontFamily: 'Poppinsbold',
            fontSize: 16,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
    final userButton = Material(
      elevation: 10,
      borderRadius: BorderRadius.circular(3),
      color: Color.fromRGBO(241, 106, 103, 1),
      child: MaterialButton(
        height: 31,
        padding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        minWidth: 143,
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => route1.LoginScreen()));
        },
        child: Text(
          "Sing in",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontFamily: 'Poppinsbold',
            fontSize: 16,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
    final adminButton = Material(
      elevation: 10,
      borderRadius: BorderRadius.circular(3),
      color: Color.fromRGBO(241, 106, 103, 1),
      child: MaterialButton(
        height: 41,
        padding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        minWidth: 143,
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => route.RegistraionScreen()));
        },
        child: Text(
          "Sign up",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontFamily: 'Poppinsbold',
            fontSize: 16,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
    return Scaffold(
        
        backgroundColor: Colors.white,
        body: Center(
          child: SingleChildScrollView(
            
            child: Container(
              
              /*decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/decorative-elements.png"),
                  fit: BoxFit.fill,
                ),
              ),*/
              child: Padding(
                
                padding: const EdgeInsets.all(24.0),
                child: Form(
                  child: Column(
                    children: <Widget>[
                      /*SizedBox(
                          child: Image.asset(
                            "assets/zebook.png",
                            fit: BoxFit.fitWidth,
                            width: 1000,
                            height: 1000,
                          )),*/
                      
                      /*Align(
                        alignment: Alignment.center,
                        child: Text("Zeebook",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              color: Color.fromRGBO(241, 106, 103, 1),
                              fontFamily: 'Poppinsextrabold',
                              fontWeight: FontWeight.bold,
                              fontSize: 50,
                            )),
                      ),
                      SizedBox(height: 0),
                      Align(
                        alignment: Alignment.center,
                        child: Text("Your number one booking app.",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              color: Color.fromRGBO(241, 106, 103, 1),
                              fontFamily: 'Poppinsbold',
                              fontWeight: FontWeight.bold,
                              fontStyle: FontStyle.italic,
                              fontSize: 14,
                            )),
                      ),*/

                      //SizedBox(
                      //height: 250,
                      //child: Image.asset(
                      //"assets/zebooklogo.png",
                      //fit: BoxFit.fitWidth,
                      //width: 150,
                      //height: 150,
                      // )),

                      /*Align(
                    alignment: Alignment.topLeft,
                    child:Text(
                  "\nRemember me ",
                  style: TextStyle(
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                  color: Color.fromRGBO(50, 54, 66, 1),
                  
                  )
                  ),
                  ),*/
                    
                      homeButton,
                      SizedBox(height: 30),
                      aboutusButton,
                      SizedBox(height: 30),
                      contactButton,
                      SizedBox(height: 30),
                      userButton,
                      SizedBox(height: 30),
                      adminButton,
                      SizedBox(height: 30),
                      admin2Button,

                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            //GestureDetector(
                            //onTap: () {
                            //Navigator.push(
                            //context,
                            //MaterialPageRoute(
                            //  builder: (context) =>
                            // RegistraionScreen()));
                            // },
                          ])
                    ],
                  ),
                ),
              ),
            ),
          ),
        ));
  }
}