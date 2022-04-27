import 'package:bookingapp/Screens/RegistrationScreen.dart' as route;
import 'package:bookingapp/Screens/mainscreen.dart' as route1;
import 'package:bookingapp/main.dart';
import 'package:bookingapp/screens/registrationscreen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({Key? key}) : super(key: key);

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  final _foreKey = GlobalKey<FormState>();
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
        suffixIcon: Icon(Icons.email),
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
        suffixIcon: Icon(Icons.calendar_month),
        contentPadding: EdgeInsets.fromLTRB(20, 20, 20, 15),
        hintText: "Date of birth",
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
        suffixIcon: Icon(Icons.landscape),
        contentPadding: EdgeInsets.fromLTRB(20, 20, 20, 15),
        hintText: "Country",
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
        suffixIcon: Icon(Icons.document_scanner),
        contentPadding: EdgeInsets.fromLTRB(20, 20, 20, 15),
        hintText: "Passport number",
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
        suffixIcon: Icon(Icons.credit_card),
        contentPadding: EdgeInsets.fromLTRB(20, 20, 20, 15),
        hintText: "Card number",
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
        suffixIcon: Icon(Icons.credit_card),
        contentPadding: EdgeInsets.fromLTRB(20, 20, 20, 15),
        hintText: "Expiration MM/YY",
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
        suffixIcon: Icon(Icons.credit_card),
        contentPadding: EdgeInsets.fromLTRB(20, 20, 20, 15),
        hintText: "Card holder name",
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
                      child: Text("Payment",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: Color.fromRGBO(50, 54, 66, 1),
                            fontFamily: 'Poppinsextrabold',
                            fontWeight: FontWeight.bold,
                            fontSize: 24,
                          )),
                    ),
                    SizedBox(height: 9),
                     Align(
                      alignment: Alignment.topLeft,
                      child: Text("Traveler details",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: Color.fromRGBO(50, 54, 66, 1),
                            fontFamily: 'Poppinsbold',
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
                    expirationField,
                    SizedBox(height: 23),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text("Booking details",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: Color.fromRGBO(50, 54, 66, 1),
                            fontFamily: 'Poppinsbold',
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          )),
                    ),
                    SizedBox(height: 19),
                    Container(
                      width: 280,
                      
                    padding: const EdgeInsets.all(16.0),
                    decoration: BoxDecoration(
                        border: Border.all(),
                        borderRadius: BorderRadius.circular(7),
                      ),
                      child: Column(
                        children: [
                          Image.asset(
                            "assets/dubrovnik.png",
                           
                          ),
                          Align(
                             alignment: Alignment.topLeft,
                             child: Text(
                            "Hotel Dubrovnik",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              color: Color.fromRGBO(50, 54, 66, 1),
                              fontFamily: 'Poppinsbold',
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                        ),
                        Row(
                         children: [
                           Image.asset(
                            "assets/zvijezda.png",
                            width: 15,
                            height: 15,
                          ),
                          Text(" "),
                          Image.asset(
                            "assets/zvijezda.png",
                            width: 15,
                            height: 15,
                          ),
                          Text(" "),
                          Image.asset(
                            "assets/zvijezda.png",
                            width: 15,
                            height: 15,
                          ),
                          Text(" "),
                          Image.asset(
                            "assets/zvijezda.png",
                            width: 15,
                            height: 15,
                          ),
                          
                                Align(

                             alignment: Alignment.topLeft,
                             child: Text(
                            "  stars",
                            textAlign: TextAlign.right,
                            style: TextStyle(
                              color: Color.fromRGBO(50, 54, 66, 1),
                              fontFamily: 'Poppinsbold',
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                        ),
                        
                         ],
                         
                       ),
                       Row(
                         children: [
                           
                          
                                Align(

                             alignment: Alignment.topLeft,
                             child: Text(
                            "Adress:",
                            textAlign: TextAlign.right,
                            style: TextStyle(
                              color: Color.fromRGBO(50, 54, 66, 1),
                              fontFamily: 'Poppinsbold',
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                        ),
                        Align(

                             alignment: Alignment.topLeft,
                             child: Text(
                            " Školska 10",
                            textAlign: TextAlign.right,
                            style: TextStyle(
                              color: Color.fromRGBO(50, 54, 66, 1),
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                        ),
                        Text("  "),
                        Image.asset(
                            "assets/location.png",
                            
                            width: 15,
                            height: 15,
                          ),
                         ],
                         
                       ),
                        Row(
                         children: [
                                Align(
                             alignment: Alignment.topLeft,
                             child: Text(
                            "Zenica,",
                            textAlign: TextAlign.right,
                            style: TextStyle(
                              color: Color.fromRGBO(50, 54, 66, 1),
                              fontFamily: 'Poppinsbold',
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                        ),
                        Align(

                             alignment: Alignment.topLeft,
                             child: Text(
                            "  250 m from centre",
                            textAlign: TextAlign.right,
                            style: TextStyle(
                              color: Color.fromRGBO(50, 54, 66, 1),
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                        ),
                         ],
                         
                       ),
                        
                        Row(
                         children: [
                                Align(
                             alignment: Alignment.topLeft,
                             child: Text(
                            "Price:",
                            textAlign: TextAlign.right,
                            style: TextStyle(
                              color: Color.fromRGBO(50, 54, 66, 1),
                              fontFamily: 'Poppinsbold',
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                        ),
                        Align(

                             alignment: Alignment.topLeft,
                             child: Text(
                            "  99,9 KM per day",
                            textAlign: TextAlign.right,
                            style: TextStyle(
                              color: Color.fromRGBO(50, 54, 66, 1),
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                        ),
                         ],
                         
                       ),
                        
                        ],),
                      /*child: const Text(
                        "Needed input of desired hotel.",
                        style: TextStyle(
                          fontSize: 24.0,
                          fontFamily: 'Poppinsbold',
                          ),
                      ),*/
                    ),
                SizedBox(height: 19),
                Row(
                        children: <Widget>[
                          Text("Pay with:          ",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: Color.fromRGBO(50, 54, 66, 1),
                            fontFamily: 'Poppinsbold',
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          )),
                         
                            Image.asset(
                            "assets/mastercredit.png",
                            fit: BoxFit.fitWidth,
                            width: 30,
                            height: 30,
                          ),
                          Text("       "),
                          Image.asset(
                            "assets/visa.png",
                            fit: BoxFit.fitWidth,
                            width: 30,
                            height: 30,
                          ),
                          Text("       "),
                          Image.asset(
                            "assets/card.png",
                            fit: BoxFit.fitWidth,
                            width: 30,
                            height: 30,
                          ),
                              
                        ],
                      ),
                      SizedBox(height: 10),
                      cardField,
                      SizedBox(height: 15),
                      cardExpirationField,
                      SizedBox(height: 15),
                      cardHolderField,
                      SizedBox(height: 15),
                      cvccvvField,
                      SizedBox(height: 35),
                      Container(
                        width: 240,
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
                          "Finish payment",
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
