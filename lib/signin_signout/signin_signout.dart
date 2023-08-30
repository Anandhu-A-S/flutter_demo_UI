import 'package:colorful_safe_area/colorful_safe_area.dart';
import 'package:flutter/material.dart';
import 'package:flutter_demo/home_screen/home_screen.dart';
import 'package:flutter_demo/registrationpage/registrationpage.dart';
import 'package:flutter_demo/utils/Constants.dart';

class LoginSigninPage extends StatelessWidget {
  LoginSigninPage({Key? key}) : super(key: key);
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return ColorfulSafeArea(
      child: Scaffold(
        body: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
            return ListView(
              children: [
                Container(
                  height: constraints.maxHeight / 2.2,
                  child: Container(
                      color: Colors.white,
                      child: Center(
                          child: Center(
                        child: Container(
                          width: 150,
                          height: 150,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                image: AssetImage('assets/roundimage.png'),
                                fit: BoxFit.fill),
                          ),
                        ),
                      ))),
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
                                  labelText: 'UserName',
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
                              const SizedBox(height: 10),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 10.0),
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
                                        backgroundColor:
                                            colorBlue, // Background color
                                      ),
                                      child: const Text('SIGNIN'),
                                    ),
                                  );
                                }),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 10.0),
                                child: Builder(builder: (context) {
                                  return Container(
                                    width: constraints.maxWidth - 20,
                                    child: ElevatedButton(
                                      onPressed: () {
                                        Navigator.pushReplacement(
                                            context,
                                            MaterialPageRoute(
                                                builder:
                                                    (BuildContext context) =>
                                                        RegistrationPage()));
                                      },
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor:
                                            colorBlue, // Background color
                                      ),
                                      child: const Text('SIGNUP'),
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
                                      backgroundColor: Colors.black),
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
