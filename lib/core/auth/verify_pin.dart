import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:get/route_manager.dart';
import 'package:mygame/core/auth/new_password.dart';

class VerifyPin extends StatefulWidget {
  const VerifyPin({super.key});

  @override
  State<VerifyPin> createState() => _VerifyPinState();
}

class _VerifyPinState extends State<VerifyPin> {
  final _signUpKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black12,
      body: Container(
          padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          alignment: Alignment.topCenter,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
                    "assets/images/grass.jpeg",
                  ),
                  fit: BoxFit.cover)),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.centerRight,
                  child: SizedBox(
                      height: 60,
                      width: 100,
                      child: Image.asset("assets/images/mygame.png")),
                ),
                Padding(
                  padding: EdgeInsets.zero,
                  child: Image.asset(
                    "assets/images/ball3.png",
                    fit: BoxFit.cover,
                    // height: 250,
                    // width: 250,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Form(
                    key: _signUpKey,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 20.0,
                      ),
                      child: Column(
                        children: [
                          Text(
                            'Verify Pin',
                            style: Theme.of(context)
                                .textTheme
                                .displaySmall!
                                .copyWith(fontSize: 28),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              "Please enter the pin number sent to you",
                              textAlign: TextAlign.center,
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          OtpTextField(
                            numberOfFields: 4,
                            cursorColor: Colors.white,
                            borderColor: Colors.white,
                            fieldWidth: 55,
                            enabledBorderColor: Colors.white,
                            focusedBorderColor: Colors.white,
                            enabled:true,
                            showFieldAsBox: true,
                            onCodeChanged: (String code) {
                            },
                          ),
                          const Align(
                            alignment: Alignment.centerRight,
                            child: Padding(
                              padding: EdgeInsets.only(right:45.0,top: 10),
                              child: Text(
                                'Resend Code?',
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 50,
                          ),
                         
                          ElevatedButton(
                              style: ButtonStyle(
                                  shape: MaterialStatePropertyAll(
                                      RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(5))),
                                  fixedSize: const MaterialStatePropertyAll(
                                      Size(250, 50))),
                              onPressed: () {
                                // if (_signUpKey.currentState!.validate()) {
                                //   _signUpKey.currentState!.save();
                                // }
                                Get.to(() => NewPassword());
                              },
                              child: const Text(
                                "Verify",
                                style: TextStyle(
                                    fontSize: 18, color: Colors.black),
                              )),
                          const SizedBox(
                            height: 25,
                          )
                        ],
                      ),
                    ))
              ],
            ),
          )),
    );
  }
}
