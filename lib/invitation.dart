import 'package:flutter/material.dart';
import 'package:mobile_app_lab_5/home.dart';
import 'package:country_flags/country_flags.dart';

// void main(){
//   runApp(MaterialApp(
//     home: invitation(),
//     debugShowCheckedModeBanner: false,
//   )
//   );
// }

class Invitation extends StatefulWidget {
  final String title;
  const Invitation({super.key, required this.title});

  @override
  State<Invitation> createState() => _InvitationState();
}

class _InvitationState extends State<Invitation> {
  int factoryNumber = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(214, 214, 213, 1),
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => Dashboard(),
                ),
              );
            },
            icon: Icon(
              Icons.chevron_left,
              size: 35,
            )),
        title: Text(
          widget.title,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30,
          ),
        ),
        centerTitle: true, // Center align the title
        backgroundColor: Colors.white,
      ),
      body: Center(
        child: Column(
          children: [
            Text('Invitation',
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold)),
            Text(
              'Invite users',
              style: TextStyle(fontSize: 20),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Text('Owner\'s Name', style: TextStyle(fontSize: 23)),
                ],
              ),
            ),
            SizedBox(height: 10.0),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Expanded(
                child: TextField(
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(),
                      hintText: 'Type here',
                      hintStyle: TextStyle(
                        fontSize: 20.0,
                      )),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    'Owner\'s Phone Number',
                    style: TextStyle(
                      fontSize: 23,
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(11.0),
              child: Row(
                children: [
                  CountryFlag.fromCountryCode(
                    'MY',
                    height: 48,
                    width: 62,
                    borderRadius: 8,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    '+60',
                    style: TextStyle(
                      fontSize: 20.0,
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(color: Colors.black),
                          ),
                          hintText: 'Enter your phone number',
                          hintStyle: TextStyle(
                            fontSize: 20.0,
                          )),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text(
                'Submit',
                style: TextStyle(fontSize: 23),
              ),
              style: ElevatedButton.styleFrom(
                  fixedSize: Size(370, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  backgroundColor: Color.fromRGBO(155, 154, 157, 1)),
            ),
          ],
        ),
      ),
    );
  }
}
