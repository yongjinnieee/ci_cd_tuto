import 'package:flutter/material.dart';
import 'package:mobile_app_lab_5/home.dart';

class otp_Activation extends StatefulWidget {
  const otp_Activation({super.key});

  @override
  State<otp_Activation> createState() => _otp_ActivationState();
}

class _otp_ActivationState extends State<otp_Activation> {
  int index = 0;
  String otp = '';
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Text(
                    'Enter the activation code you received via SMS.',
                    style: TextStyle(fontSize: 20.0),
                  ),
                ),
                Icon(
                  Icons.info_outline,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              children: [
                SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: TextField(
                    textAlign: TextAlign.center,
                    maxLength: 6, // Set maximum length to 6 characters
                    onChanged: (value) {
                      // Update the otp value and limit it to 6 characters
                      setState(() {
                        otp = value.substring(0, value.length.clamp(0, 6));
                      });
                    },
                    decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        counterText: '${otp.length}/6',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: Colors.black),
                        ),
                        hintText: 'OTP',
                        hintStyle: TextStyle(
                          fontSize: 20.0,
                        )),
                  ),
                ),
              ],
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextButton(
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Didn\'t receive? ',
                      style: TextStyle(fontSize: 16),
                    ),
                    Text('Tap here',
                        style: TextStyle(
                            fontSize: 16, decoration: TextDecoration.underline))
                  ],
                ),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(
                        builder: (context) => Dashboard(),
                      ),
                    );
                  });
                },
                child: Text('Activate', style: TextStyle(fontSize: 20)),
                style: ElevatedButton.styleFrom(fixedSize: Size(250, 50)),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
