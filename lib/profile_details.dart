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
    var _enteredVal1 = '';
    List<String?>? _selectedItemList1 = [];
    DateTime _selectedDate = DateTime.now();
    DateTimeRange _selectedDateRange;
    TimeOfDay _selectedTime;
    List<String?>? _selectedItemList2 = [];
    List<String?>? _selectedItemList3 = [];
    bool _selectedSwitch = false;
    var _enteredName = '';
    var _enteredAddress = '';
    var _enteredPhone = '';
    var _enteredEContact= '';

    var _dropdownNation = '';
    var _selectedRadioButton = '';
    double _sliderVolume = 0.0;
    RangeValues _scaleSliderVolume;
    Map<String, bool>? _selectedAddOnn;
    DateTime _visualDate;
    bool _selectedCheckBox = false;

    // TODO: implement build
    return Column(
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
                //   'Profile Details',
                //   style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                // ),
              ),
              children: [
                Text(""),

                // Full Name
                Row(
                  children: [
                    const SizedBox(
                      width: 20,
                    ),
                    Text('Full Name',
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
                  //prefix: Icon(Image.asset('images/person.png')),
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.person)
                  ),
                  validator: Validators.compose([
                    Validators.required((value) => 'Field is required'),
                  ]),
                  //buildCounter: inputCounterWidgetBuilder,
                  //inputFormatters: const [],
                  onSaved: (newValue) {
                    _enteredName = newValue!;
                  },
                ),


                // Address
                Row(
                  children: [
                    const SizedBox(
                      width: 20,
                    ),
                    Text('Address',
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
                  //prefix: Icon(Image.asset('images/person.png')),
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.home)
                  ),
                  //buildCounter: inputCounterWidgetBuilder,
                  //inputFormatters: const [],
                  validator: Validators.compose([
                    Validators.required((value) => 'Field is required'),
                  ]),
                  onSaved: (newValue) {
                    _enteredAddress = newValue!;
                  },
                ),

                // Phone Number
                Row(
                  children: [
                    const SizedBox(
                      width: 20,
                    ),
                    Text('Phone Number',
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
                  //prefix: Icon(Image.asset('images/person.png')),
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.phone_in_talk)
                  ),
                  //buildCounter: inputCounterWidgetBuilder,
                  //inputFormatters: const [],
                  validator: Validators.compose([
                    Validators.required((value) => 'Field is required'),
                  ]),
                  onSaved: (newValue) {
                    _enteredPhone = newValue!;
                  },
                ),

                // Emergency Contact
                Row(
                  children: [
                    const SizedBox(
                      width: 20,
                    ),
                    Text('Emergency Contact',
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
                  //prefix: Icon(Image.asset('images/person.png')),
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.phone_in_talk)
                  ),
                  //buildCounter: inputCounterWidgetBuilder,
                  //inputFormatters: const [],
                  validator: Validators.compose([
                    Validators.required((value) => 'Field is required'),
                  ]),
                  onSaved: (newValue) {
                    _enteredEContact = newValue!;
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
                          shape: MaterialStateProperty.all<
                              RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(18.0),
                                  //side: BorderSide(color: Colors.red)
                              ))
                      ),
                      onPressed: () {
                        if (formKey.currentState!.validate()) {
                          formKey.currentState?.save();
                          print('Name $_enteredName');
                          print('Address $_enteredAddress');
                          print('Phone Number $_enteredPhone');
                          print('Emergency $_enteredEContact');

                          // boleh lagy nk try variable lain
                        }
                        //print('error');
                      },
                      child: Text('Next')),
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
