import 'dart:html';
import 'dart:core';

import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:email_validator/email_validator.dart';

class Register extends StatefulWidget {
  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  bool _obscureText = true;
  String _password = '';
  String email = '';

  void _toggle() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  final GlobalKey<FormState> _form = GlobalKey<FormState>();
  final TextEditingController _email = TextEditingController();
  final TextEditingController _pass = TextEditingController();
  final TextEditingController _confirmPass = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.black),
            onPressed: () => Navigator.of(context).pop(),
          ),
          iconTheme: const IconThemeData(
            color: Colors.white, //change your color here
          ),
          title: const Text(
            "Register",
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            height: double.infinity,
            margin: const EdgeInsets.fromLTRB(0, 100, 0, 0),
            child: Form(
              key: _form,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: const EdgeInsets.only(bottom: 50),
                    child: Image.asset(
                      'images/logo.png',
                      width: 200,
                      height: 50,
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 10),
                    child: Column(
                      children: [
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "E-mail address",
                              textAlign: TextAlign.left,
                              style: GoogleFonts.roboto(
                                  fontWeight: FontWeight.w500),
                            )),
                        TextFormField(
                          controller: _email,
                          validator: (val) {
                            if (val == null || val == '')
                              return 'Empty';
                            else if (EmailValidator.validate(val))
                              return null;
                            else
                              return 'Please use valid email address';
                            return null;
                          },
                          decoration: const InputDecoration(
                            border: UnderlineInputBorder(),
                            labelText: 'Enter your email',
                            suffixIcon: Align(
                              widthFactor: 1.0,
                              heightFactor: 1.0,
                              child: Icon(
                                Icons.email,
                                color: Colors.grey,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 10),
                    child: Column(
                      children: [
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "Password",
                              textAlign: TextAlign.left,
                              style: GoogleFonts.roboto(
                                  fontWeight: FontWeight.w500),
                            )),
                        TextFormField(
                          obscureText: _obscureText,
                          controller: _pass,
                          validator: (val) {
                            if (val == null || val == '') return 'Empty';
                            return null;
                          },
                          decoration: InputDecoration(
                            border: UnderlineInputBorder(),
                            labelText: 'Enter your password',
                            suffixIcon: Align(
                                widthFactor: 1.0,
                                heightFactor: 1.0,
                                child: IconButton(
                                  onPressed: () => _toggle(),
                                  icon: Icon(
                                    _obscureText
                                        ? Icons.visibility
                                        : Icons.visibility_off,
                                    color: Colors.grey,
                                  ),
                                )),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 10),
                    child: Column(
                      children: [
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "Confirm password",
                              textAlign: TextAlign.left,
                              style: GoogleFonts.roboto(
                                  fontWeight: FontWeight.w500),
                            )),
                        TextFormField(
                          obscureText: _obscureText,
                          controller: _confirmPass,
                          validator: (val) {
                            if (val == null) return 'Empty';
                            if (val != _pass.text) return 'Not Match';
                            return null;
                          },
                          decoration: InputDecoration(
                            border: UnderlineInputBorder(),
                            labelText: 'Enter your password',
                            suffixIcon: Align(
                                widthFactor: 1.0,
                                heightFactor: 1.0,
                                child: IconButton(
                                  onPressed: () => _toggle(),
                                  icon: Icon(
                                    _obscureText
                                        ? Icons.visibility
                                        : Icons.visibility_off,
                                    color: Colors.grey,
                                  ),
                                )),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                      child: Align(
                          alignment: FractionalOffset.bottomCenter,
                          child: Container(
                            margin: const EdgeInsets.only(bottom: 20),
                            child: ElevatedButton(
                              onPressed: () {
                                if (_form.currentState!.validate()) {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    const SnackBar(
                                        content: Text('Processing Data')),
                                  );
                                }
                              },
                              child: Text("Register"),
                              style: ElevatedButton.styleFrom(
                                primary: Color(0xff1DDE7D),
                                minimumSize: Size.fromHeight(50),
                              ),
                            ),
                          )))
                ],
              ),
            )));
  }
}
