import 'package:digital_mart/MainScreen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class MyLogin extends StatefulWidget {
  const MyLogin({super.key});

  @override
  State<MyLogin> createState() => _MyLoginState();
}

class _MyLoginState extends State<MyLogin> {
  late final TextEditingController _nameCTR;

  late final TextEditingController _passCTR;

  @override
  void initState() {
    _nameCTR = TextEditingController();

    _passCTR = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _nameCTR.dispose();
    _passCTR.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        child: Scaffold(
            backgroundColor: Colors.transparent,
            body: Stack(
              children: [
                // Positioned(
                //     bottom:
                //         380, // Adjust this value to position the image as needed
                //     left:
                //         50, // Adjust this value to position the image as needed
                //     right: 50,
                //     child: Image.asset('assets/image/3.png',
                //         width: 150,
                //         height: 150,
                //         fit: BoxFit
                //             .scaleDown // You can adjust this property for image scaling
                //         )),
                Container(
                  padding: const EdgeInsets.only(left: 80, right: 00, top: 100),
                  child: const Text(' User Login',
                      style: TextStyle(
                        fontFamily: 'MyCustomFont',
                        color: Colors.red,
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                      )),
                ),
                SingleChildScrollView(
                  child: Container(
                      padding: EdgeInsets.only(
                          top: MediaQuery.of(context).size.height * 0.5,
                          right: 35,
                          left: 35),
                      child: Column(
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          TextField(
                            controller: _nameCTR,
                            decoration: InputDecoration(
                                fillColor: Colors.grey.shade100,
                                filled: true,
                                hintText: 'Email',
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10))),
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          TextField(
                            controller: _passCTR,
                            obscureText: true,
                            decoration: InputDecoration(
                                fillColor: Colors.grey.shade100,
                                filled: true,
                                hintText: 'Password',
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10))),
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                'Sign In',
                                style: TextStyle(
                                  color: Colors.red,
                                  fontSize: 27,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              CircleAvatar(
                                  radius: 30,
                                  backgroundColor: Colors.red,
                                  child: IconButton(
                                    color: Colors.black,
                                    onPressed: () async {
                                      final name = _nameCTR.text;
                                      final pass = _passCTR.text;

                                      final creds = await FirebaseAuth.instance
                                          .signInWithEmailAndPassword(
                                              email: name, password: pass);

                                      if (creds.user == null) {
                                        print('invalid login');
                                      } else {
                                        Navigator.of(context)
                                            .push(MaterialPageRoute(
                                          builder: (context) => MyHomePage(),
                                        ));
                                      }
                                    },
                                    icon: const Icon(Icons.arrow_forward),
                                  ))
                            ],
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              TextButton(
                                  onPressed: () {
                                    Navigator.pushNamed(context, 'singup');
                                  },
                                  child: const Text(
                                    'Sing Up',
                                    style: TextStyle(
                                        decoration: TextDecoration.underline,
                                        fontSize: 18,
                                        color: Colors.red),
                                  )),
                              TextButton(
                                  onPressed: () {},
                                  child: const Text(
                                    'Forget Password',
                                    style: TextStyle(
                                        decoration: TextDecoration.underline,
                                        fontSize: 18,
                                        color: Colors.red),
                                  ))
                            ],
                          )
                        ],
                      )),
                )
              ],
            )));
  }
}
