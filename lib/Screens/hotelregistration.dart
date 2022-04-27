import 'package:bookingapp/Screens/RegistrationScreen.dart' as route;
import 'package:bookingapp/Screens/mainscreen.dart' as route1;
import 'package:bookingapp/main.dart';
import 'package:bookingapp/screens/registrationscreen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:bookingapp/Screens/apartmentregistration.dart' as route2;

class HotelRegistration extends StatefulWidget {
  const HotelRegistration({Key? key}) : super(key: key);

  @override
  State<HotelRegistration> createState() => _HotelRegistrationState();
}

class _HotelRegistrationState extends State<HotelRegistration> {
  final _foreKey = GlobalKey<FormState>();
  final TextEditingController commentController = new TextEditingController();
  bool isMan = false; 
  bool isWoman = false; 
  bool isPressed = false;
  bool isPressed1 = false;
  bool isPressed2 = false;
  bool isPressed4 = false;
  bool isPressed5 = false;
  bool isPressed7 = false;
  bool isPressed8 = false;
  bool isPressed9 = false;
  bool isPressed10 = false;
  bool isPressed6 = false;
  bool isPressed11 = false;
  bool isPressed12 = false;
  bool isPressed13 = false;
  
  bool showPassword = true;
  bool showConfirmPassword = true;
  final TextEditingController firstNameController = new TextEditingController();
  final TextEditingController lastNameController = new TextEditingController();
  final TextEditingController emailController = new TextEditingController();
  final TextEditingController phoneController = new TextEditingController();
  final TextEditingController birthController = new TextEditingController();
  final TextEditingController countryController = new TextEditingController();
  final TextEditingController passportController = new TextEditingController();
  final TextEditingController expirationController = new TextEditingController();
  final TextEditingController cardNumberController = new TextEditingController();
  final TextEditingController cardExpController = new TextEditingController();
  final TextEditingController holderController = new TextEditingController();
  final TextEditingController cvvController = new TextEditingController();

  get checkedValue => false;
  bool flagWarranty = false;
  set _checkedValue(bool? _checkedValue) {}

