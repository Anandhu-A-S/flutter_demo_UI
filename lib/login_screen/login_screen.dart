import 'package:colorful_safe_area/colorful_safe_area.dart';
import 'package:flutter/material.dart';
import 'package:flutter_demo/home_screen/home_screen.dart';

import 'package:flutter_demo/signin_signout/signin_signout.dart';
import 'package:flutter_demo/utils/Constants.dart';

class MyLoginPage extends StatelessWidget {
  MyLoginPage({Key? key}) : super(key: key);
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return ColorfulSafeArea(
      color: colorBlue,
      child: Scaffold(
        body: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
            return ListView(
              children: [
                Container(
                  height: constraints.maxHeight / 2,
                  child: Container(
                      color: colorBlue,
                      child: Center(child: Image.asset('assets/1.png'))),
                ),
                Container(
                  height: constraints.maxHeight / 1.5,
                  child: Container(
                      color: Colors.white,
                      child: Form(
                        key: _formKey,
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              TextFormField(
                                decoration: const InputDecoration(
                                  labelText: 'User',
                                  //    errorText: 'Error message',
                                  border: OutlineInputBorder(),
                                  //   suffixIcon: Icon(
                                  //     Icons.error,
                                  //  ),
                                ),
                                // The validator receives the text that the user has entered.
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Please enter some text';
                                  }
                                  return null;
                                },
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              TextFormField(
                                obscureText: true,
                                decoration: const InputDecoration(
                                  labelText: 'Password',
                                  //    errorText: 'Error message',
                                  border: OutlineInputBorder(),
                                  //   suffixIcon: Icon(
                                  //    Icons.visibility_off,
                                  //   ),
                                ),
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Please enter some text';
                                  }
                                  return null;
                                },
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 16.0),
                                child: Builder(builder: (context) {
                                  return Container(
                                    width: constraints.maxWidth - 20,
                                    child: ElevatedButton(
                                      onPressed: () {
                                        if (_formKey.currentState!.validate()) {
                                          ScaffoldMessenger.of(context)
                                              .showSnackBar(
                                            const SnackBar(
                                                content:
                                                    Text('Processing Data')),
                                          );
                                          Navigator.pushReplacement(
                                              context,
                                              MaterialPageRoute(
                                                  builder:
                                                      (BuildContext context) =>
                                                          const MyHomePage()));
                                        }
                                      },
                                      style: ElevatedButton.styleFrom(
                                        primary: colorBlue, // Background color
                                      ),
                                      child: const Text('Submit'),
                                    ),
                                  );
                                }),
                              ),
                              Container(
                                width: constraints.maxWidth - 20,
                                child: TextButton(
                                  onPressed: () {
                                    Navigator.pushReplacement(
                                        context,
                                        MaterialPageRoute(
                                            builder: (BuildContext context) =>
                                                LoginSigninPage()));
                                  },
                                  style: TextButton.styleFrom(
                                      textStyle: const TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w700,
                                      ),
                                      primary: Colors.black),
                                  child: const Text(
                                    'FORGOT PASSWORD',
                                    style: TextStyle(
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      )),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
