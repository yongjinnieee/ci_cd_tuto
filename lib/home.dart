import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:mobile_app_lab_5/invitation.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Dashboard(),
    );
  }
}

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int _selectedIndex = 1;
  int factoryNumber = 1;

  Color factory1 = Colors.grey;
  Color factory2 = Colors.grey;
  Color factory3 = Colors.grey;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<String> entries = ['Ben', 'Testing 1', 'Hello'];
  final List<String> telNum = ['+60109219928', '+601234567891', '+60123456789'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Factory $factoryNumber',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30,
          ),
        ),
        centerTitle: true, // Center align the title
        backgroundColor: Colors.white,
        actions: [
          IconButton(
            icon: Icon(Icons.settings),
            onPressed: () {
              // Add your onPressed logic here
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          height: double.maxFinite,
          width: double.maxFinite,
          color: Colors.grey,
          child: Column(
            children: [
              Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: _selectedIndex == 0
                      ? factoryNumber == 1
                          ? Container(
                              /*personal factory 1*/
                              height: 480,
                              decoration: BoxDecoration(
                                color: Color.fromRGBO(239, 239, 239, 1),
                                borderRadius: BorderRadius.circular(40),
                              ),
                              child: Column(
                                children: [
                                  Expanded(
                                    child: ListView.separated(
                                      padding: const EdgeInsets.fromLTRB(
                                          20, 10, 20, 0),
                                      itemCount: entries.length,
                                      itemBuilder: (context, index) {
                                        return Container(
                                          decoration: BoxDecoration(
                                              color: Color.fromRGBO(
                                                  254, 255, 254, 1),
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              boxShadow: [
                                                BoxShadow(
                                                    color: Colors.grey
                                                        .withOpacity(0.5),
                                                    spreadRadius: 5,
                                                    blurRadius: 7,
                                                    offset: Offset(0, 3))
                                              ]),
                                          height:
                                              MediaQuery.of(context).size.height *
                                                  0.11,
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 30),
                                                child: Text(
                                                  '${entries[index]}',
                                                  style: TextStyle(
                                                    fontSize: 25,
                                                  ),
                                                ),
                                              ),
                                              Row(
                                                children: [
                                                  SizedBox(
                                                    width: 10,
                                                  ),
                                                  Container(
                                                    height: 10,
                                                    width: 10,
                                                    decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              20),
                                                      color: Colors.grey.shade700,
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    width: 10,
                                                  ),
                                                  Text(
                                                    '${telNum[index]}',
                                                    style: TextStyle(
                                                      fontSize: 25,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        );
                                      },
                                      separatorBuilder:
                                          (BuildContext context, int index) {
                                        return SizedBox(
                                          height: 20,
                                        );
                                      },
                                    ),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            right: 10, bottom: 10),
                                        child: ElevatedButton(
                                          onPressed: () {
                                            Navigator.of(context).push(
                                              MaterialPageRoute(
                                                builder: (context) =>
                                                    const Invitation(
                                                  title: "Factory 1",
                                                ),
                                              ),
                                            );
                                          },
                                          child: Text(
                                            '+',
                                            style: TextStyle(fontSize: 30),
                                          ),
                                          style: ElevatedButton.styleFrom(
                                              fixedSize: Size(70, 70),
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(15),
                                              ),
                                              backgroundColor: Color.fromRGBO(
                                                  223, 220, 254, 1)),
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            )
                          : factoryNumber == 2
                              ? Container(
                                  /*personal factory 2*/
                                  height: 480,
                                  decoration: BoxDecoration(
                                    color: Color.fromRGBO(239, 239, 239, 1),
                                    borderRadius: BorderRadius.circular(40),
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Align(
                                        alignment: Alignment.bottomRight,
                                        child: Padding(
                                          padding: const EdgeInsets.only(
                                              right: 10, bottom: 10),
                                          child: ElevatedButton(
                                            onPressed: () {
                                              Navigator.of(context).push(
                                                MaterialPageRoute(
                                                  builder: (context) =>
                                                      const Invitation(
                                                    title: 'Factory 2',
                                                  ),
                                                ),
                                              );
                                            },
                                            child: Text(
                                              '+',
                                              style: TextStyle(fontSize: 30),
                                            ),
                                            style: ElevatedButton.styleFrom(
                                                fixedSize: Size(70, 70),
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(15),
                                                ),
                                                backgroundColor: Color.fromRGBO(
                                                    223, 220, 254, 1)),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ))
                              : Container(
                                  /*personal factory 3*/
                                  height: 480,
                                  decoration: BoxDecoration(
                                    color: Color.fromRGBO(239, 239, 239, 1),
                                    borderRadius: BorderRadius.circular(40),
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Align(
                                        alignment: Alignment.bottomRight,
                                        child: Padding(
                                          padding: const EdgeInsets.only(
                                              right: 10, bottom: 10),
                                          child: ElevatedButton(
                                            onPressed: () {
                                              Navigator.of(context).push(
                                                MaterialPageRoute(
                                                  builder: (context) =>
                                                      const Invitation(
                                                          title: 'Factory 3'),
                                                ),
                                              );
                                            },
                                            child: Text(
                                              '+',
                                              style: TextStyle(fontSize: 30),
                                            ),
                                            style: ElevatedButton.styleFrom(
                                                fixedSize: Size(70, 70),
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(15),
                                                ),
                                                backgroundColor: Color.fromRGBO(
                                                    223, 220, 254, 1)),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ))
                      : _selectedIndex == 1
                          ? factoryNumber == 2
                              ? Container(
                                  decoration: BoxDecoration(
                                    color: Color.fromRGBO(239, 239, 239, 1),
                                    borderRadius: BorderRadius.circular(40),
                                  ),
                                  height: 480,
                                  child: Column(children: [
                                    SizedBox(height: 10),
                                    Text(
                                      '1549.7kW',
                                      style: TextStyle(
                                          fontSize: 30.0,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(height: 10),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Container(
                                          width: 170,
                                          decoration: BoxDecoration(
                                            color:
                                                Color.fromRGBO(254, 255, 254, 1),
                                            borderRadius:
                                                BorderRadius.circular(20),
                                          ),
                                          child: Column(
                                            children: [
                                              SizedBox(height: 10),
                                              Text(
                                                'Steam Pressure',
                                                style: TextStyle(
                                                  color: Color.fromRGBO(
                                                      88, 88, 88, 1),
                                                ),
                                              ),
                                              Image.asset(
                                                  'images/factory 2 steam pressure.png'),
                                              Text('34.19bar',
                                                  style: TextStyle(
                                                    color: Color.fromRGBO(
                                                        88, 88, 88, 1),
                                                  )),
                                              SizedBox(height: 10),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Row(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Container(
                                              width: 170,
                                              decoration: BoxDecoration(
                                                color: Color.fromRGBO(
                                                    254, 255, 254, 1),
                                                borderRadius:
                                                    BorderRadius.circular(20),
                                              ),
                                              child: Column(
                                                children: [
                                                  SizedBox(height: 10),
                                                  Text(
                                                    'Steam Flow',
                                                    style: TextStyle(
                                                      color: Color.fromRGBO(
                                                          88, 88, 88, 1),
                                                    ),
                                                  ),
                                                  Image.asset(
                                                      'images/factory 2 steam flow.png'),
                                                  Text('22.82T/H',
                                                      style: TextStyle(
                                                        color: Color.fromRGBO(
                                                            88, 88, 88, 1),
                                                      )),
                                                  SizedBox(height: 10),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ]),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Container(
                                          width: 170,
                                          decoration: BoxDecoration(
                                            color:
                                                Color.fromRGBO(254, 255, 254, 1),
                                            borderRadius:
                                                BorderRadius.circular(20),
                                          ),
                                          child: Column(
                                            children: [
                                              SizedBox(height: 10),
                                              const Text(
                                                'Water Level',
                                                style: TextStyle(
                                                  color: Color.fromRGBO(
                                                      88, 88, 88, 1),
                                                ),
                                              ),
                                              Image.asset(
                                                  'images/factory 2 water level.png'),
                                              Text('55.41%',
                                                  style: TextStyle(
                                                    color: Color.fromRGBO(
                                                        88, 88, 88, 1),
                                                  )),
                                              SizedBox(height: 10),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Row(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Container(
                                              width: 170,
                                              decoration: BoxDecoration(
                                                color: Color.fromRGBO(
                                                    254, 255, 254, 1),
                                                borderRadius:
                                                    BorderRadius.circular(20),
                                              ),
                                              child: Column(
                                                children: [
                                                  SizedBox(height: 10),
                                                  Text(
                                                    'Power Frequency',
                                                    style: TextStyle(
                                                      color: Color.fromRGBO(
                                                          88, 88, 88, 1),
                                                    ),
                                                  ),
                                                  Image.asset(
                                                      'images/factory 2 power frequency.png'),
                                                  Text('50.08Hz',
                                                      style: TextStyle(
                                                        color: Color.fromRGBO(
                                                            88, 88, 88, 1),
                                                      )),
                                                  SizedBox(height: 10),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ]),
                                    SizedBox(height: 20),
                                    Text(
                                      '${DateFormat('yyyy-MM-dd HH:mm:ss').format(DateTime.now())}',
                                      style: TextStyle(fontSize: 18),
                                    ),
                                    SizedBox(height: 10),
                                  ]),
                                )
                              : factoryNumber == 1
                                  ? Container(
                                      decoration: BoxDecoration(
                                        color: Color.fromRGBO(239, 239, 239, 1),
                                        borderRadius: BorderRadius.circular(40),
                                      ),
                                      height: 480,
                                      child: Column(children: [
                                        SizedBox(height: 15),
                                        Text(
                                          '⚠️ ABD1234 IS UNREACHABLE!',
                                          style: TextStyle(
                                              fontSize: 24.0,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        SizedBox(height: 10),
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Container(
                                              width: 170,
                                              decoration: BoxDecoration(
                                                color: Color.fromRGBO(
                                                    254, 255, 254, 1),
                                                borderRadius:
                                                    BorderRadius.circular(20),
                                              ),
                                              child: Column(
                                                children: [
                                                  SizedBox(height: 10),
                                                  Text(
                                                    'Steam Pressure',
                                                    style: TextStyle(
                                                      color: Color.fromRGBO(
                                                          88, 88, 88, 1),
                                                    ),
                                                  ),
                                                  Image.asset(
                                                      'images/factory 1 steam pressure.png'),
                                                  Text('0.0bar',
                                                      style: TextStyle(
                                                        color: Color.fromRGBO(
                                                            88, 88, 88, 1),
                                                      )),
                                                  SizedBox(height: 10),
                                                ],
                                              ),
                                            ),
                                          ),
                                          Row(
                                            children: [
                                              Padding(
                                                padding:
                                                    const EdgeInsets.all(8.0),
                                                child: Container(
                                                  width: 170,
                                                  decoration: BoxDecoration(
                                                    color: Color.fromRGBO(
                                                        254, 255, 254, 1),
                                                    borderRadius:
                                                        BorderRadius.circular(20),
                                                  ),
                                                  child: Column(
                                                    children: [
                                                      SizedBox(height: 10),
                                                      Text(
                                                        'Steam Flow',
                                                        style: TextStyle(
                                                          color: Color.fromRGBO(
                                                              88, 88, 88, 1),
                                                        ),
                                                      ),
                                                      Image.asset(
                                                          'images/factory 1 steam flow.png'),
                                                      Text('0.0T/H',
                                                          style: TextStyle(
                                                            color: Color.fromRGBO(
                                                                88, 88, 88, 1),
                                                          )),
                                                      SizedBox(height: 10),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ]),
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Container(
                                              width: 170,
                                              decoration: BoxDecoration(
                                                color: Color.fromRGBO(
                                                    254, 255, 254, 1),
                                                borderRadius:
                                                    BorderRadius.circular(20),
                                              ),
                                              child: Column(
                                                children: [
                                                  SizedBox(height: 10),
                                                  const Text(
                                                    'Water Level',
                                                    style: TextStyle(
                                                      color: Color.fromRGBO(
                                                          88, 88, 88, 1),
                                                    ),
                                                  ),
                                                  Image.asset(
                                                      'images/factory 1 water level.png'),
                                                  Text('0.0%',
                                                      style: TextStyle(
                                                        color: Color.fromRGBO(
                                                            88, 88, 88, 1),
                                                      )),
                                                  SizedBox(height: 10),
                                                ],
                                              ),
                                            ),
                                          ),
                                          Row(
                                            children: [
                                              Padding(
                                                padding:
                                                    const EdgeInsets.all(8.0),
                                                child: Container(
                                                  width: 170,
                                                  decoration: BoxDecoration(
                                                    color: Color.fromRGBO(
                                                        254, 255, 254, 1),
                                                    borderRadius:
                                                        BorderRadius.circular(20),
                                                  ),
                                                  child: Column(
                                                    children: [
                                                      SizedBox(height: 10),
                                                      Text(
                                                        'Power Frequency',
                                                        style: TextStyle(
                                                          color: Color.fromRGBO(
                                                              88, 88, 88, 1),
                                                        ),
                                                      ),
                                                      Image.asset(
                                                          'images/factory 1 power frequency.png'),
                                                      Text('0.0Hz',
                                                          style: TextStyle(
                                                            color: Color.fromRGBO(
                                                                88, 88, 88, 1),
                                                          )),
                                                      SizedBox(height: 10),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ]),
                                        SizedBox(height: 10),
                                        Text(
                                          '--:--',
                                          style: TextStyle(fontSize: 30),
                                        ),
                                        SizedBox(height: 10),
                                      ]),
                                    )
                                  : Container(
                                      decoration: BoxDecoration(
                                        color: Color.fromRGBO(239, 239, 239, 1),
                                        borderRadius: BorderRadius.circular(40),
                                      ),
                                      height: 480,
                                    )
                          : factoryNumber == 1
                              ? Container(
                                  decoration: BoxDecoration(
                                    color: Color.fromRGBO(239, 239, 239, 1),
                                    borderRadius: BorderRadius.circular(40),
                                  ),
                                  height: 480,
                                  child: Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(25.0),
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              'Minimum Threshold',
                                              style: TextStyle(
                                                  fontSize: 23.0,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            SizedBox(width: 10),
                                            Icon(
                                              Icons.info_outline,
                                            ),
                                            SizedBox(width: 10),
                                            ElevatedButton(
                                              onPressed: () {},
                                              child: Icon(Icons.edit),
                                              style: ElevatedButton.styleFrom(
                                                  fixedSize: Size(15, 15)),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            20, 20, 20, 20),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Column(
                                              children: [
                                                Text(
                                                  'Steam \nPressure',
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                      fontSize: 25,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                                Container(
                                                    decoration: BoxDecoration(
                                                        border: Border.all(
                                                            color: Colors.grey),
                                                        borderRadius:
                                                            BorderRadius.circular(
                                                                15)),
                                                    child: Row(
                                                      children: [
                                                        Padding(
                                                          padding: const EdgeInsets.fromLTRB(30.0,8.0,30.0,8.0),
                                                          child: Text(
                                                            '29',
                                                            textAlign: TextAlign.center,
                                                            style: TextStyle(
                                                                fontSize: 30),
                                                          ),
                                                        ),
                                                        VerticalDivider(
                                                          color: Colors.grey,
                                                          thickness: 3,
                                                        ),
                                                        Padding(
                                                          padding: const EdgeInsets.all(8.0),
                                                          child: Text(
                                                            'bar',
                                                            textAlign: TextAlign.center,
                                                            style: TextStyle(
                                                                fontSize: 20),
                                                          ),
                                                        ),
                                                      ],
                                                    )
                                                    ),
                                              ],
                                            ),
                                            SizedBox(width: 20),
                                            Column(
                                              children: [
                                                Text(
                                                  'Steam \nFlow',
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                      fontSize: 25,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                                Container(
                                                    decoration: BoxDecoration(
                                                      border: Border.all(
                                                          color: Colors.grey),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              15),
                                                    ),
                                                    child: Row(
                                                      children: [
                                                        Padding(
                                                          padding: const EdgeInsets.fromLTRB(30.0,8.0,20.0,8.0),
                                                          child: Text(
                                                            '22',
                                                            textAlign: TextAlign.center,
                                                            style: TextStyle(
                                                                fontSize: 30),
                                                          ),
                                                        ),
                                                        VerticalDivider(
                                                          color: Colors.grey,
                                                          thickness: 3,
                                                        ),
                                                        Padding(
                                                          padding: const EdgeInsets.all(8.0),
                                                          child: Text(
                                                            'T/H',
                                                            textAlign: TextAlign.center,
                                                            style: TextStyle(
                                                                fontSize: 20),
                                                          ),
                                                        ),
                                                      ],
                                                    )),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            25, 20, 20, 20),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Column(
                                              children: [
                                                Text(
                                                  'Water \nLevel',
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                      fontSize: 25,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                                Container(
                                                    decoration: BoxDecoration(
                                                        border: Border.all(
                                                            color: Colors.grey),
                                                        borderRadius:
                                                            BorderRadius.circular(
                                                                15)
                                                                ),
                                                    child: Row(
                                                      children: [
                                                        Padding(
                                                          padding: const EdgeInsets.fromLTRB(30.0,8.0,30.0,8.0),
                                                          child: Text(
                                                            '53',
                                                            textAlign: TextAlign.center,
                                                            style: TextStyle(
                                                                fontSize: 30),
                                                          ),
                                                        ),
                                                        VerticalDivider(
                                                          color: Colors.grey,
                                                          thickness: 3,
                                                        ),
                                                        Padding(
                                                          padding: const EdgeInsets.all(8.0),
                                                          child: Text(
                                                            '%',
                                                            textAlign: TextAlign.center,
                                                            style: TextStyle(
                                                                fontSize: 20),
                                                          ),
                                                        ),
                                                      ],
                                                    )),
                                              ],
                                            ),
                                            SizedBox(width: 20),
                                            Column(
                                              children: [
                                                Text(
                                                  'Power \nFrequency',
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                      fontSize: 25,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                                Container(
                                                    decoration: BoxDecoration(
                                                      border: Border.all(
                                                          color: Colors.grey),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              15),
                                                    ),
                                                    child: Row(
                                                      children: [
                                                        Padding(
                                                          padding: const EdgeInsets.fromLTRB(30.0,8.0,30.0,8.0),
                                                          child: Text(
                                                            '48',
                                                            textAlign: TextAlign.center,
                                                            style: TextStyle(
                                                                fontSize: 30),
                                                          ),
                                                        ),
                                                        VerticalDivider(
                                                          color: Colors.grey,
                                                          thickness: 3,
                                                        ),
                                                        Padding(
                                                          padding: const EdgeInsets.all(8.0),
                                                          child: Text(
                                                            'Hz',
                                                            textAlign: TextAlign.center,
                                                            style: TextStyle(
                                                                fontSize: 20),
                                                          ),
                                                        ),
                                                      ],
                                                    )),
                                              ],
                                            ),
                                          ],
                                        ),
                                      )
                                    ],
                                  ))
                              : factoryNumber == 2
                                  ? Container(
                                      decoration: BoxDecoration(
                                        color: Color.fromRGBO(239, 239, 239, 1),
                                        borderRadius: BorderRadius.circular(40),
                                      ),
                                      height: 480,
                                    )
                                  : Container(
                                      decoration: BoxDecoration(
                                        color: Color.fromRGBO(239, 239, 239, 1),
                                        borderRadius: BorderRadius.circular(40),
                                      ),
                                      height: 480,
                                    ) //setting page
                  ),
              SizedBox(height: 10),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            factoryNumber = 1;
                            factory1 = Colors.blue;
                            factory2 = Colors.grey;
                            factory3 = Colors.grey;
                          });
                        },
                        child: Container(
                          width: 170,
                          decoration: BoxDecoration(
                            border: Border.all(color: factory1, width: 3),
                            color: Color.fromRGBO(254, 255, 254, 1),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(height: 30),
                              Icon(
                                Icons.factory,
                                size: 50,
                              ),
                              SizedBox(height: 10),
                              Text(
                                'Factory 1',
                                style: TextStyle(
                                    color: Color.fromRGBO(88, 88, 88, 1),
                                    fontSize: 20.0),
                              ),
                              SizedBox(height: 10),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            factoryNumber = 2;
                            factory2 = Colors.blue;
                            factory1 = Colors.grey;
                            factory3 = Colors.grey;
                          });
                        },
                        child: Container(
                          width: 170,
                          decoration: BoxDecoration(
                            border: Border.all(color: factory2, width: 3),
                            color: Color.fromRGBO(254, 255, 254, 1),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(height: 30),
                              Icon(Icons.factory, size: 50),
                              SizedBox(height: 10),
                              Text(
                                'Factory 2',
                                style: TextStyle(
                                    color: Color.fromRGBO(88, 88, 88, 1),
                                    fontSize: 20.0),
                              ),
                              SizedBox(height: 10),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            factoryNumber = 3;
                            factory3 = Colors.blue;
                            factory2 = Colors.grey;
                            factory1 = Colors.grey;
                          });
                        },
                        child: Container(
                          width: 170,
                          decoration: BoxDecoration(
                            border: Border.all(color: factory3, width: 3),
                            color: Color.fromRGBO(254, 255, 254, 1),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(height: 30),
                              Icon(Icons.factory, size: 50),
                              SizedBox(height: 10),
                              Text(
                                'Factory 3',
                                style: TextStyle(
                                    color: Color.fromRGBO(88, 88, 88, 1),
                                    fontSize: 20.0),
                              ),
                              SizedBox(height: 10),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
              size: 30,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home_outlined,
              size: 30,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.settings,
              size: 30,
            ),
            label: '',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: (int index) {
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
    );
  }
}
