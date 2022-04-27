import 'package:bookingapp/Screens/filterscreen.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:bookingapp/Screens/navbar.dart';
import 'package:bookingapp/Screens/paymentscreen.dart' as route9;
import 'package:bookingapp/Screens/hotelregistration.dart' as route10;
import 'package:bookingapp/Screens/specific.dart' as route10;

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    
    final List<String> imageList = [
      "https://upload.wikimedia.org/wikipedia/commons/e/e3/Sarajevo_City_Panorama.JPG",
      "https://upload.wikimedia.org/wikipedia/commons/a/a3/Zenica_%28collage_image%29.jpg",
      "https://upload.wikimedia.org/wikipedia/commons/thumb/b/b3/Saborna_crkva_Hrista_spasitelja_Banjaluka.jpg/1280px-Saborna_crkva_Hrista_spasitelja_Banjaluka.jpg",
    ];
    final List<String> imageList1 = [
      "https://cf.bstatic.com/xdata/images/hotel/max500/3179849.jpg?k=709f2b68a8091ad4d2a9d6a0f6a108a57dbbf5483e79971d00ce5dad9ea594e8&o=&hp=1",
      "https://cf.bstatic.com/xdata/images/hotel/max500/3179849.jpg?k=709f2b68a8091ad4d2a9d6a0f6a108a57dbbf5483e79971d00ce5dad9ea594e8&o=&hp=1",
      "https://cf.bstatic.com/xdata/images/hotel/max500/3179849.jpg?k=709f2b68a8091ad4d2a9d6a0f6a108a57dbbf5483e79971d00ce5dad9ea594e8&o=&hp=1",
      "https://cf.bstatic.com/xdata/images/hotel/max500/3179849.jpg?k=709f2b68a8091ad4d2a9d6a0f6a108a57dbbf5483e79971d00ce5dad9ea594e8&o=&hp=1",
    ];

    final _foreKey = GlobalKey<FormState>();
    final specificButton = Material(
      elevation: 10,
      borderRadius: BorderRadius.circular(3),
      color: Color.fromRGBO(241, 106, 103, 1),
      child: MaterialButton(
        height: 60,
        padding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        minWidth: 240,
        onPressed: () {
          Navigator.push(
                context, MaterialPageRoute(builder: (context) => route10.SpecificAcc()));
        },
        child: Text(
          "Specific Accomodation",
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

    final viewallButton = Material(
      elevation: 10,
      borderRadius: BorderRadius.circular(3),
      color: Color.fromRGBO(241, 106, 103, 1),
      child: MaterialButton(
        height: 60,
        padding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        minWidth: 240,
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
    final paymentButton = Material(
      elevation: 10,
      borderRadius: BorderRadius.circular(3),
      color: Color.fromRGBO(241, 106, 103, 1),
      child: MaterialButton(
        height: 60,
        padding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        minWidth: 240,
        onPressed: () {
          Navigator.push(
                context, MaterialPageRoute(builder: (context) => route9.PaymentScreen()));
        },
        child: Text(
          "Payment - TEST",
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
    final hotelRegistrationButton = Material(
      elevation: 10,
      borderRadius: BorderRadius.circular(3),
      color: Color.fromRGBO(241, 106, 103, 1),
      child: MaterialButton(
        height: 60,
        padding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        minWidth: 240,
        onPressed: () {
          Navigator.push(
                context, MaterialPageRoute(builder: (context) => route10.HotelRegistration()));
        },
        child: Text(
          "Property registration",
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
        drawer: Container(width: 200, child: NavBar()),
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.white),
          centerTitle: true,
          backgroundColor: Color.fromRGBO(241, 106, 103, 1),
          title: Text(
            "Zeebook",
            style: TextStyle(
              fontFamily: 'Poppinsbold',
              fontSize: 25,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          actions: [
            // Navigate to the Search Screen
            IconButton(
                onPressed: () => Navigator.of(context)
                    .push(MaterialPageRoute(builder: (_) => SearchPage())),
                icon: Icon(Icons.search)),

            IconButton(
                onPressed: () => Navigator.of(context)
                    .push(MaterialPageRoute(builder: (_) => FilterScreen())),
                icon: Icon(Icons.filter_1))
          ],
        ),
        backgroundColor: Colors.white,
        body: Center(
          child: SingleChildScrollView(
            child: Container(
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
                        child: Text("Explore amazing accomodations with the best guide.",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color.fromRGBO(50, 54, 66, 1),
                              fontFamily: 'Poppinsbold',
                              fontSize: 17,
                            )),
                      ),*/
                      SizedBox(height: 20),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text("Popular cities",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color.fromRGBO(50, 54, 66, 1),
                              fontFamily: 'Poppinsbold',
                              fontSize: 20,
                            )),
                      ),

                      CarouselSlider(
                        items: [
                          //1st Image of Slider
                          Container(
                            width: 350,
                            height: 200,
                            margin: EdgeInsets.all(6.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.0),
                              image: DecorationImage(
                                image: NetworkImage(
                                    "https://upload.wikimedia.org/wikipedia/commons/d/d7/Mostar_Old_Town_Panorama_2007.jpg"),
                                fit: BoxFit.cover,
                              ),
                            ),
                            child: Text(
                              'Mostar',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontFamily: 'Poppinsextrabold',
                                color: Colors.white,
                                fontSize: 30,
                              ),
                            ),
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
                                  "https://upload.wikimedia.org/wikipedia/commons/e/e3/Sarajevo_City_Panorama.JPG",
                                ),
                                fit: BoxFit.cover,
                              ),
                            ),
                            child: Text(
                              'Sarajevo',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontFamily: 'Poppinsextrabold',
                                color: Colors.white,
                                fontSize: 30,
                              ),
                            ),
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
                                  "https://cdn.shortpixel.ai/spai/w_994+q_glossy+ret_img+to_webp/https://balkangreenenergynews.com/wp-content/uploads/2018/08/Funds-secured-for-wastewater-collection-treatment-project-in-Zenica.jpg",
                                ),
                                fit: BoxFit.cover,
                              ),
                            ),
                            child: Text(
                              'Zenica',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontFamily: 'Poppinsextrabold',
                                color: Colors.white,
                                fontSize: 30,
                              ),
                            ),
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
                                    "https://upload.wikimedia.org/wikipedia/commons/thumb/b/b3/Saborna_crkva_Hrista_spasitelja_Banjaluka.jpg/1280px-Saborna_crkva_Hrista_spasitelja_Banjaluka.jpg"),
                                fit: BoxFit.cover,
                              ),
                            ),
                            child: Text(
                              'Banja Luka',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontFamily: 'Poppinsextrabold',
                                color: Colors.white,
                                fontSize: 30,
                              ),
                            ),
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
                      SizedBox(height: 40),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text("Popular accomodations",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color.fromRGBO(50, 54, 66, 1),
                              fontFamily: 'Poppinsbold',
                              fontSize: 20,
                            )),
                      ),

                      CarouselSlider(
                        items: [
                          //1st Image of Slider
                          Container(
                            width: 350,
                            height: 200,
                            margin: EdgeInsets.all(6.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.0),
                              image: DecorationImage(
                                image: NetworkImage(
                                    "https://scontent.fsjj1-1.fna.fbcdn.net/v/t1.6435-9/104089560_3094766223934514_9105618174168733135_n.jpg?_nc_cat=105&ccb=1-5&_nc_sid=09cbfe&_nc_ohc=YA_mLoioC6UAX9bb79l&_nc_ht=scontent.fsjj1-1.fna&oh=00_AT8gEng5LM8g9kqBHbNwyLlpMerd9bpDVGNjtoF5DXF7YQ&oe=62868DE6"),
                                fit: BoxFit.cover,
                              ),
                            ),
                            child: Text(
                              'Hotel Dubrovnik',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontFamily: 'Poppinsextrabold',
                                color: Colors.white,
                                fontSize: 30,
                              ),
                            ),
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
                                  "https://t-cf.bstatic.com/xdata/images/hotel/max1024x768/307603905.jpg?k=0a62f02fb1c204811644be04d31f081cc69398c2f3c4b6aff855a2de4515b3cb&o=&hp=1",
                                ),
                                fit: BoxFit.cover,
                              ),
                            ),
                            child: Text(
                              'Hotel Holiday',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontFamily: 'Poppinsextrabold',
                                color: Colors.white,
                                fontSize: 30,
                              ),
                            ),
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
                                  "https://q-xx.bstatic.com/xdata/images/hotel/max1024x768/11013053.jpg?k=a83e7b461808b5a4a12c745c54fbc4d781378fb0dfa775ca23333e19da05c395&o=",
                                ),
                                fit: BoxFit.cover,
                              ),
                            ),
                            child: Text(
                              'Hotel Mostar',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontFamily: 'Poppinsextrabold',
                                color: Colors.white,
                                fontSize: 30,
                              ),
                            ),
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
                                    "https://pix8.agoda.net/hotelImages/22930930/0/2ccfab45d20f8d8e3b0c712a8ba5c20d.jpg?ca=23&ce=0&s=1024x768"),
                                fit: BoxFit.cover,
                              ),
                            ),
                            child: Text(
                              'Hotel Hills',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontFamily: 'Poppinsextrabold',
                                color: Colors.white,
                                fontSize: 30,
                              ),
                            ),
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

                      SizedBox(height: 20),
                      viewallButton,
                      SizedBox(height: 20),
                      paymentButton,
                      SizedBox(height: 20),
                      hotelRegistrationButton,
                      SizedBox(height: 20),
                      specificButton,

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

  Detail() {}
}

