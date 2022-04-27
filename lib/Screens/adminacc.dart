import 'package:flutter/material.dart';
import 'package:bookingapp/Screens/mainscreen.dart' as route1;
import 'package:bookingapp/Screens/admin.dart' as route2;
import 'package:bookingapp/Screens/adminreservation.dart' as route3;

class AdminAcc extends StatefulWidget {
  const AdminAcc({Key? key}) : super(key: key);

  @override
  State<AdminAcc> createState() => _AdminAccState();
}

class _AdminAccState extends State<AdminAcc> {
  
  @override
  Widget build(BuildContext context) {
    final reservationButton = Material(
      elevation: 10,
      borderRadius: BorderRadius.circular(5),
      color: Color.fromRGBO(241, 106, 103, 1),
      child: MaterialButton(
        height: 60,
        padding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        minWidth: 200,
        onPressed: () {
  Navigator.push(
                                context, MaterialPageRoute(builder: (context) => route2.AdminScreen()));
                          
       },
        child: Text(
          "Users",
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
    final accomodationsButton = Material(
      elevation: 10,
      borderRadius: BorderRadius.circular(5),
      color: Color.fromRGBO(241, 106, 103, 1),
      child: MaterialButton(
        height: 60,
        padding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        minWidth: 200,
        onPressed: () {
  Navigator.push(
                                context, MaterialPageRoute(builder: (context) => route3.AdminReservation()));
                          
       },
        child: Text(
          "Reservations",
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
    
    
    final TextEditingController nameController = new TextEditingController();
    final TextEditingController emailController = new TextEditingController();
    final TextEditingController commentController = new TextEditingController();
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
                      /*SizedBox(
                          height: 200,
                          child: Image.asset(
                            "assets/zebook.png",
                            fit: BoxFit.fitWidth,
                            width: 1000,
                            height: 1000,
                          )),*/
                      SizedBox(height: 10),
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
                        alignment: Alignment.center,
                        child: Text("Admin menu - ACCOMODATIONS",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              color: Color.fromRGBO(241, 106, 103, 1),
                              fontFamily: 'Poppinsextrabold',
                              fontWeight: FontWeight.bold,
                              fontSize: 24,
                            )),
                      ),

                      Row(
                        children: <Widget>[
                          SizedBox(height: 10),
                          Spacer(),
                          Align(
                            alignment: Alignment.center,
                            child: reservationButton,
                          ),
                          Text("    "),
                          Align(
                            alignment: Alignment.center,
                            child: accomodationsButton,
                          ),
                           Spacer(),
                          
                          
                          
                          ]),
SizedBox(height: 10),
                    Container(   
                    padding: const EdgeInsets.all(16.0),
                    decoration: BoxDecoration(
                        border: Border.all(),
                        borderRadius: BorderRadius.circular(7),
                      ),
                      child: Column(
                         children: [
                           Align(
                             alignment: Alignment.topLeft,
                             child: Text(
                            "Name: Dubrovnik",
                            textAlign: TextAlign.right,
                            style: TextStyle(
                              color: Color.fromRGBO(50, 54, 66, 1),
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                        ),
                        Align(
                             alignment: Alignment.topLeft,
                             child: Text(
                            "City: Zenica",
                            textAlign: TextAlign.right,
                            style: TextStyle(
                              color: Color.fromRGBO(50, 54, 66, 1),
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                        ),
                        Align(
                             alignment: Alignment.topLeft,
                             child: Text(
                            "Type: Hotel",
                            textAlign: TextAlign.right,
                            style: TextStyle(
                              color: Color.fromRGBO(50, 54, 66, 1),
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                        ),
                        Align(
                             alignment: Alignment.topLeft,
                             child: Text(
                            "Address: Mejdandzik 11",
                            textAlign: TextAlign.right,
                            style: TextStyle(
                              color: Color.fromRGBO(50, 54, 66, 1),
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                        ),
                        Align(
                             alignment: Alignment.topLeft,
                             child: Text(
                            "Price: 99,99 KM per day",
                            textAlign: TextAlign.right,
                            style: TextStyle(
                              color: Color.fromRGBO(50, 54, 66, 1),
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                        ),
                        Align(
                             alignment: Alignment.topLeft,
                             child: Text(
                            "Reviews: Excellent",
                            textAlign: TextAlign.right,
                            style: TextStyle(
                              color: Color.fromRGBO(50, 54, 66, 1),
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                        ),
                        Align(
                             alignment: Alignment.topLeft,
                             child: Text(
                            "Rating: 4.5",
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
                    ),
                    SizedBox(height: 10),
                    Container(   
                    padding: const EdgeInsets.all(16.0),
                    decoration: BoxDecoration(
                        border: Border.all(),
                        borderRadius: BorderRadius.circular(7),
                      ),
                      child: Column(
                         children: [
                           Align(
                             alignment: Alignment.topLeft,
                             child: Text(
                            "Name: Dubrovnik",
                            textAlign: TextAlign.right,
                            style: TextStyle(
                              color: Color.fromRGBO(50, 54, 66, 1),
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                        ),
                        Align(
                             alignment: Alignment.topLeft,
                             child: Text(
                            "City: Zenica",
                            textAlign: TextAlign.right,
                            style: TextStyle(
                              color: Color.fromRGBO(50, 54, 66, 1),
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                        ),
                        Align(
                             alignment: Alignment.topLeft,
                             child: Text(
                            "Type: Hotel",
                            textAlign: TextAlign.right,
                            style: TextStyle(
                              color: Color.fromRGBO(50, 54, 66, 1),
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                        ),
                        Align(
                             alignment: Alignment.topLeft,
                             child: Text(
                            "Address: Mejdandzik 11",
                            textAlign: TextAlign.right,
                            style: TextStyle(
                              color: Color.fromRGBO(50, 54, 66, 1),
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                        ),
                        Align(
                             alignment: Alignment.topLeft,
                             child: Text(
                            "Price: 99,99 KM per day",
                            textAlign: TextAlign.right,
                            style: TextStyle(
                              color: Color.fromRGBO(50, 54, 66, 1),
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                        ),
                        Align(
                             alignment: Alignment.topLeft,
                             child: Text(
                            "Reviews: Excellent",
                            textAlign: TextAlign.right,
                            style: TextStyle(
                              color: Color.fromRGBO(50, 54, 66, 1),
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                        ),
                        Align(
                             alignment: Alignment.topLeft,
                             child: Text(
                            "Rating: 4.5",
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
                    ),
                    
                    SizedBox(height: 10),
                    Container(   
                    padding: const EdgeInsets.all(16.0),
                    decoration: BoxDecoration(
                        border: Border.all(),
                        borderRadius: BorderRadius.circular(7),
                      ),
                      child: Column(
                         children: [
                           Align(
                             alignment: Alignment.topLeft,
                             child: Text(
                            "Name: Dubrovnik",
                            textAlign: TextAlign.right,
                            style: TextStyle(
                              color: Color.fromRGBO(50, 54, 66, 1),
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                        ),
                        Align(
                             alignment: Alignment.topLeft,
                             child: Text(
                            "City: Zenica",
                            textAlign: TextAlign.right,
                            style: TextStyle(
                              color: Color.fromRGBO(50, 54, 66, 1),
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                        ),
                        Align(
                             alignment: Alignment.topLeft,
                             child: Text(
                            "Type: Hotel",
                            textAlign: TextAlign.right,
                            style: TextStyle(
                              color: Color.fromRGBO(50, 54, 66, 1),
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                        ),
                        Align(
                             alignment: Alignment.topLeft,
                             child: Text(
                            "Address: Mejdandzik 11",
                            textAlign: TextAlign.right,
                            style: TextStyle(
                              color: Color.fromRGBO(50, 54, 66, 1),
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                        ),
                        Align(
                             alignment: Alignment.topLeft,
                             child: Text(
                            "Price: 99,99 KM per day",
                            textAlign: TextAlign.right,
                            style: TextStyle(
                              color: Color.fromRGBO(50, 54, 66, 1),
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                        ),
                        Align(
                             alignment: Alignment.topLeft,
                             child: Text(
                            "Reviews: Excellent",
                            textAlign: TextAlign.right,
                            style: TextStyle(
                              color: Color.fromRGBO(50, 54, 66, 1),
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                        ),
                        Align(
                             alignment: Alignment.topLeft,
                             child: Text(
                            "Rating: 4.5",
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
                    ),
                    
                    SizedBox(height: 10),
                    Container(   
                    padding: const EdgeInsets.all(16.0),
                    decoration: BoxDecoration(
                        border: Border.all(),
                        borderRadius: BorderRadius.circular(7),
                      ),
                      child: Column(
                         children: [
                           Align(
                             alignment: Alignment.topLeft,
                             child: Text(
                            "Name: Dubrovnik",
                            textAlign: TextAlign.right,
                            style: TextStyle(
                              color: Color.fromRGBO(50, 54, 66, 1),
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                        ),
                        Align(
                             alignment: Alignment.topLeft,
                             child: Text(
                            "City: Zenica",
                            textAlign: TextAlign.right,
                            style: TextStyle(
                              color: Color.fromRGBO(50, 54, 66, 1),
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                        ),
                        Align(
                             alignment: Alignment.topLeft,
                             child: Text(
                            "Type: Hotel",
                            textAlign: TextAlign.right,
                            style: TextStyle(
                              color: Color.fromRGBO(50, 54, 66, 1),
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                        ),
                        Align(
                             alignment: Alignment.topLeft,
                             child: Text(
                            "Address: Mejdandzik 11",
                            textAlign: TextAlign.right,
                            style: TextStyle(
                              color: Color.fromRGBO(50, 54, 66, 1),
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                        ),
                        Align(
                             alignment: Alignment.topLeft,
                             child: Text(
                            "Price: 99,99 KM per day",
                            textAlign: TextAlign.right,
                            style: TextStyle(
                              color: Color.fromRGBO(50, 54, 66, 1),
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                        ),
                        Align(
                             alignment: Alignment.topLeft,
                             child: Text(
                            "Reviews: Excellent",
                            textAlign: TextAlign.right,
                            style: TextStyle(
                              color: Color.fromRGBO(50, 54, 66, 1),
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                        ),
                        Align(
                             alignment: Alignment.topLeft,
                             child: Text(
                            "Rating: 4.5",
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
                    ),
                    
                    SizedBox(height: 10),
                    Container(   
                    padding: const EdgeInsets.all(16.0),
                    decoration: BoxDecoration(
                        border: Border.all(),
                        borderRadius: BorderRadius.circular(7),
                      ),
                      child: Column(
                         children: [
                           Align(
                             alignment: Alignment.topLeft,
                             child: Text(
                            "Name: Dubrovnik",
                            textAlign: TextAlign.right,
                            style: TextStyle(
                              color: Color.fromRGBO(50, 54, 66, 1),
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                        ),
                        Align(
                             alignment: Alignment.topLeft,
                             child: Text(
                            "City: Zenica",
                            textAlign: TextAlign.right,
                            style: TextStyle(
                              color: Color.fromRGBO(50, 54, 66, 1),
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                        ),
                        Align(
                             alignment: Alignment.topLeft,
                             child: Text(
                            "Type: Hotel",
                            textAlign: TextAlign.right,
                            style: TextStyle(
                              color: Color.fromRGBO(50, 54, 66, 1),
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                        ),
                        Align(
                             alignment: Alignment.topLeft,
                             child: Text(
                            "Address: Mejdandzik 11",
                            textAlign: TextAlign.right,
                            style: TextStyle(
                              color: Color.fromRGBO(50, 54, 66, 1),
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                        ),
                        Align(
                             alignment: Alignment.topLeft,
                             child: Text(
                            "Price: 99,99 KM per day",
                            textAlign: TextAlign.right,
                            style: TextStyle(
                              color: Color.fromRGBO(50, 54, 66, 1),
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                        ),
                        Align(
                             alignment: Alignment.topLeft,
                             child: Text(
                            "Reviews: Excellent",
                            textAlign: TextAlign.right,
                            style: TextStyle(
                              color: Color.fromRGBO(50, 54, 66, 1),
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                        ),
                        Align(
                             alignment: Alignment.topLeft,
                             child: Text(
                            "Rating: 4.5",
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
                    ),
                    
                    











                     

                      
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
