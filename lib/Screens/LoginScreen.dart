import 'package:bookingapp/Screens/RegistrationScreen.dart' as route;
import 'package:bookingapp/Screens/mainscreen.dart' as route1;
import 'package:bookingapp/main.dart';
import 'package:bookingapp/screens/registrationscreen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _foreKey = GlobalKey<FormState>();
  bool showPassword = true;
  bool showConfirmPassword = true;
  final TextEditingController emailController = new TextEditingController();
  final TextEditingController passwordController = new TextEditingController();

  get checkedValue => false;
  bool flagWarranty = false;
  set _checkedValue(bool? _checkedValue) {}

  @override
  Widget build(BuildContext context) {
    final emailField = TextFormField(
      //rgba(50, 54, 66, 1)
      style: TextStyle(
        fontFamily: 'Poppins',
        fontWeight: FontWeight.bold,
        color: Color.fromRGBO(50, 54, 66, 1),
      ),
      autofocus: false,
      controller: emailController,
      keyboardType: TextInputType.emailAddress,
      validator: (value) {
        if (value == null || value.trim().isEmpty) {
          return 'This field is required.';
        }
        if (value.isEmpty ||
            !RegExp(r'^[\w-\.]+@([\w-]+\.)[\w-]{2,4}').hasMatch(value)) {
          return "Invalid email!";
        } else {
          return null;
        }
      },
      onSaved: (value) {
        emailController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        errorStyle: TextStyle(
          fontFamily: 'Poppinsbold',
        ),
        suffixIcon: Icon(Icons.mail),
        contentPadding: EdgeInsets.fromLTRB(20, 20, 20, 15),
        hintText: "Email",
        hintStyle: new TextStyle(
          fontSize: 16,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.bold,
          color: Color.fromRGBO(50, 54, 66, 1),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(3),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Color.fromRGBO(50, 54, 66, 1),
          ),
        ),
      ),
    );
    final passwordField = TextFormField(
      style: TextStyle(
        fontFamily: 'Poppins',
        fontWeight: FontWeight.bold,
        color: Color.fromRGBO(50, 54, 66, 1),
      ),
      autofocus: false,
      controller: passwordController,
      obscureText: showPassword,
      onSaved: (value) {
        passwordController.text = value!;
      },
      textInputAction: TextInputAction.done,
      validator: (value) {
        if (value == null || value.trim().isEmpty) {
          return 'This field is required.';
        }
        if (value.isEmpty ||
            !RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[#?!@%^&*-]).{8,}')
                .hasMatch(value)) {
          return 'Invalid password!';
        }
        // Return null if the entered password is valid
        return null;
      },
      decoration: InputDecoration(
          hintText: "Password",
          errorStyle: TextStyle(
            fontFamily: 'Poppinsbold',
          ),
          suffixIcon: IconButton(
            icon: Icon(Icons.remove_red_eye),
            onPressed: () => setState(() => showPassword = !showPassword),
          ),
          contentPadding: EdgeInsets.fromLTRB(20, 20, 20, 15),
          hintStyle: new TextStyle(
            fontSize: 16,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.bold,
            color: Color.fromRGBO(50, 54, 66, 1),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(3),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Color.fromRGBO(50, 54, 66, 1),
            ),
          )),
    );

    final loginButton = Material(
      elevation: 10,
      borderRadius: BorderRadius.circular(3),
      color: Color.fromRGBO(241, 106, 103, 1),
      child: MaterialButton(
        height: 60,
        padding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        minWidth: MediaQuery.of(context).size.width,
        onPressed: () async {
          var body = {
            //isto dole
            "password": passwordController.text,

            "email": emailController.text,
          };

          var response = await http.post(Uri.parse("http://172.26.160.1/login"),
              headers: {
                "Content-Type": "application/json-patch+json",
                "accept": "text/plain"
              },
              body: jsonEncode(body));

          if (response.statusCode == 200) {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => route1.MainScreen()));
          } else {
            //greska
            print(jsonDecode(response.body));
          }
        },
        child: Text(
          "Sign in",
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
            height: 900,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/decorative-elements.png"),
                fit: BoxFit.cover,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(24.0),
              child: Form(
                key: _foreKey,
                child: Column(
                  //mainAxisAlignment: MainAxisAlignment.center,
                  //crossAxisAlignment: CrossAxisAlignment.center,

                  children: <Widget>[
                    new Positioned(
                  top: 0.0,
                  left: 0.0,
                  right: 0.0,
                  child: AppBar(
                    title: Text(''),// You can add title here
                    leading: new IconButton(
                      icon: new Icon(Icons.arrow_back_ios, color: Colors.grey),
                      onPressed: () => Navigator.push(context,
              MaterialPageRoute(builder: (context) => route1.MainScreen())),
                    ),
                    backgroundColor: Colors.blue.withOpacity(0.0), //You can make this transparent
                    elevation: 0.0, //No shadow
                  ),),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text("Sign in",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: Color.fromRGBO(241, 106, 103, 1),
                            fontFamily: 'Poppinsextrabold',
                            fontWeight: FontWeight.bold,
                            fontSize: 40,
                          )),
                    ),
                    //SizedBox(
                    //height: 250,
                    //child: Image.asset(
                    //"assets/zebooklogo.png",
                    //fit: BoxFit.fitWidth,
                    //width: 150,
                    //height: 150,
                    // )),

                    SizedBox(height: 139),
                    emailField,
                    SizedBox(height: 36),
                    passwordField,
                    SizedBox(height: 15),

                    Align(
                        alignment: Alignment.topLeft,
                        child: CheckboxListTile(
                          title: Text(
                            "Remember me",
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 14,
                              color: Color.fromRGBO(50, 54, 66, 1),
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                          value: checkedValue,
                          onChanged: (newValue) {
                            setState(() {
                              _checkedValue = false;
                            });
                          },

                          controlAffinity: ListTileControlAffinity
                              .leading, //  <-- leading Checkbox
                        )),

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
                    SizedBox(height: 65),
                    loginButton,
                    SizedBox(height: 32),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text("Don't have an account? ",
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.bold,
                                fontSize: 14,
                              )),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          RegistraionScreen()));
                            },
                            child: Text(
                              "Sign up.",
                              style: TextStyle(
                                  fontFamily: 'Poppinsbold',
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromRGBO(241, 106, 103, 1),
                                  fontSize: 14),
                            ),
                          ),
                        ])
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
