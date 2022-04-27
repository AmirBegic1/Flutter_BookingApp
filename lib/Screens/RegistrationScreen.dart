import 'dart:convert';
import 'package:bookingapp/Screens/LoginScreen.dart';
import 'package:bookingapp/Screens/mainscreen.dart' as route1;
import 'package:bookingapp/model/user_model.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:http/retry.dart';
import 'dart:async';

class RegistraionScreen extends StatefulWidget {
  RegistraionScreen({Key? key}) : super(key: key);

  @override
  State<RegistraionScreen> createState() => _RegistraionScreenState();
}

class _RegistraionScreenState extends State<RegistraionScreen> {
  final _formKey = GlobalKey<FormState>();
  bool showPassword = true;
  bool showConfirmPassword = true;

  final firstNameEditingController = new TextEditingController();
  final lastNameEditingController = new TextEditingController();
  final usernameNameEditingController = new TextEditingController();
  final emailNameEditingController = new TextEditingController();
  final passwordNameEditingController = new TextEditingController();
  final phoneNameEditingController = new TextEditingController();
  final confirmPasswordNameEditingController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    
    false;
    //email
    final emailNameField = TextFormField(
      style: TextStyle(
        fontFamily: 'Poppins',
        fontWeight: FontWeight.bold,
        color: Color.fromRGBO(50, 54, 66, 1),
      ),
      autofocus: false,
      controller: emailNameEditingController,
      keyboardType: TextInputType.emailAddress,
      onSaved: (value) {
        emailNameEditingController.text = value!;
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
      validator: (value) {
        if (value == null || value.trim().isEmpty) {
          return 'This field is required.';
        }
        if (value.isEmpty ||
            !RegExp(r'^[\w-\.]+@([\w-]+\.)[\w-]{2,4}').hasMatch(value)) {
          return "Invalid Email";
        } else {
          return null;
        }
      },
    );
// first name
    final firstNameField = TextFormField(
      style: TextStyle(
        fontFamily: 'Poppins',
        fontWeight: FontWeight.bold,
        color: Color.fromRGBO(50, 54, 66, 1),
      ),
      autofocus: false,
      controller: firstNameEditingController,
      keyboardType: TextInputType.name,
      onSaved: (value) {
        firstNameEditingController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        errorStyle: TextStyle(
          fontFamily: 'Poppinsbold',
        ),
        suffixIcon: Icon(Icons.account_circle),
        contentPadding: EdgeInsets.fromLTRB(20, 20, 20, 15),
        hintText: "First name",
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
      validator: (value) {
        if (value == null || value.trim().isEmpty) {
          return 'This field is required.';
        }
        if (value.isEmpty || !RegExp(r'^[a-z A-Z]+$').hasMatch(value)) {
          return "Invalid Name";
        } else {
          return null;
        }
      },
    );
//last name
    final lastNameField = TextFormField(
      style: TextStyle(
        fontFamily: 'Poppins',
        fontWeight: FontWeight.bold,
        color: Color.fromRGBO(50, 54, 66, 1),
      ),
      autofocus: false,
      controller: lastNameEditingController,
      keyboardType: TextInputType.name,
      onSaved: (value) {
        lastNameEditingController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        errorStyle: TextStyle(
          fontFamily: 'Poppinsbold',
        ),
        suffixIcon: Icon(Icons.account_circle),
        contentPadding: EdgeInsets.fromLTRB(20, 20, 20, 15),
        hintText: "Last name",
        hintStyle: new TextStyle(
          fontSize: 16,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.bold,
          color: Color.fromRGBO(50, 54, 66, 1),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(0.0),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Color.fromRGBO(50, 54, 66, 1),
          ),
        ),
      ),
      validator: (value) {
        if (value == null || value.trim().isEmpty) {
          return 'This field is required.';
        }
        if (value.isEmpty || !RegExp(r'^[a-z A-Z]+$').hasMatch(value)) {
          return "Invalid Last name";
        } else {
          return null;
        }
      },
    );
//username
    final usernameNameField = TextFormField(
      style: TextStyle(
        fontFamily: 'Poppins',
        fontWeight: FontWeight.bold,
        color: Color.fromRGBO(50, 54, 66, 1),
      ),
      autofocus: false,
      controller: usernameNameEditingController,
      keyboardType: TextInputType.name,
      onSaved: (value) {
        usernameNameEditingController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        errorStyle: TextStyle(
          fontFamily: 'Poppinsbold',
        ),
        suffixIcon: Icon(Icons.account_circle),
        contentPadding: EdgeInsets.fromLTRB(20, 20, 20, 15),
        hintText: "Username",
        hintStyle: new TextStyle(
          fontSize: 16,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.bold,
          color: Color.fromRGBO(50, 54, 66, 1),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(0.0),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Color.fromRGBO(50, 54, 66, 1),
          ),
        ),
      ),
      validator: (value) {
        if (value == null || value.trim().isEmpty) {
          return 'This field is required.';
        }
        if (value.isEmpty || !RegExp(r'^[a-z A-Z]+$').hasMatch(value)) {
          return "Invalid Username!";
        } else {
          return null;
        }
      },
    );
//password
    final passwordNameField = TextFormField(
      style: TextStyle(
        fontFamily: 'Poppins',
        fontWeight: FontWeight.bold,
        color: Color.fromRGBO(50, 54, 66, 1),
      ),
      autofocus: false,
      controller: passwordNameEditingController,
      obscureText: showPassword,
      onSaved: (value) {
        passwordNameEditingController.text = value!;
      },
      textInputAction: TextInputAction.done,
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
        ),
      ),
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
    );
