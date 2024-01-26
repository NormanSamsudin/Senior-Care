import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// void main() {
//   runApp(home_page());
// }

class home_page extends StatefulWidget {
  const home_page({super.key});

  @override
  State<home_page> createState() => _home_pageState();
}

class _home_pageState extends State<home_page> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,
      theme: ThemeData(
        brightness: Brightness.light,
        colorSchemeSeed: const Color.fromARGB(255, 56, 96, 142),
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        colorSchemeSeed: const Color.fromARGB(255, 56, 79, 142),
      ),
      home: Scaffold(
        appBar: AppBar(),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                  child: Row(
                children: [
                  SizedBox(
                    width: 20,
                    height: 55,
                  ),
                  Text('Home Screen,',
                      style: GoogleFonts.plusJakartaSans(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.normal,
                      )),
                ],
              )),
              Container(
                child: Row(
                  children: [
                    SizedBox(
                      width: 21,
                      height: 3,
                    ),
                    Text('Hello Ahmad,',
                        style: GoogleFonts.plusJakartaSans(
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                          fontStyle: FontStyle.normal,
                        )),
                  ],
                ),
              ),
              SizedBox(
                width: 5,
                height: 20,
              ),

              //-----------------------------------------------------

              //Dashboard
              InkWell(
                onTap: () {},
                child: Ink(
                  height: 195,
                  width: 370, // Adjust the container width as needed
                  padding: EdgeInsets.all(16.0),
                  color: Colors.lightBlueAccent,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'images/dashboard.png', // Replace with your image asset path
                        width: 140, // Adjust the image width as needed
                        height: 120, // Adjust the image height as needed
                      ),
                      SizedBox(height: 0),
                      Text('Dashboard',
                          style: GoogleFonts.plusJakartaSans(
                            fontSize: 34,
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontStyle: FontStyle.normal,
                          )),
                    ],
                  ),
                ),
              ),

              //-----------------------------------------

              SizedBox(
                height: 20,
              ),

              // Medication & Appointment
              Row(
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  // Medication
                  InkWell(
                    onTap: () {},
                    child: Ink(
                      height: 190,
                      width: 175, // Adjust the container width as needed
                      padding: EdgeInsets.all(16.0),
                      color: Colors.green,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'images/medicine.png', // Replace with your image asset path
                            width: 91, // Adjust the image width as needed
                            height: 91, // Adjust the image height as needed
                          ),
                          SizedBox(height: 15),
                          Text('Medication',
                              style: GoogleFonts.plusJakartaSans(
                                fontSize: 20,
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                                fontStyle: FontStyle.normal,
                              )),
                        ],
                      ),
                    ),
                  ),

                  SizedBox(
                    width: 20,
                  ),

                  InkWell(
                    onTap: () {},
                    child: Ink(
                      height: 190,
                      width: 175, // Adjust the container width as needed
                      padding: EdgeInsets.all(16.0),
                      color: Colors.red,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'images/calendar.png', // Replace with your image asset path
                            width: 91, // Adjust the image width as needed
                            height: 91, // Adjust the image height as needed
                          ),
                          SizedBox(height: 15),
                          Text('Appointment',
                              style: GoogleFonts.plusJakartaSans(
                                fontSize: 20,
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                                fontStyle: FontStyle.normal,
                              )),
                        ],
                      ),
                    ),
                  ),

                  SizedBox(
                    width: 20,
                  ),
                ],
              ),

              SizedBox(
                height: 20,
              ),

              // Care Chat & Profile
              Row(
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  // Medication
                  InkWell(
                    onTap: () {},
                    child: Ink(
                      height: 190,
                      width: 175, // Adjust the container width as needed
                      padding: EdgeInsets.all(16.0),
                      color: Color.fromRGBO(143, 0, 255, 0.5),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'images/chat-box.png', // Replace with your image asset path
                            width: 91, // Adjust the image width as needed
                            height: 91, // Adjust the image height as needed
                          ),
                          SizedBox(height: 15),
                          Text('Care Chat',
                              style: GoogleFonts.plusJakartaSans(
                                fontSize: 20,
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                                fontStyle: FontStyle.normal,
                              )),
                        ],
                      ),
                    ),
                  ),

                  SizedBox(
                    width: 20,
                  ),

                  InkWell(
                    onTap: () {},
                    child: Ink(
                      height: 190,
                      width: 175,
                      padding: EdgeInsets.all(16.0),
                      color: Color.fromRGBO(228, 231, 88, 1),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'images/person.png', // Replace with your image asset path
                            width: 91, // Adjust the image width as needed
                            height: 91, // Adjust the image height as needed
                          ),
                          SizedBox(height: 15),
                          Text('Profile',
                              style: GoogleFonts.plusJakartaSans(
                                fontSize: 20,
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                                fontStyle: FontStyle.normal,
                              )),
                        ],
                      ),
                    ),
                    // Adjust the container width as needed
                  ),

                  SizedBox(
                    width: 20,
                  ),
                ],
              ),

              SizedBox(
                width: 5,
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
