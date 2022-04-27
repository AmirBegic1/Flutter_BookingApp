import 'package:flutter/material.dart';
import 'package:bookingapp/Screens/LoginScreen.dart' as route1;
import 'package:bookingapp/Screens/RegistrationScreen.dart' as route;
import 'package:carousel_slider/carousel_slider.dart';

class LoggedScreen extends StatefulWidget {
  const LoggedScreen({Key? key}) : super(key: key);

  @override
  State<LoggedScreen> createState() => _LoggedScreenState();
}

class _LoggedScreenState extends State<LoggedScreen> {
  @override
  
  late PageController _pageController;
  Widget build(BuildContext context) {
    final List<String> imageList = ["https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80",
  'https://images.unsplash.com/photo-1523205771623-e0faa4d2813d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=89719a0d55dd05e2deae4120227e6efc&auto=format&fit=crop&w=1953&q=80',
  'https://images.unsplash.com/photo-1508704019882-f9cf40e475b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8c6e5e3aba713b17aa1fe71ab4f0ae5b&auto=format&fit=crop&w=1352&q=80',
  'https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80'];
    final _foreKey = GlobalKey<FormState>();
    final viewallButton = Material(
      elevation: 10,
      borderRadius: BorderRadius.circular(3),
      color: Color.fromRGBO(241, 106, 103, 1),
      child: MaterialButton(
        height: 60,
        padding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        minWidth: MediaQuery.of(context).size.width,
        onPressed: () {
          if (_foreKey.currentState!.validate()) {
            Navigator.of(context).pop();
          }
        },
        child: Text(
          "View all",
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
            
              width: 360,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/decorative-elements.png"),
                  fit: BoxFit.cover,
                  repeat: ImageRepeat.repeat,
              
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(24.0),
                child: Form(
                  child: Column(
                    children: <Widget>[
                     /* SizedBox(
                          height: 200,
                          child: Image.asset(
                            "assets/zebook.png",
                            fit: BoxFit.fitWidth,
                            width: 1000,
                            height: 1000,
                          )),*/
                      SizedBox(height: 2),
                      Align(
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
                        child: Text("Explore amazing accomodations with the best guide.",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color.fromRGBO(50, 54, 66, 1),
                              fontFamily: 'Poppinsbold',
                              fontSize: 17,
                            )),
                      ),
                      Container(
  margin: EdgeInsets.all(16),
  child: CarouselSlider.builder(
    itemCount: imageList.length,
    options: CarouselOptions(
      enlargeCenterPage: true,
      height: 300,
      autoPlay: true,
      autoPlayInterval: Duration(seconds: 6),
      reverse: false,
      aspectRatio: 5.0,
    ),
    itemBuilder: (context, i, id){
      //for onTap to redirect to another screen
      return GestureDetector(
        child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
            border: Border.all(color: Colors.white,)
        ),
          //ClipRRect for image border radius
          child: ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Image.network(
              imageList[i],
            width: 500,
            fit: BoxFit.cover,
            ),
          ),
        ),
        onTap: (){
          var url = imageList[i];
          print(url.toString());
        },
      );
    },
  ),
),
                      Align(
                        alignment: Alignment.center,
                        child: Text("Popular cities",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color.fromRGBO(50, 54, 66, 1),
                              fontFamily: 'Poppinsbold',
                              fontSize: 13,
                            )),
                      ),

                      Container(
  margin: EdgeInsets.all(12),
  child: CarouselSlider.builder(
    itemCount: imageList.length,
    options: CarouselOptions(
      enlargeCenterPage: true,
      height: 300,
      autoPlay: true,
      autoPlayInterval: Duration(seconds: 6),
      reverse: false,
      aspectRatio: 5.0,
    ),
    itemBuilder: (context, i, id){
      //for onTap to redirect to another screen
      return GestureDetector(
        child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
            border: Border.all(color: Colors.white,)
        ),
          //ClipRRect for image border radius
          child: ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Image.network(
              imageList[i],
            width: 500,
            fit: BoxFit.cover,
            ),
          ),
        ),
        onTap: (){
          var url = imageList[i];
          print(url.toString());
        },
      );
    },
  ),
),
                      Align(
                        alignment: Alignment.center,
                        child: Text("Popular accomodations",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color.fromRGBO(50, 54, 66, 1),
                              fontFamily: 'Poppinsbold',
                              fontSize: 13,
                            )),
                      ),  
                      SizedBox(height: 20),
                      viewallButton,
                      
    
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
                      SizedBox(height: 105),
                     
                      SizedBox(height: 30),
                      
                      SizedBox(height: 30),
                      

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

    return Container();
  }
}