import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:country_flags/country_flags.dart';
import 'package:mobile_app_lab_5/otp.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Acc_Activation(),
  ),
  );
}

class Acc_Activation extends StatefulWidget {
  const Acc_Activation({super.key});

  @override
  State<Acc_Activation> createState() => _Acc_ActivationState();
}

class _Acc_ActivationState extends State<Acc_Activation> {
  bool isChecked = false;
  int index = 0;
  bool getCode = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          child: SafeArea(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset('images/upm-logo.jpg', width: 170, height: 180),
            Text(
              'Welcome !',
              style: TextStyle(fontSize: 45, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            getCode == false ? Container(
              height: 350,
              decoration: BoxDecoration(
                color: Color.fromRGBO(254, 217, 217, 1),
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
                                'Enter your mobile number to activate your account.',
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
                        CountryFlag.fromCountryCode(
                          'MY',
                          height: 48,
                          width: 62,
                          borderRadius: 8,
                        ),
                      SizedBox(width:10 ,),
                      Text('+60', 
                      style: TextStyle(
                        fontSize: 20.0,
                      ),
                      ),
                      SizedBox(width: 20,),
                      Expanded(
                        child: TextField(
                        decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                          borderRadius:
                            BorderRadius.circular(10),
                            borderSide: BorderSide(
                              color: Colors.black
                              ),
                              ),
                            ),
                          ),
                        ),
                        
                    ], 
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20.0, 5.0, 8.0, 8.0),
                    child: Row(
                        children: [
                          Checkbox(value: isChecked, 
                          onChanged: (bool? value){
                            setState(() {
                              isChecked = !isChecked;
                            }
                            );
                          }
                          ),
                          Text('I agree to the term & conditions', 
                            style: TextStyle(fontSize: 18),),
                        ],
                      ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        onPressed: (){
                          setState(() {
                            index=1;
                            getCode = true;
                          });
                        }, 
                        child: Text('Get Activation Code',
                          style: TextStyle(
                            fontSize: 20)),
                          style: ElevatedButton.styleFrom(
                            fixedSize: Size(250, 50)
                          ),
                        ),
                   ],
                  ),
                ],
              ),
            )
            : otp_Activation(),
            SizedBox(height: 10),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextButton(
                  onPressed: (){}, 
                  child: Text(
                    'Disclaimer | Privacy Statement'
                    , style: TextStyle(fontSize: 16, decoration: TextDecoration.underline)),
                    ),
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('Copyright UPM & Kejuruteraan Minyak Sawit CCS Sdn. Bhd.', 
                textAlign:TextAlign.center, style: TextStyle(fontSize: 16)),
              ),
            ),
          ],
                ),
              ),
              ),
        ),
    );
  }
}
