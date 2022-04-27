import 'package:flutter/material.dart';
import 'package:bookingapp/Screens/LoginScreen.dart' as route1;
import 'package:bookingapp/Screens/RegistrationScreen.dart' as route;
import 'package:bookingapp/Screens/mainscreen.dart' as route1;
import 'package:google_maps_flutter/google_maps_flutter.dart';

class AboutUsScreen extends StatefulWidget {
  const AboutUsScreen({Key? key}) : super(key: key);

  @override
  State<AboutUsScreen> createState() => _AboutUsScreenState();
}

class _AboutUsScreenState extends State<AboutUsScreen> {
  static final LatLng _kMapCenter =
      LatLng(19.018255973653343, 72.84793849278007);

  static final CameraPosition _kInitialPosition =
      CameraPosition(target: _kMapCenter, zoom: 11.0, tilt: 0, bearing: 0);
  @override
  Widget build(BuildContext context) {
    final _foreKey = GlobalKey<FormState>();

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
                  child: Column(
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
                      
                      SizedBox(height: 10),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text("About us",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              color: Color.fromRGBO(50, 54, 66, 1),
                              fontFamily: 'Poppinsextrabold',
                              fontWeight: FontWeight.bold,
                              fontSize: 24,
                            )),
                      ),

                      SizedBox(height: 24),
                      Row(
                        children: <Widget>[
                          
                          Text(
                            "Lorem Ipsum is simply dummy text "
                            "\nof the printing and typesetting industry."
                            "\nLorem Ipsum has been the industry's"
                            "\nstandard dummy text ever since the"
                            "\nwhen an unknown printer took a galley "
                            "\nof type and scrambled it to make"
                            "\na type specimen book.",
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                              color: Color.fromRGBO(50, 54, 66, 1),
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 50),
                      Row(
                        children: <Widget>[
                          Text(
                            "Our location",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              color: Color.fromRGBO(50, 54, 66, 1),
                              fontFamily: 'Poppinsbold',
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 50),
                      /* GoogleMap(
                    initialCameraPosition: _kInitialPosition,
                    ),
*/

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
