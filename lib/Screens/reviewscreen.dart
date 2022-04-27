import 'package:bookingapp/Screens/mainscreen.dart' as route1;
import 'package:flutter/material.dart';
import 'package:bookingapp/Screens/specific.dart' as route2;
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class ReviewScreen extends StatefulWidget {
  const ReviewScreen({Key? key}) : super(key: key);

  @override
  State<ReviewScreen> createState() => _ReviewScreenState();
}

class _ReviewScreenState extends State<ReviewScreen> {
  final _foreKey = GlobalKey<FormState>();
  final TextEditingController commentController = new TextEditingController();
 

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      
      backgroundColor: Colors.white,
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            height: 500,
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
                  
                  children: <Widget>[
                    new Positioned(
                  top: 0.0,
                  left: 0.0,
                  right: 0.0,
                  child: AppBar(
                    title: Text(''),
                    leading: new IconButton(
                      icon: new Icon(Icons.arrow_back_ios, color: Colors.grey),
                      onPressed: () => Navigator.push(context,
              MaterialPageRoute(builder: (context) => route2.SpecificAcc())),
                    ),
                    backgroundColor: Colors.blue.withOpacity(0.0), 
                    elevation: 0.0, 
                  ),),
                  
                      
                       Text("Writing a review",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: Color.fromRGBO(50, 54, 66, 1),
                            fontFamily: 'Poppinsextrabold',
                            fontWeight: FontWeight.bold,
                            fontSize: 24,
                          )),
                    
                    
                SizedBox(height: 10),

          Align(
                      alignment: Alignment.center,
                      child: Text("Rate this accomodation:",
                          textAlign: TextAlign.center,
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

          SizedBox(height:15),

                    Container(
      width: 300,
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
        hintText: "Describe your experience",
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
      maxLines: 10, // <-- SEE HERE
  minLines: 1,
      ),
    ),
                    
                      SizedBox(height: 15),
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
