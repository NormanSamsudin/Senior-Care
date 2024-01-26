import 'package:flutter/cupertino.dart';
import 'package:flutter_fast_forms/flutter_fast_forms.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class formTempletPage extends StatefulWidget {
  @override
  State<formTempletPage> createState() => _formTempletPageState();
}

class _formTempletPageState extends State<formTempletPage> {
  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();

    // variable of user input
    var _dropdownBlood = '';
    double _enteredHeight = 0.0;
    double _enteredWeight = 0.0;
    var _enteredCDisease = '';
    var _enteredAllergy = '';
    var _enteredSurgery = '';


    // TODO: implement build
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        FastForm(
          formKey: formKey, // key untuk form
          inputDecorationTheme: const InputDecorationTheme(
            disabledBorder: OutlineInputBorder(
              borderSide: BorderSide(width: 1),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(width: 3, color: Colors.white),
              borderRadius: BorderRadius.all(
                Radius.circular(20.0),
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                  width: 3, color: Color.fromARGB(184, 198, 131, 209)),
              borderRadius: BorderRadius.all(Radius.circular(20.0)),
            ),
            errorBorder: OutlineInputBorder(
              borderSide: BorderSide(width: 3, color: Colors.white),
              borderRadius: BorderRadius.all(
                Radius.circular(20.0),
              ),
            ),
            focusedErrorBorder: OutlineInputBorder(
              borderSide: BorderSide(width: 3, color: Colors.red),
              borderRadius: BorderRadius.all(
                Radius.circular(20.0),
              ),
            ),
            filled: true,
            fillColor: Colors.white,
          ),
          children: [
            FastFormSection(
              //Padding text field
              padding: const EdgeInsets.fromLTRB(15, 7, 15, 10),
              header: const Padding(
                padding: EdgeInsets.fromLTRB(0, 1, 15, 1),
                // child: Text(
                //   'Medication Details',
                //   style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                // ),
              ),

              children: [
                Text(""),

                // Blood Type
                Row(
                  children: [
                    const SizedBox(
                      width: 20,
                    ),
                    Text('Blood Type',
                        style: GoogleFonts.plusJakartaSans(
                            textStyle: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 17,
                        ))),
                  ],
                ),

                FastDropdown<String>(
                  name: 'dropdown',
                  items: ['A', 'B', 'AB', 'O'],
                  hint: Text("Select blood type"),
                  //initialValue: 'A',
                  onSaved: (newValue) {
                    _dropdownBlood = newValue!;
                  },
                ),

                // Height & Weight
                Column(
                  children: [
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: ListTile(
                            title: Text('Height',
                                style: GoogleFonts.plusJakartaSans(
                                    textStyle: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 17,
                                ))),
                            subtitle: FastTextField(
                              name: 'text_field',
                              keyboardType: TextInputType.name,
                              decoration: InputDecoration(
                                hintText: '0.00',
                                suffixText: 'm',
                              ),
                              onSaved: (newValue) {
                                _enteredHeight = double.parse(newValue!);
                              },
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Expanded(
                          child: ListTile(
                            title: Text('Weight',
                                style: GoogleFonts.plusJakartaSans(
                                    textStyle: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 17,
                                ))),
                            subtitle: FastTextField(
                              name: 'text_field',
                              keyboardType: TextInputType.name,
                              decoration: InputDecoration(
                                hintText: '0',
                                suffixText: 'kg',
                              ),
                              onSaved: (newValue) {
                                _enteredWeight = double.parse(newValue!);
                              },
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),

                SizedBox(
                  height: 5,
                ),

                // Chronic Disease
                Row(
                  children: [
                    const SizedBox(
                      width: 20,
                    ),
                    Text('Chronic Disease',
                        style: GoogleFonts.plusJakartaSans(
                            textStyle: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 17,
                        ))),
                  ],
                ),

                FastTextField(
                  name: 'text_field',
                  keyboardType: TextInputType.name,
                  decoration:
                      InputDecoration(hintText: "Enter your chronic disease"),
                  onSaved: (newValue) {
                    _enteredCDisease = newValue!;
                  },
                ),

                // Allergy
                Row(
                  children: [
                    const SizedBox(
                      width: 20,
                    ),
                    Text('Allergy',
                        style: GoogleFonts.plusJakartaSans(
                            textStyle: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 17,
                        ))),
                  ],
                ),

                FastTextField(
                  name: 'text_field',
                  keyboardType: TextInputType.name,
                  decoration: InputDecoration(hintText: "Enter your allegy"),
                  onSaved: (newValue) {
                    _enteredAllergy = newValue!;
                  },
                ),

                // Surgery History
                Row(
                  children: [
                    const SizedBox(
                      width: 20,
                    ),
                    Text('Surgery History',
                        style: GoogleFonts.plusJakartaSans(
                            textStyle: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 17,
                        ))),
                  ],
                ),

                FastTextField(
                  name: 'text_field',
                  keyboardType: TextInputType.name,
                  decoration:
                      InputDecoration(hintText: "Enter your surgery history"),
                  onSaved: (newValue) {
                    _enteredSurgery = newValue!;
                  },
                ),

                SizedBox(
                  height: 20,
                ),

                SizedBox(
                  width: 250,
                  height: 50,
                  child: ElevatedButton(
                      style: ButtonStyle(
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                        //side: BorderSide(color: Colors.red)
                      ))),
                      onPressed: () {
                        if (formKey.currentState!.validate()) {
                          formKey.currentState?.save();
                          print('Blood Type $_dropdownBlood');
                          print('Height $_enteredHeight');
                          print('Weight $_enteredWeight');
                          print('Chronic $_enteredCDisease');
                          print('Allergy $_enteredAllergy');
                          print('Surgery $_enteredSurgery');
                          // boleh lagy nk try variable lain
                        }
                        //print('error');
                      },
                      //TODO Tukar jadi sign up
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text('Sign Up'), // <-- Text
                          SizedBox(
                            width: 5,
                          ),
                          Icon(
                            // <-- Icon
                            Icons.person_2_rounded,
                            size: 24.0,
                          ),
                        ],
                      )),
                ),
                const SizedBox(
                  height: 20,
                )
              ],
            ),
          ],
        ),
      ],
    );
  }
}