class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          // The search area here
          backgroundColor: Color.fromRGBO(241, 106, 103, 1),
          title: Container(
            width: double.infinity,
            height: 40,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(5)),
            child: Center(
              child: TextField(
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.bold,
                  color: Color.fromRGBO(50, 54, 66, 1),
                ),
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search),
                    suffixIcon: IconButton(
                      icon: Icon(Icons.clear),
                      onPressed: () {
                        /* Clear the search field */
                      },
                    ),
                    contentPadding: EdgeInsets.fromLTRB(20, 10, 20, 15),
                    hintText: 'Search...',
                    hintStyle: new TextStyle(
                      fontFamily: 'Poppinsbold',
                    ),
                    border: InputBorder.none),
              ),
            ),
          )),
    );
  }
}

class FilterPage extends StatelessWidget {
  
  const FilterPage({Key? key}) : super(key: key);
  

  @override
  Widget build(BuildContext context) {
    final TextEditingController destinationController = new TextEditingController();
    final TextEditingController typeController = new TextEditingController();
    final TextEditingController nameController = new TextEditingController();
    final _foreKey = GlobalKey<FormState>();
    final destinationField = TextFormField(
      //rgba(50, 54, 66, 1)
      style: TextStyle(
        fontFamily: 'Poppins',
        fontWeight: FontWeight.bold,
        color: Color.fromRGBO(50, 54, 66, 1),
      ),
      autofocus: false,
      controller: destinationController,
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
        destinationController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        errorStyle: TextStyle(
          fontFamily: 'Poppinsbold',
        ),
        suffixIcon: Icon(Icons.search),
        contentPadding: EdgeInsets.fromLTRB(20, 20, 20, 15),
        hintText: "Destination",
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
    final typeField = TextFormField(
      //rgba(50, 54, 66, 1)
      style: TextStyle(
        fontFamily: 'Poppins',
        fontWeight: FontWeight.bold,
        color: Color.fromRGBO(50, 54, 66, 1),
      ),
      autofocus: false,
      controller: typeController,
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
        typeController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        errorStyle: TextStyle(
          fontFamily: 'Poppinsbold',
        ),
        suffixIcon: Icon(Icons.apartment),
        contentPadding: EdgeInsets.fromLTRB(20, 20, 20, 15),
        hintText: "Type of accomodation",
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
    final nameField = TextFormField(
      //rgba(50, 54, 66, 1)
      style: TextStyle(
        fontFamily: 'Poppins',
        fontWeight: FontWeight.bold,
        color: Color.fromRGBO(50, 54, 66, 1),
      ),
      autofocus: false,
      controller: nameController,
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
        nameController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        errorStyle: TextStyle(
          fontFamily: 'Poppinsbold',
        ),
        suffixIcon: Icon(Icons.abc),
        contentPadding: EdgeInsets.fromLTRB(20, 20, 20, 15),
        hintText: "Name of accomodation",
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
                    destinationField,
                  ]),),),),),),
        

    );
  }
}
