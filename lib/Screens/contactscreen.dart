import 'package:flutter/material.dart';
import 'package:bookingapp/Screens/mainscreen.dart' as route1;

class ContactScreen extends StatefulWidget {
  const ContactScreen({Key? key}) : super(key: key);

  @override
  State<ContactScreen> createState() => _ContactScreenState();
}

class _ContactScreenState extends State<ContactScreen> {
  @override
  Widget build(BuildContext context) {
    
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
                        alignment: Alignment.topLeft,
                        child: Text("Contact us",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              color: Color.fromRGBO(50, 54, 66, 1),
                              fontFamily: 'Poppinsextrabold',
                              fontWeight: FontWeight.bold,
                              fontSize: 24,
                            )),
                      ),
                      SizedBox(height: 40),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text("Address",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              color: Color.fromRGBO(50, 54, 66, 1),
                              fontFamily: 'Poppinsbold',
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            )),
                      ),
                      SizedBox(height: 15),
                      Row(
                        children: <Widget>[
                          Text("    "),
                          Image.asset(
                            "assets/location.png",
                            fit: BoxFit.fitWidth,
                            width: 14,
                            height: 20,
                          ),
                          
                          Text(
                            "    Fakultetska 1, Zenica",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              color: Color.fromRGBO(50, 54, 66, 1),
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                          ]),
                      SizedBox(height: 20),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text("Phone number",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              color: Color.fromRGBO(50, 54, 66, 1),
                              fontFamily: 'Poppinsbold',
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            )),
                      ),
                      SizedBox(height: 15),
                      Row(
                        children: <Widget>[
                          Text("    "),
                          Image.asset(
                            "assets/phone.png",
                            fit: BoxFit.fitWidth,
                            width: 14,
                            height: 20,
                          ),
                          
                          Text(
                            "    032/556-665",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              color: Color.fromRGBO(50, 54, 66, 1),
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                          ]),
                          Row(
                        children: <Widget>[
                          Text("    "),
                          Image.asset(
                            "assets/phone.png",
                            fit: BoxFit.fitWidth,
                            width: 14,
                            height: 20,
                          ),
                          
                          Text(
                            "    032/546-365",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              color: Color.fromRGBO(50, 54, 66, 1),
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                          ]),
                          SizedBox(height: 20),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text("Follow us on",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              color: Color.fromRGBO(50, 54, 66, 1),
                              fontFamily: 'Poppinsbold',
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            )),
                      ),
                      SizedBox(height: 15),
                          Row(
                        children: <Widget>[
                          Text("    "),
                          Image.asset(
                            "assets/facebook.png",
                            fit: BoxFit.fitWidth,
                            width: 14,
                            height: 20,
                          ),
                          
                          Text(
                            "    Facebook",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              color: Color.fromRGBO(50, 54, 66, 1),
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                          ]),
                          Row(
                        children: <Widget>[
                          Text("    "),
                          Image.asset(
                            "assets/instagram.png",
                            fit: BoxFit.fitWidth,
                            width: 14,
                            height: 20,
                          ),
                          
                          Text(
                            "    Instagram",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              color: Color.fromRGBO(50, 54, 66, 1),
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                          ]),
                          Row(
                        children: <Widget>[
                          Text("    "),
                          Image.asset(
                            "assets/Twitter.png",
                            fit: BoxFit.fitWidth,
                            width: 14,
                            height: 20,
                          ),
                          
                          Text(
                            "    Twitter",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              color: Color.fromRGBO(50, 54, 66, 1),
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                          ]),
                          SizedBox(height: 30),
                          SizedBox(
      width: 300,
      child: TextFormField(
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
        suffixIcon: Icon(Icons.supervised_user_circle),
        contentPadding: EdgeInsets.fromLTRB(20, 20, 20, 15),
        hintText: "Full name",
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
    SizedBox(height:15),
    SizedBox(
      width: 300,
      child: TextFormField(
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
        hintText: "Email address",
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
        hintText: "Comment",
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
    SizedBox(height:15),
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
                          "Send message",
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