//confrim password
    final confirmPasswordNameField = TextFormField(
      style: TextStyle(
        fontFamily: 'Poppins',
        fontWeight: FontWeight.bold,
        color: Color.fromRGBO(50, 54, 66, 1),
      ),
      autofocus: false,
      controller: confirmPasswordNameEditingController,
      obscureText: showPassword,
      onSaved: (value) {
        confirmPasswordNameEditingController.text = value!;
      },
      textInputAction: TextInputAction.done,
      decoration: InputDecoration(
        hintText: "Confirm passsword",
        errorStyle: TextStyle(
          fontFamily: 'Poppinsbold',
        ),
        /* suffixIcon: IconButton(
            icon: Icon(Icons.remove_red_eye),
            onPressed: () => setState(() => showPassword = !showPassword),
          ), */
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
        suffixIcon: IconButton(
          icon: Icon(Icons.remove_red_eye),
          onPressed: () => setState(() => showPassword = !showPassword),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Color.fromRGBO(50, 54, 66, 1),
          ),
        ),
      ),
      validator: (value) {
        if (value == null || value.trim().isEmpty) {
          return 'This field is required.';
        }
        if (passwordNameEditingController.text !=
            confirmPasswordNameEditingController.text) {
          return 'Passwords are not same! ';
        }
        // Return null if the entered password is valid
        return null;
      },
    );
//phone
    final phoneNameField = TextFormField(
      style: TextStyle(
        fontFamily: 'Poppins',
        fontWeight: FontWeight.bold,
        color: Color.fromRGBO(50, 54, 66, 1),
      ),
      autofocus: false,
      controller: phoneNameEditingController,
      keyboardType: TextInputType.number,
      onSaved: (value) {
        phoneNameEditingController.text = value!;
      },
      textInputAction: TextInputAction.done,
      decoration: InputDecoration(
        errorStyle: TextStyle(
          fontFamily: 'Poppinsbold',
        ),
        suffixIcon: Icon(Icons.phone),
        contentPadding: EdgeInsets.fromLTRB(20, 20, 20, 15),
        hintText: "Phone",
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
      validator: (value) {
        if (value == null || value.trim().isEmpty) {
          return 'This field is required.';
        }
        if (value.isEmpty || !RegExp(r'^[0-9]+$').hasMatch(value)) {
          return "Invalid Phone Number";
        } else {
          return null;
        }
      },
    );
// sign up button

    final signUpButton = Material(
      elevation: 5,
      borderRadius: BorderRadius.circular(3),
      color: Color.fromRGBO(241, 106, 103, 1),
      child: MaterialButton(
        height: 60,
        padding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        minWidth: MediaQuery.of(context).size.width,
        onPressed: () async {
          
          var body = {
            "email": emailNameEditingController.text,
            "firstName": firstNameEditingController.text,
            "lastName": lastNameEditingController.text,
            "username": usernameNameEditingController.text, //isto dole
            "password": passwordNameEditingController.text,
            "confirmPassword": confirmPasswordNameEditingController.text,
            "phoneNumber": phoneNameEditingController.text,
          };
          Uri url = Uri.parse("https://192.168.0.18:7280/api/auth/register");
          var response = await http.post(url,
              headers: {
                "Access-Control-Allow-Origin": "*",
                "Content-Type": "application/json",
                "accept": "text/plain",
                "Charset": "utf-8"
              },
              body: jsonEncode(body)); // e ovdje baci error
    
          if (response.statusCode == 200) {
            print("Ovo je body" +  response.body);
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => route1.MainScreen()));
          } else {
            //greska  a
            print("Ovo je body" +  response.body);
          }
        },
        //pozviat bekend
        //post zahejv

        child: const Text(
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
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            height: 800,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/decorative-elements.png"),
                fit: BoxFit.cover,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(24.0),
              child: SingleChildScrollView(
                child: Form(
                  key: _formKey,
                  child: Column(
                    //mainAxisAlignment: MainAxisAlignment.center,
                    // crossAxisAlignment: CrossAxisAlignment.center,
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
                        child: Text("Sign up",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              color: Color.fromRGBO(241, 106, 103, 1),
                              fontFamily: 'Poppinsextrabold',
                              fontWeight: FontWeight.bold,
                              fontSize: 40,
                            )),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      emailNameField,
                      SizedBox(
                        height: 20,
                      ),
                      firstNameField,
                      SizedBox(
                        height: 20,
                      ),
                      lastNameField,
                      SizedBox(
                        height: 20,
                      ),
                      usernameNameField,
                      SizedBox(
                        height: 20,
                      ),
                      passwordNameField,
                      SizedBox(
                        height: 20,
                      ),
                      confirmPasswordNameField,
                      SizedBox(
                        height: 20,
                      ),
                      phoneNameField,
                      SizedBox(
                        height: 20,
                      ),
                      signUpButton,
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text("Already have an account? ",
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
                                        builder: (context) => LoginScreen()));
                              },
                              child: Text(
                                "Sign in.",
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
      ),
    );
  }
}
