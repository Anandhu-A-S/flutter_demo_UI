import 'package:colorful_safe_area/colorful_safe_area.dart';
import 'package:flutter/material.dart';
import 'package:flutter_demo/login_screen/login_screen.dart';
import 'package:flutter_demo/registrationpage/registrationpage.dart';
import 'package:flutter_demo/utils/Constants.dart';

class PasswordScreen extends StatelessWidget {
  PasswordScreen({Key? key}) : super(key: key);
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return ColorfulSafeArea(
      color: Colors.white,
      child: Scaffold(
        body: LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constraints) {
          return ListView(children: [
            Container(
              height: constraints.maxHeight / 2,
              child: Column(
                children: [
                  const SizedBox(height: 30),
                  Container(
                      alignment: Alignment.center,
                      width: constraints.maxWidth - 20,
                      child:
                          Text("REGISTRATION", style: defaultText2.headline1))
                ],
              ),
            ),
            Container(
              height: constraints.maxHeight / 1.25,
              child: Container(
                  color: Colors.white,
                  child: Form(
                    key: _formKey,
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(
                            height: 70,
                          ),
                          TextFormField(
                            obscureText: true,
                            decoration: const InputDecoration(
                              labelText: 'PASSWORD',
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
                          const SizedBox(
                            height: 30,
                          ),
                          TextFormField(
                            obscureText: true,
                            decoration: const InputDecoration(
                              labelText: 'RE-PASSWORD',
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
                            padding: const EdgeInsets.all(10.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Builder(builder: (context) {
                                  return Container(
                                    child: TextButton(
                                      onPressed: () {
                                        Navigator.pushReplacement(
                                            context,
                                            MaterialPageRoute(
                                                builder:
                                                    (BuildContext context) =>
                                                        RegistrationPage()));
                                      },
                                      style: TextButton.styleFrom(
                                          textStyle:
                                              const TextStyle(fontSize: 20),
                                          primary: Colors.black),
                                      child: Text('BACK',
                                          style: defaultText.headline2),
                                    ),
                                  );
                                }),
                                Builder(builder: (context) {
                                  return Container(
                                    child: TextButton(
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
                                                          MyLoginPage()));
                                        }
                                      },
                                      style: TextButton.styleFrom(
                                          textStyle:
                                              const TextStyle(fontSize: 20),
                                          primary: Colors.black),
                                      child: Text('FINISH',
                                          style: defaultText.headline2),
                                    ),
                                  );
                                }),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  )),
            ),
          ]);
        }),
      ),
    );
  }
}