  @override
  Widget build(BuildContext context) {
    final addPhotoButton = Material(
      elevation: 10,
      borderRadius: BorderRadius.circular(3),
      color: Color.fromRGBO(241, 106, 103, 1),
      child: MaterialButton(
        height: 60,
        padding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        minWidth: MediaQuery.of(context).size.width,
        onPressed: () async {
        },
        child: Text(
          "Add photos",
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
    final firstNameField = TextFormField(
      //rgba(50, 54, 66, 1)
      style: TextStyle(
        fontFamily: 'Poppins',
        fontWeight: FontWeight.bold,
        color: Color.fromRGBO(50, 54, 66, 1),
      ),
      autofocus: false,
      controller: firstNameController,
      keyboardType: TextInputType.text,
      validator: (value) {
        if (value == null || value.trim().isEmpty) {
          return 'This field is required.';
        }
         else {
          return null;
        }
      },
      onSaved: (value) {
        firstNameController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        errorStyle: TextStyle(
          fontFamily: 'Poppinsbold',
        ),
        suffixIcon: Icon(Icons.abc),
        contentPadding: EdgeInsets.fromLTRB(20, 20, 20, 15),
        hintText: "Name",
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
    final lastNameField = TextFormField(
      //rgba(50, 54, 66, 1)
      style: TextStyle(
        fontFamily: 'Poppins',
        fontWeight: FontWeight.bold,
        color: Color.fromRGBO(50, 54, 66, 1),
      ),
      autofocus: false,
      controller: lastNameController,
      keyboardType: TextInputType.text,
      validator: (value) {
        if (value == null || value.trim().isEmpty) {
          return 'This field is required.';
        }
         else {
          return null;
        }
      },
      onSaved: (value) {
        lastNameController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        errorStyle: TextStyle(
          fontFamily: 'Poppinsbold',
        ),
        suffixIcon: Icon(Icons.location_on),
        contentPadding: EdgeInsets.fromLTRB(20, 20, 20, 15),
        hintText: "Location",
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
    final emailField = TextFormField(
      //rgba(50, 54, 66, 1)
      style: TextStyle(
        fontFamily: 'Poppins',
        fontWeight: FontWeight.bold,
        color: Color.fromRGBO(50, 54, 66, 1),
      ),
      autofocus: false,
      controller: emailController,
      keyboardType: TextInputType.text,
      validator: (value) {
        if (value == null || value.trim().isEmpty) {
          return 'This field is required.';
        }
         else {
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
        suffixIcon: Icon(Icons.phone),
        contentPadding: EdgeInsets.fromLTRB(20, 20, 20, 15),
        hintText: "Phone number",
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
    final phoneField = TextFormField(
      //rgba(50, 54, 66, 1)
      style: TextStyle(
        fontFamily: 'Poppins',
        fontWeight: FontWeight.bold,
        color: Color.fromRGBO(50, 54, 66, 1),
      ),
      autofocus: false,
      controller: phoneController,
      keyboardType: TextInputType.text,
      validator: (value) {
        if (value == null || value.trim().isEmpty) {
          return 'This field is required.';
        }
         else {
          return null;
        }
      },
      onSaved: (value) {
        phoneController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        errorStyle: TextStyle(
          fontFamily: 'Poppinsbold',
        ),
        suffixIcon: Icon(Icons.person),
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
    );
    final birthDateField = TextFormField(
      //rgba(50, 54, 66, 1)
      style: TextStyle(
        fontFamily: 'Poppins',
        fontWeight: FontWeight.bold,
        color: Color.fromRGBO(50, 54, 66, 1),
      ),
      autofocus: false,
      controller: birthController,
      keyboardType: TextInputType.datetime,
      validator: (value) {
        if (value == null || value.trim().isEmpty) {
          return 'This field is required.';
        }
         else {
          return null;
        }
      },
      onSaved: (value) {
        birthController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        errorStyle: TextStyle(
          fontFamily: 'Poppinsbold',
        ),
        suffixIcon: Icon(Icons.person),
        contentPadding: EdgeInsets.fromLTRB(20, 20, 20, 15),
        hintText: "Last name",
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
    final countryField = TextFormField(
      //rgba(50, 54, 66, 1)
      style: TextStyle(
        fontFamily: 'Poppins',
        fontWeight: FontWeight.bold,
        color: Color.fromRGBO(50, 54, 66, 1),
      ),
      autofocus: false,
      controller: countryController,
      keyboardType: TextInputType.text,
      validator: (value) {
        if (value == null || value.trim().isEmpty) {
          return 'This field is required.';
        }
         else {
          return null;
        }
      },
      onSaved: (value) {
        countryController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        errorStyle: TextStyle(
          fontFamily: 'Poppinsbold',
        ),
        suffixIcon: Icon(Icons.bed),
        contentPadding: EdgeInsets.fromLTRB(20, 20, 20, 15),
        hintText: "Number of rooms",
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
    final passportField = TextFormField(
      //rgba(50, 54, 66, 1)
      style: TextStyle(
        fontFamily: 'Poppins',
        fontWeight: FontWeight.bold,
        color: Color.fromRGBO(50, 54, 66, 1),
      ),
      autofocus: false,
      controller: passportController,
      keyboardType: TextInputType.text,
      validator: (value) {
        if (value == null || value.trim().isEmpty) {
          return 'This field is required.';
        }
         else {
          return null;
        }
      },
      onSaved: (value) {
        passportController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        errorStyle: TextStyle(
          fontFamily: 'Poppinsbold',
        ),
        suffixIcon: Icon(Icons.numbers),
        contentPadding: EdgeInsets.fromLTRB(20, 20, 20, 15),
        hintText: "Floor number",
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
    final expirationField = TextFormField(
      //rgba(50, 54, 66, 1)
      style: TextStyle(
        fontFamily: 'Poppins',
        fontWeight: FontWeight.bold,
        color: Color.fromRGBO(50, 54, 66, 1),
      ),
      autofocus: false,
      controller: expirationController,
      keyboardType: TextInputType.datetime,
      validator: (value) {
        if (value == null || value.trim().isEmpty) {
          return 'This field is required.';
        }
         else {
          return null;
        }
      },
      onSaved: (value) {
        expirationController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        errorStyle: TextStyle(
          fontFamily: 'Poppinsbold',
        ),
        suffixIcon: Icon(Icons.calendar_month),
        contentPadding: EdgeInsets.fromLTRB(20, 20, 20, 15),
        hintText: "Expiration date",
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
    final cardField = TextFormField(
      //rgba(50, 54, 66, 1)
      style: TextStyle(
        fontFamily: 'Poppins',
        fontWeight: FontWeight.bold,
        color: Color.fromRGBO(50, 54, 66, 1),
      ),
      autofocus: false,
      controller: cardNumberController,
      keyboardType: TextInputType.text,
      validator: (value) {
        if (value == null || value.trim().isEmpty) {
          return 'This field is required.';
        }
         else {
          return null;
        }
      },
      onSaved: (value) {
        cardNumberController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        errorStyle: TextStyle(
          fontFamily: 'Poppinsbold',
        ),
        suffixIcon: Icon(Icons.calendar_month),
        contentPadding: EdgeInsets.fromLTRB(20, 20, 20, 15),
        hintText: "Check in date",
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
    final cardExpirationField = TextFormField(
      //rgba(50, 54, 66, 1)
      style: TextStyle(
        fontFamily: 'Poppins',
        fontWeight: FontWeight.bold,
        color: Color.fromRGBO(50, 54, 66, 1),
      ),
      autofocus: false,
      controller: cardExpController,
      keyboardType: TextInputType.text,
      validator: (value) {
        if (value == null || value.trim().isEmpty) {
          return 'This field is required.';
        }
         else {
          return null;
        }
      },
      onSaved: (value) {
        cardExpController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        errorStyle: TextStyle(
          fontFamily: 'Poppinsbold',
        ),
        suffixIcon: Icon(Icons.calendar_month),
        contentPadding: EdgeInsets.fromLTRB(20, 20, 20, 15),
        hintText: "Check out date",
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
    final cardHolderField = TextFormField(
      //rgba(50, 54, 66, 1)
      style: TextStyle(
        fontFamily: 'Poppins',
        fontWeight: FontWeight.bold,
        color: Color.fromRGBO(50, 54, 66, 1),
      ),
      autofocus: false,
      controller: holderController,
      keyboardType: TextInputType.text,
      validator: (value) {
        if (value == null || value.trim().isEmpty) {
          return 'This field is required.';
        }
         else {
          return null;
        }
      },
      onSaved: (value) {
        holderController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        errorStyle: TextStyle(
          fontFamily: 'Poppinsbold',
        ),
        suffixIcon: Icon(Icons.euro),
        contentPadding: EdgeInsets.fromLTRB(20, 20, 20, 15),
        hintText: "Price",
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
    final cvccvvField = TextFormField(
      //rgba(50, 54, 66, 1)
      style: TextStyle(
        fontFamily: 'Poppins',
        fontWeight: FontWeight.bold,
        color: Color.fromRGBO(50, 54, 66, 1),
      ),
      autofocus: false,
      controller: cvvController,
      keyboardType: TextInputType.text,
      validator: (value) {
        if (value == null || value.trim().isEmpty) {
          return 'This field is required.';
        }
         else {
          return null;
        }
      },
      onSaved: (value) {
        cvvController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        errorStyle: TextStyle(
          fontFamily: 'Poppinsbold',
        ),
        suffixIcon: Icon(Icons.credit_card),
        contentPadding: EdgeInsets.fromLTRB(20, 20, 20, 15),
        hintText: "CVC/CVV",
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
    
    return Scaffold(
      
      backgroundColor: Colors.white,
      body: Center(
        child: SingleChildScrollView(
          child: Container(
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
                      child: Text("Hotel registration",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: Color.fromRGBO(50, 54, 66, 1),
                            fontFamily: 'Poppinsextrabold',
                            fontWeight: FontWeight.bold,
                            fontSize: 24,
                          )),
                    ),



Center(
      child: Row(
        children: [
          Padding(
            padding: EdgeInsets.only(right: 10),
            child: Text(
              "Hotel     ",
              style: TextStyle(
                fontFamily: 'Poppinsbold',
                color: Color.fromRGBO(50, 54, 66, 1),
               fontSize: 14,
               fontWeight: FontWeight.w400,)
            ),
          ),
          
          Theme(
            data: ThemeData(unselectedWidgetColor: Color.fromRGBO(50, 54, 66, 1),),
            child: Checkbox(
              value: isMan,
              checkColor: Colors.white,
              activeColor: Color.fromRGBO(50, 54, 66, 1),
              onChanged: (value) {
                setState(
                  () {
                    isMan = value!;
                    isWoman = false;
                  },
                );
              },
            ),
          ),
          Text("                  "),
          Text(
            "Apartment      ",
            style: TextStyle(
              fontFamily: 'Poppinsbold',
                color: Color.fromRGBO(50, 54, 66, 1),
               fontSize: 14,
               fontWeight: FontWeight.w400,),
          ),
          Theme(
            data: ThemeData(unselectedWidgetColor: Color.fromRGBO(50, 54, 66, 1),),
            child: Checkbox(
              value: isWoman,
              checkColor: Colors.white,
              activeColor: Color.fromRGBO(50, 54, 66, 1),
              onChanged: (value) {
                
                setState(
                  () {
                    isWoman = value!;
                    isMan = false;
                  },
                );
                Navigator.push(context,
              MaterialPageRoute(builder: (context) => route2.ApartmentRegistration()));
              },
            ),
          ),
        ],
      ),
    ),
    SizedBox(height: 15),
Align(
                      alignment: Alignment.topLeft,
                      child: Text("Property type",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: Color.fromRGBO(50, 54, 66, 1),
                            fontFamily: 'Poppinsextrabold',
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          )),
                    ),


SizedBox(height: 10),
                    Row(
        children: [
          Theme(
            data: ThemeData(unselectedWidgetColor: Color.fromRGBO(50, 54, 66, 1),),
            child: Checkbox(
              value: isPressed,
              checkColor: Colors.white,
              activeColor: Color.fromRGBO(50, 54, 66, 1),
              onChanged: (value) {
                setState(() {
                  isPressed = value!;
                });
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 10),
            child: Text(
              "     Hotel",
              style: TextStyle(
                fontFamily: 'Poppinsbold',
                color: Color.fromRGBO(50, 54, 66, 1),
               fontSize: 14,
               fontWeight: FontWeight.w400,)
            ),
          ),
        ],
      ),
      Row(
        children: [
          Theme(
            data: ThemeData(unselectedWidgetColor: Color.fromRGBO(50, 54, 66, 1),),
            child: Checkbox(
              value: isPressed1,
              checkColor: Colors.white,
              activeColor: Color.fromRGBO(50, 54, 66, 1),
             onChanged: (value) {
                setState(() {
                  isPressed1 = value!;
                });
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 10),
            child: Text(
              "     Hostel",
              style: TextStyle(
                fontFamily: 'Poppinsbold',
                color: Color.fromRGBO(50, 54, 66, 1),
               fontSize: 14,
               fontWeight: FontWeight.w400,)
            ),
          ),
        ],
      ),
      Row(
        children: [
          Theme(
            data: ThemeData(unselectedWidgetColor: Color.fromRGBO(50, 54, 66, 1),),
            child: Checkbox(
              value: isPressed2,
              checkColor: Colors.white,
              activeColor: Color.fromRGBO(50, 54, 66, 1),
              onChanged: (value) {
                setState(() {
                  isPressed2 = value!;
                });
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 10),
            child: Text(
              "     Apartment",
              style: TextStyle(
                fontFamily: 'Poppinsbold',
                color: Color.fromRGBO(50, 54, 66, 1),
               fontSize: 14,
               fontWeight: FontWeight.w400,)
            ),
          ),
        ],
      ),
      Row(
        children: [
          Theme(
            data: ThemeData(unselectedWidgetColor: Color.fromRGBO(50, 54, 66, 1),),
            child: Checkbox(
              value: isPressed4,
              checkColor: Colors.white,
              activeColor: Color.fromRGBO(50, 54, 66, 1),
              onChanged: (value) {
                setState(() {
                  isPressed4 = value!;
                });
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 10),
            child: Text(
              "     Bed & breakfast",
              style: TextStyle(
                fontFamily: 'Poppinsbold',
                color: Color.fromRGBO(50, 54, 66, 1),
               fontSize: 14,
               fontWeight: FontWeight.w400,)
            ),
          ),
        ],
      ),
      Row(
        children: [
          Theme(
            data: ThemeData(unselectedWidgetColor: Color.fromRGBO(50, 54, 66, 1),),
            child: Checkbox(
              value: isPressed5,
              checkColor: Colors.white,
              activeColor: Color.fromRGBO(50, 54, 66, 1),
              onChanged: (value) {
                setState(() {
                  isPressed5 = value!;
                });
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 10),
            child: Text(
              "     Boarding house",
              style: TextStyle(
                fontFamily: 'Poppinsbold',
                color: Color.fromRGBO(50, 54, 66, 1),
               fontSize: 14,
               fontWeight: FontWeight.w400,)
            ),
          ),
        ],
      ),
          SizedBox(height: 15),
          Align(
                      alignment: Alignment.topLeft,
                      child: Text("Information of the property type",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: Color.fromRGBO(50, 54, 66, 1),
                            fontFamily: 'Poppinsextrabold',
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          )),
                    ),
                
                    SizedBox(height: 20),
                    firstNameField,
                    SizedBox(height: 15),
                    lastNameField,
                    SizedBox(height: 15),
                    emailField,
                    SizedBox(height: 15),
                    phoneField,
                    SizedBox(height: 15),
                    birthDateField,
                    SizedBox(height: 15),
                    countryField,
                    SizedBox(height: 15),
                    passportField,
                    SizedBox(height: 15),
Align(
                      alignment: Alignment.topLeft,
                      child: Text("Services & facilities",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: Color.fromRGBO(50, 54, 66, 1),
                            fontFamily: 'Poppinsextrabold',
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          )),
                    ),


SizedBox(height: 10),
                    Row(
        children: [
          Theme(
            data: ThemeData(unselectedWidgetColor: Color.fromRGBO(50, 54, 66, 1),),
            child: Checkbox(
              value: isPressed,
              checkColor: Colors.white,
              activeColor: Color.fromRGBO(50, 54, 66, 1),
              onChanged: (value) {
                setState(() {
                  isPressed = value!;
                });
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 10),
            child: Text(
              "     Breakfast",
              style: TextStyle(
                fontFamily: 'Poppinsbold',
                color: Color.fromRGBO(50, 54, 66, 1),
               fontSize: 14,
               fontWeight: FontWeight.w400,)
            ),
          ),
        ],
      ),
      Row(
        children: [
          Theme(
            data: ThemeData(unselectedWidgetColor: Color.fromRGBO(50, 54, 66, 1),),
            child: Checkbox(
              value: isPressed7,
              checkColor: Colors.white,
              activeColor: Color.fromRGBO(50, 54, 66, 1),
             onChanged: (value) {
                setState(() {
                  isPressed7 = value!;
                });
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 10),
            child: Text(
              "     Lunch",
              style: TextStyle(
                fontFamily: 'Poppinsbold',
                color: Color.fromRGBO(50, 54, 66, 1),
               fontSize: 14,
               fontWeight: FontWeight.w400,)
            ),
          ),
        ],
      ),
      Row(
        children: [
          Theme(
            data: ThemeData(unselectedWidgetColor: Color.fromRGBO(50, 54, 66, 1),),
            child: Checkbox(
              value: isPressed8,
              checkColor: Colors.white,
              activeColor: Color.fromRGBO(50, 54, 66, 1),
              onChanged: (value) {
                setState(() {
                  isPressed8 = value!;
                });
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 10),
            child: Text(
              "     Dinner",
              style: TextStyle(
                fontFamily: 'Poppinsbold',
                color: Color.fromRGBO(50, 54, 66, 1),
               fontSize: 14,
               fontWeight: FontWeight.w400,)
            ),
          ),
        ],
      ),
      Row(
        children: [
          Theme(
            data: ThemeData(unselectedWidgetColor: Color.fromRGBO(50, 54, 66, 1),),
            child: Checkbox(
              value: isPressed9,
              checkColor: Colors.white,
              activeColor: Color.fromRGBO(50, 54, 66, 1),
              onChanged: (value) {
                setState(() {
                  isPressed9 = value!;
                });
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 10),
            child: Text(
              "     Gym",
              style: TextStyle(
                fontFamily: 'Poppinsbold',
                color: Color.fromRGBO(50, 54, 66, 1),
               fontSize: 14,
               fontWeight: FontWeight.w400,)
            ),
          ),
        ],
      ),
      Row(
        children: [
          Theme(
            data: ThemeData(unselectedWidgetColor: Color.fromRGBO(50, 54, 66, 1),),
            child: Checkbox(
              value: isPressed10,
              checkColor: Colors.white,
              activeColor: Color.fromRGBO(50, 54, 66, 1),
              onChanged: (value) {
                setState(() {
                  isPressed10 = value!;
                });
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 10),
            child: Text(
              "     Wellnes center",
              style: TextStyle(
                fontFamily: 'Poppinsbold',
                color: Color.fromRGBO(50, 54, 66, 1),
               fontSize: 14,
               fontWeight: FontWeight.w400,)
            ),
          ),
        ],
      ),
                    
              
                SizedBox(height: 15),
                addPhotoButton,
                SizedBox(height: 15),
                Align(
                      alignment: Alignment.topLeft,
                      child: Text("Rules",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: Color.fromRGBO(50, 54, 66, 1),
                            fontFamily: 'Poppinsextrabold',
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          )),
                    ),
                    SizedBox(height: 10),
                    Container(
      
      child: TextFormField(
        style: TextStyle(
        fontFamily: 'Poppins',
        fontWeight: FontWeight.bold,
        color: Color.fromRGBO(50, 54, 66, 1),
      ),
      autofocus: false,
      controller: commentController,
      keyboardType: TextInputType.text,
      validator: (value) {
        if (value == null || value.trim().isEmpty) {
          return 'This field is required.';
        }
         else {
          return null;
        }
      },
      onSaved: (value) {
        commentController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        errorStyle: TextStyle(
          fontFamily: 'Poppinsbold',
        ),
        suffixIcon: Icon(Icons.comment),
        contentPadding: EdgeInsets.fromLTRB(20, 20, 20, 15),
        hintText: "Text",
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
      maxLines: 7, // <-- SEE HERE
  minLines: 1,
      ),
    ),
    SizedBox(height: 10),
                Align(
                      alignment: Alignment.topLeft,
                      child: Text("Methods of payment",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: Color.fromRGBO(50, 54, 66, 1),
                            fontFamily: 'Poppinsextrabold',
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          )),
                    ),
                      SizedBox(height: 10),
                      Row(
        children: [
          Theme(
            data: ThemeData(unselectedWidgetColor: Color.fromRGBO(50, 54, 66, 1),),
            child: Checkbox(
              value: isPressed11,
              checkColor: Colors.white,
              activeColor: Color.fromRGBO(50, 54, 66, 1),
              onChanged: (value) {
                setState(() {
                  isPressed11 = value!;
                });
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 10),
            child: Text(
              "     Visa",
              style: TextStyle(
                fontFamily: 'Poppinsbold',
                color: Color.fromRGBO(50, 54, 66, 1),
               fontSize: 14,
               fontWeight: FontWeight.w400,)
            ),
          ),
        ],
      ),
      Row(
        children: [
          Theme(
            data: ThemeData(unselectedWidgetColor: Color.fromRGBO(50, 54, 66, 1),),
            child: Checkbox(
              value: isPressed12,
              checkColor: Colors.white,
              activeColor: Color.fromRGBO(50, 54, 66, 1),
              onChanged: (value) {
                setState(() {
                  isPressed12 = value!;
                });
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 10),
            child: Text(
              "     Mastercard",
              style: TextStyle(
                fontFamily: 'Poppinsbold',
                color: Color.fromRGBO(50, 54, 66, 1),
               fontSize: 14,
               fontWeight: FontWeight.w400,)
            ),
          ),
        ],
      ),
      Row(
        children: [
          Theme(
            data: ThemeData(unselectedWidgetColor: Color.fromRGBO(50, 54, 66, 1),),
            child: Checkbox(
              value: isPressed13,
              checkColor: Colors.white,
              activeColor: Color.fromRGBO(50, 54, 66, 1),
              onChanged: (value) {
                setState(() {
                  isPressed13 = value!;
                });
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 10),
            child: Text(
              "     Other - cash",
              style: TextStyle(
                fontFamily: 'Poppinsbold',
                color: Color.fromRGBO(50, 54, 66, 1),
               fontSize: 14,
               fontWeight: FontWeight.w400,)
            ),
          ),
        ],
      ),
      SizedBox(height: 10),
                Align(
                      alignment: Alignment.topLeft,
                      child: Text("Available dates",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: Color.fromRGBO(50, 54, 66, 1),
                            fontFamily: 'Poppinsextrabold',
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          )),
                    ),
                     SizedBox(height: 10),
                      cardField,
                      SizedBox(height: 15),
                      cardExpirationField,
                      SizedBox(height: 15),
                      
                Align(
                      alignment: Alignment.topLeft,
                      child: Text("Price per day (PPD)",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: Color.fromRGBO(50, 54, 66, 1),
                            fontFamily: 'Poppinsextrabold',
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          )),
                    ),
                    SizedBox(height: 10),
                      cardHolderField,
                      SizedBox(height: 15),
                      Container(
                        
                        child: Material(
                      elevation: 10,
                      borderRadius: BorderRadius.circular(3),
                      color: Color.fromRGBO(241, 106, 103, 1),
                      child: MaterialButton(
                        height: 60,
                        padding: EdgeInsets.fromLTRB(20, 15, 20, 15),
                        minWidth: MediaQuery.of(context).size.width,
                        onPressed: () {
                          if(_foreKey.currentState!.validate()){
                          Navigator.push(
                                context, MaterialPageRoute(builder: (context) => route1.MainScreen()));
                          }
                        },

                        child: Text(
                          "Post",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontFamily: 'Poppinsbold',
                            fontSize: 16,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                      )

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
