import 'package:bookingapp/Screens/mainscreen.dart' as route1;
import 'package:flutter/material.dart';
import 'package:bookingapp/Screens/reviewscreen.dart' as route2;
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class SpecificAcc extends StatefulWidget {
  const SpecificAcc({Key? key}) : super(key: key);

  @override
  State<SpecificAcc> createState() => _SpecificAccState();
}

class _SpecificAccState extends State<SpecificAcc> {
  final _foreKey = GlobalKey<FormState>();
  final TextEditingController commentController = new TextEditingController();
  bool isPressed =  true;
  bool isPressed1 = true;
  bool isPressed2 = true;
  bool isPressed4 = true;
  bool isPressed5 = true;
  bool isPressed7 = true;
  bool isPressed8 = true;
  bool isPressed9 = true;
  bool isPressed10 = true;
  bool isPressed6 = true;
  bool isPressed11 = true;
  bool isPressed12 = true;
  bool isPressed13 = true;
  
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
  final TextEditingController registeredController = new TextEditingController();
  final TextEditingController sizeController = new TextEditingController();

  get checkedValue => false;
  bool flagWarranty = false;
  set _checkedValue(bool? _checkedValue) {}

  @override
  Widget build(BuildContext context) {

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
                      child: Text("Hotel Dubrovnik",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: Color.fromRGBO(50, 54, 66, 1),
                            fontFamily: 'Poppinsextrabold',
                            fontWeight: FontWeight.bold,
                            fontSize: 24,
                          )),
                    ),
                    SizedBox(height: 10),
                  Row(
                        children: <Widget>[
                          Image.asset(
                            "assets/zvijezda.png",
                            fit: BoxFit.fitWidth,
                            width: 25,
                            height: 25,
                          ),
                          Text("  "),
                          Image.asset(
                            "assets/zvijezda.png",
                            fit: BoxFit.fitWidth,
                            width: 25,
                            height: 25,
                          ),
                          Text("  "),
                          Image.asset(
                            "assets/zvijezda.png",
                            fit: BoxFit.fitWidth,
                            width: 25,
                            height: 25,
                          ),
                          Text("  "),
                          Image.asset(
                            "assets/zvijezda.png",
                            fit: BoxFit.fitWidth,
                            width: 25,
                            height: 25,
                          ),
                          
                          Text(
                            "    4 stars",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              color: Color.fromRGBO(50, 54, 66, 1),
                              fontFamily: 'Poppinsbold',
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                          ]),

                    
            SizedBox(height: 15),
            CarouselSlider(
                        items: [
                          //1st Image of Slider
                          Container(
                            width: 350,
                            height: 300,
                            margin: EdgeInsets.all(6.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.0),
                              image: DecorationImage(
                                image: NetworkImage(
                                    "https://q-xx.bstatic.com/xdata/images/hotel/max1024x768/3179849.jpg?k=e13f7339acc64dac6328a18c1b09ba0cb44d596ebd674fe98232133699a70453&o="),
                                fit: BoxFit.cover,
                              ),
                            ),
                            /*child: Text(
                              'Mostar',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontFamily: 'Poppinsbold',
                                color: Colors.white,
                                fontSize: 30,
                              ),
                            ),*/
                          ),

                          //2nd Image of Slider
                          Container(
                            width: 350,
                            height: 200,
                            margin: EdgeInsets.all(6.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.0),
                              image: DecorationImage(
                                image: NetworkImage(
                                  "https://q-xx.bstatic.com/xdata/images/hotel/max1024x768/3168274.jpg?k=1324966c5b698cb2271c6317a88e5dd3921607fce5f59d506ae7dcbcb7ff86ca&o=",
                                ),
                                fit: BoxFit.cover,
                              ),
                            ),
                            /*child: Text(
                              'Sarajevo',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontFamily: 'Poppinsbold',
                                color: Colors.white,
                                fontSize: 30,
                              ),
                            ),*/
                          ),

                          //3rd Image of Slider
                          Container(
                            width: 350,
                            height: 200,
                            margin: EdgeInsets.all(6.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.0),
                              image: DecorationImage(
                                image: NetworkImage(
                                  "https://q-xx.bstatic.com/xdata/images/hotel/max1024x768/3179868.jpg?k=a0236997f65828d8da85b546e0f8d98352a4a25f4b03cc1c85c1b5880492d1cf&o=",
                                ),
                                fit: BoxFit.cover,
                              ),
                            ),
                            /*child: Text(
                              'Zenica',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontFamily: 'Poppinsbold',
                                color: Colors.white,
                                fontSize: 30,
                              ),
                            ),*/
                          ),

                          //4th Image of Slider
                          Container(
                            width: 350,
                            height: 200,
                            margin: EdgeInsets.all(6.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.0),
                              image: DecorationImage(
                                image: NetworkImage(
                                    "https://q-xx.bstatic.com/xdata/images/hotel/max1024x768/89636123.jpg?k=98826a7f3392eb71a1aa940a68eb9bc8451a8ffccbfea5cc82d8771ef8330c58&o="),
                                fit: BoxFit.cover,
                              ),
                            ),
                            /*child: Text(
                              'Banja Luka',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontFamily: 'Poppinsbold',
                                color: Colors.white,
                                fontSize: 30,
                              ),
                            ),*/
                          ),
                        ],

                        //Slider Container properties
                        options: CarouselOptions(
                          height: 180.0,
                          enlargeCenterPage: true,
                          autoPlay: true,
                          aspectRatio: 16 / 9,
                          autoPlayCurve: Curves.fastOutSlowIn,
                          enableInfiniteScroll: true,
                          autoPlayAnimationDuration:
                              Duration(milliseconds: 800),
                          viewportFraction: 0.8,
                        ),
                      ),
                


    SizedBox(height: 10),

          Align(
                      alignment: Alignment.topLeft,
                      child: Text("Most popular facilities: ",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: Color.fromRGBO(50, 54, 66, 1),
                            fontFamily: 'Poppinsextrabold',
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          )),
                    ),
                
                    SizedBox(height: 15),
                    Row(
                      
                        children: <Widget>[
                          Text("  "),
                          Image.asset(
                            "assets/parking.png",
                            fit: BoxFit.fitWidth,
                            width: 15,
                            height: 15,
                          ),
                          
                          Text(
                            "     Free parking",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              color: Color.fromRGBO(50, 54, 66, 1),
                              fontFamily: 'Poppinsbold',
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                            ),
                          ),
                          ]),
                          SizedBox(height: 10),
                    Row(
                        children: <Widget>[
                          Text("  "),
                          Image.asset(
                            "assets/kafa.png",
                            fit: BoxFit.fitWidth,
                            width: 18,
                            height: 18,
                          ),
                          
                          Text(
                            "    Caffe bar",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              color: Color.fromRGBO(50, 54, 66, 1),
                              fontFamily: 'Poppinsbold',
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                            ),
                          ),
                          ]),
                          SizedBox(height: 10),
                    Row(
                        children: <Widget>[
                          Text("  "),
                          Image.asset(
                            "assets/wifi.png",
                            fit: BoxFit.fitWidth,
                            width: 18,
                            height: 18,
                          ),
                          
                          Text(
                            "    Free WiFi",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              color: Color.fromRGBO(50, 54, 66, 1),
                              fontFamily: 'Poppinsbold',
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                            ),
                          ),
                          ]),
                           SizedBox(height: 15),

          Align(
                      alignment: Alignment.topLeft,
                      child: Text("Selected filters: ",
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
              activeColor: Colors.green,
              onChanged: (value) {
               
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
              value: isPressed,
              checkColor: Colors.white,
              activeColor: Colors.green,
              onChanged: (value) {
               
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 10),
            child: Text(
              "     5 stars",
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
              value: isPressed,
              checkColor: Colors.white,
              activeColor: Colors.green,
              onChanged: (value) {
               
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 10),
            child: Text(
              "     Resturant",
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
              value: isPressed,
              checkColor: Colors.white,
              activeColor: Colors.green,
              onChanged: (value) {
               
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 10),
            child: Text(
              "     Free Wifi",
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
              value: isPressed,
              checkColor: Colors.white,
              activeColor: Colors.green,
              onChanged: (value) {
               
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 10),
            child: Text(
              "     Free parking",
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
              value: isPressed,
              checkColor: Colors.white,
              activeColor: Colors.green,
              onChanged: (value) {
               
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 10),
            child: Text(
              "     Fitness centre",
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
                      child: Text("Room properties:",
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
        suffixIcon: Icon(Icons.bed),
        contentPadding: EdgeInsets.fromLTRB(20, 20, 20, 15),
        hintText: "Room type",
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
      ),
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
        suffixIcon: Icon(Icons.bed),
        contentPadding: EdgeInsets.fromLTRB(20, 20, 20, 15),
        hintText: "Amount of rooms",
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
      ),
    ),
                SizedBox(height: 15),

          Align(
                      alignment: Alignment.topLeft,
                      child: Text("Rate this accomodation:",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: Color.fromRGBO(50, 54, 66, 1),
                            fontFamily: 'Poppinsextrabold',
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          )),
                    ),
      SizedBox(height: 10),
      RatingBar.builder(
   initialRating: 3,
   minRating: 1,
   direction: Axis.horizontal,
   allowHalfRating: true,
   itemCount: 5,
   itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
   itemBuilder: (context, _) => Icon(
     Icons.star,
     color: Colors.amber,
   ),
   onRatingUpdate: (rating) {
     print(rating);
   },
),

          SizedBox(height:10),
          Container(
                        width: 300,
                        child: Material(
                      elevation: 10,
                      borderRadius: BorderRadius.circular(3),
                      color: Color.fromRGBO(241, 106, 103, 1),
                      child: MaterialButton(
                        height: 60,
                        padding: EdgeInsets.fromLTRB(20, 15, 20, 15),
                        minWidth: MediaQuery.of(context).size.width,
                        onPressed: () {
                         
                          Navigator.push(
                                context, MaterialPageRoute(builder: (context) => route2.ReviewScreen()));
                          
                        },

                        child: Text(
                          "Write a review",
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
                      ),

                    SizedBox(height: 10),
                    Text(
                            "Price:   99 KM/day",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontFamily: 'Poppinsbold',
                              fontSize: 20,
                              color: Color.fromRGBO(241, 106, 103, 1),
                              ),
                          ),
                    
                      SizedBox(height: 10),
                      Container(
                        width: 300,
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
                          "Reserve",
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
                      ),
                  SizedBox(height: 14),
                  Align(
                      alignment: Alignment.topLeft,
                      child: Text("Ratings and reviews:",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: Color.fromRGBO(50, 54, 66, 1),
                            fontFamily: 'Poppinsextrabold',
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          )),
                    ),
                    SizedBox(height: 7),
                  Row(
                        children: <Widget>[
                          Text(
                            "4,0    ",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              color: Color.fromRGBO(50, 54, 66, 1),
                              fontFamily: 'Poppinsbold',
                              fontWeight: FontWeight.bold,
                              fontSize: 22,
                            ),
                          ),
                          Image.asset(
                            "assets/zvijezda.png",
                            fit: BoxFit.fitWidth,
                            width: 25,
                            height: 25,
                          ),
                          Text("  "),
                          Image.asset(
                            "assets/zvijezda.png",
                            fit: BoxFit.fitWidth,
                            width: 25,
                            height: 25,
                          ),
                          Text("  "),
                          Image.asset(
                            "assets/zvijezda.png",
                            fit: BoxFit.fitWidth,
                            width: 25,
                            height: 25,
                          ),
                          Text("  "),
                          Image.asset(
                            "assets/zvijezda.png",
                            fit: BoxFit.fitWidth,
                            width: 25,
                            height: 25,
                          ),
                          ]),
                          SizedBox(height: 15),
                  Row(
                        children: <Widget>[
                          Image.asset(
                            "assets/red.png",
                            fit: BoxFit.fitWidth,
                            width: 50,
                            height: 50,
                          ),
                          
                          Text(
                            "  George Bush",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              color: Color.fromRGBO(50, 54, 66, 1),
                              fontFamily: 'Poppinsbold',
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                          Text(
                            "                                36  ",
                            textAlign: TextAlign.right,
                            style: TextStyle(
                              color: Color.fromRGBO(50, 54, 66, 1),
                              fontFamily: 'Poppinsbold',
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                          Text("    "),
                          Image.asset(
                            "assets/like.png",
                            fit: BoxFit.fitWidth,
                            width: 15,
                            height: 15,
                          ),
                          ]),
                          Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                            "            This application is very interesting! :)",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              color: Color.fromRGBO(50, 54, 66, 1),
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),

                          ),
                          
                          SizedBox(height: 10),
                          Row(
                        children: <Widget>[
                          Image.asset(
                            "assets/blue.png",
                            fit: BoxFit.fitWidth,
                            width: 50,
                            height: 50,
                          ),
                          
                          Text(
                            "  Barack Obama",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              color: Color.fromRGBO(50, 54, 66, 1),
                              fontFamily: 'Poppinsbold',
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                          
                          Text(
                            "                           50  ",
                            textAlign: TextAlign.right,
                            style: TextStyle(
                              color: Color.fromRGBO(50, 54, 66, 1),
                              fontFamily: 'Poppinsbold',
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                          Text("    "),
                          Image.asset(
                            "assets/like.png",
                            fit: BoxFit.fitWidth,
                            width: 15,
                            height: 15,
                          ),
                          ]),
                          Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                            "            I like this app! :D",
                            textAlign: TextAlign.left,
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
              ),
            ),
          ),
        ),
      ),
    );
  }
}
