// kene install dari pub dev
// - flutter_fast_form
// - google_fonts

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_fast_forms/flutter_fast_forms.dart';
//import 'package:form_example/formTemplet.dart';
import 'package:google_fonts/google_fonts.dart';
import 'profile_details.dart';

// void main() => runApp(const ExampleApp());

class ExampleApp extends StatelessWidget {
  const ExampleApp({super.key});

  @override
  Widget build(BuildContext context) {
    const title = 'Profile Details';

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: title,
      themeMode: ThemeMode.light,
      theme: ThemeData(
        brightness: Brightness.light,
        colorSchemeSeed: const Color.fromARGB(255, 56, 96, 142),
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        colorSchemeSeed: const Color.fromARGB(255, 56, 79, 142),
      ),
      home: FormPage(title: title),
    );
    //}
  }
}

class FormPage extends StatelessWidget {
  FormPage({super.key, required this.title});

  final formKey = GlobalKey<FormState>();
  final String title;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      backgroundColor: const Color.fromARGB(255,242,245,249),
      appBar: AppBar(
        title: Text(title),
        elevation: 4.0,
        shadowColor: theme.shadowColor,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: formTempletPage(),
        ),
      ),
    );
  }
}
