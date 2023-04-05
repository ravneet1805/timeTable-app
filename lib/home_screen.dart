import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();

}


class _HomeScreenState extends State<HomeScreen> {
  List<String> items = <String>['GROUP 1', 'GROUP 2', 'GROUP 3'];
  String dropdownValue = 'GROUP 1';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 6,
        child: Scaffold(
          backgroundColor: const Color(0xff333533),
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 2,
            title: const Text('TIME TABLE'),
          ),
          body: Column(
            children: [
              const SizedBox(
                height: 30,
              ),
              DecoratedBox(

                decoration: BoxDecoration(color: Color(0xfffbff12),borderRadius: BorderRadius.circular(5)),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: DropdownButton<String>(
                    underline: Container(),
                    dropdownColor: Color(0xfffbff12),
                    borderRadius: BorderRadius.circular(5),
                    onChanged: (String? newValue) {
                      setState(() {
                        dropdownValue = newValue!;
                        // Navigator.pushReplacement(context, '/');
                      });
                    },
                    value: dropdownValue,
                    items: items.map<DropdownMenuItem<String>>(
                          (String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value, style: TextStyle(fontWeight: FontWeight.bold),),
                        );
                      },
                    ).toList(),
                  ),
                ),
              ),

              Container(
                child: const TabBar(
                    indicatorColor: Color(0xfffbff12),
                    labelColor: Color(0xfffbff12),
                    indicatorWeight: 0.01,
                    labelStyle: TextStyle(fontWeight: FontWeight.bold),
                    unselectedLabelColor: Colors.grey,
                    tabs: [
                      Tab(child: Text('MON')),
                      Tab(child: Text('TUE')),
                      Tab(child: Text('WED')),
                      Tab(child: Text('THU')),
                      Tab(child: Text('FRI')),
                      Tab(child: Text('SAT')),
                    ]),
              ),
              Expanded(
                child: TabBarView(children: [
                  ListView(
                    children: [
                      SizedBox(height: 40,),
                      ListTile(

                        leading: Column(
                          children: [
                            Text( '9:00 AM',
                                style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                            Text('|', style: TextStyle(fontSize: 18)),
                            Text( '9:45 AM',
                                style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                          ],
                        ),
                        title: Center(
                          child: const Text('CN',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18)),
                        ),
                        subtitle: Padding(
                          padding: const EdgeInsets.only(left: 130.0),
                          child: Column(
                            children: [
                              Row(
                                children: const [
                                  Icon(
                                    Icons.location_city,
                                    color: Color(0xfffbff12),
                                    size: 20,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(top: 8.0, left: 8.0),
                                    child: Text(
                                      'TG-012',
                                      style: TextStyle(color: Colors.grey, fontSize: 13),
                                    ),
                                  )
                                ],
                              ),
                              Row(
                                children: const [
                                  Icon(
                                    Icons.person,
                                    color: Color(0xfffbff12),
                                    size: 20,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(top: 7.0, left: 8.0),
                                    child: Text('Htet Ne Oo',
                                        style: TextStyle(color: Colors.grey, fontSize: 13.5)),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 50,),
                      ListTile(
                        leading: Column(
                          children: [
                            Text( '9:45 AM',
                                style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold)),
                            Text('|', style: TextStyle(fontSize: 18)),
                            Text( '10:30 AM',
                                style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                          ],
                        ),
                        title: Center(
                          child: const Text('COA',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18)),
                        ),
                        subtitle: Padding(
                          padding: const EdgeInsets.only(left: 130.0),
                          child: Column(
                            children: [
                              Row(
                                children: const [
                                  Icon(
                                    Icons.location_city,
                                    color: Color(0xfffbff12),
                                    size: 20,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(top: 8.0, left: 8.0),
                                    child: Text(
                                      'TG-013',
                                      style: TextStyle(color: Colors.grey, fontSize: 13),
                                    ),
                                  )
                                ],
                              ),
                              Row(
                                children: const [
                                  Icon(
                                    Icons.person,
                                    color: Color(0xfffbff12),
                                    size: 20,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(top: 7.0, left: 8.0),
                                    child: Text('Girish Wadhwa',
                                        style: TextStyle(color: Colors.grey, fontSize: 13.5)),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 50,),
                      ListTile(
                        leading: Column(
                          children: [
                            Text( '10:30 AM',
                                style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold)),
                            Text('|', style: TextStyle(fontSize: 18)),
                            Text( '12:45 PM',
                                style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                          ],
                        ),
                        title: Center(
                          child: const Text('PSC',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18)),
                        ),
                        subtitle: Padding(
                          padding: const EdgeInsets.only(left: 130.0),
                          child: Column(
                            children: [
                              Row(
                                children: const [
                                  Icon(
                                    Icons.location_city,
                                    color: Color(0xfffbff12),
                                    size: 20,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(top: 8.0, left: 8.0),
                                    child: Text(
                                      'TG-012',
                                      style: TextStyle(color: Colors.grey, fontSize: 13),
                                    ),
                                  )
                                ],
                              ),
                              Row(
                                children: const [
                                  Icon(
                                    Icons.person,
                                    color: Color(0xfffbff12),
                                    size: 20,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(top: 7.0, left: 8.0),
                                    child: Text('Pranay Das',
                                        style: TextStyle(color: Colors.grey, fontSize: 13.5)),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 50,),
                      ListTile(
                        leading: Column(
                          children: [
                            Text( '12:45 PM',
                                style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold)),
                            Text('|', style: TextStyle(fontSize: 18)),
                            Text( '3:00 PM',
                                style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                          ],
                        ),
                        title: Center(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 30.0),
                            child: const Text('CN LAB',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18)),
                          ),
                        ),
                        subtitle: Padding(
                          padding: const EdgeInsets.only(left: 130.0),
                          child: Column(
                            children: [
                              Row(
                                children: const [
                                  Icon(
                                    Icons.location_city,
                                    color: Color(0xfffbff12),
                                    size: 20,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(top: 8.0, left: 8.0),
                                    child: Text(
                                      'TG-420',
                                      style: TextStyle(color: Colors.grey, fontSize: 13),
                                    ),
                                  )
                                ],
                              ),
                              Row(
                                children: const [
                                  Icon(
                                    Icons.person,
                                    color: Color(0xfffbff12),
                                    size: 20,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(top: 7.0, left: 8.0),
                                    child: Text('Htet Ne Oo',
                                        style: TextStyle(color: Colors.grey, fontSize: 13.5)),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 50,),
                      ListTile(
                        leading: Column(
                          children: [
                            Text( '3:00 PM',
                                style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold)),
                            Text('|', style: TextStyle(fontSize: 18)),
                            Text( '4:30 PM',
                                style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                          ],
                        ),
                        title: Padding(
                          padding: const EdgeInsets.only(left: 20.0),
                          child: Center(
                            child: const Text('LINUX',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18)),
                          ),
                        ),
                        subtitle: Padding(
                          padding: const EdgeInsets.only(left: 135.0),
                          child: Column(
                            children: [
                              Row(
                                children: const [
                                  Icon(
                                    Icons.location_city,
                                    color: Color(0xfffbff12),
                                    size: 20,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(top: 8.0, left: 8.0),
                                    child: Text(
                                      'TG-103',
                                      style: TextStyle(color: Colors.grey, fontSize: 13),
                                    ),
                                  )
                                ],
                              ),
                              Row(
                                children: const [
                                  Icon(
                                    Icons.person,
                                    color: Color(0xfffbff12),
                                    size: 20,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(top: 7.0, left: 8.0),
                                    child: Text('Pranay Das',
                                        style: TextStyle(color: Colors.grey, fontSize: 13.5)),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),



                    ],
                  ),
                  ListView(
                    children: [
                      SizedBox(height: 40,),
                      ListTile(

                        leading: Column(
                          children: [
                            Text( '9:00 AM',
                                style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                            Text('|', style: TextStyle(fontSize: 18)),
                            Text( '9:45 AM',
                                style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                          ],
                        ),
                        title: Center(
                          child: const Text('PSC',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18)),
                        ),
                        subtitle: Padding(
                          padding: const EdgeInsets.only(left: 130.0),
                          child: Column(
                            children: [
                              Row(
                                children: const [
                                  Icon(
                                    Icons.location_city,
                                    color: Color(0xfffbff12),
                                    size: 20,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(top: 8.0, left: 8.0),
                                    child: Text(
                                      'TG-012',
                                      style: TextStyle(color: Colors.grey, fontSize: 13),
                                    ),
                                  )
                                ],
                              ),
                              Row(
                                children: const [
                                  Icon(
                                    Icons.person,
                                    color: Color(0xfffbff12),
                                    size: 20,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(top: 7.0, left: 8.0),
                                    child: Text('Pranay Das',
                                        style: TextStyle(color: Colors.grey, fontSize: 13.5)),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 50,),
                      ListTile(
                        leading: Column(
                          children: [
                            Text( '9:45 AM',
                                style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold)),
                            Text('|', style: TextStyle(fontSize: 18)),
                            Text( '10:30 AM',
                                style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                          ],
                        ),
                        title: Center(
                          child: const Text('CN',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18)),
                        ),
                        subtitle: Padding(
                          padding: const EdgeInsets.only(left: 130.0),
                          child: Column(
                            children: [
                              Row(
                                children: const [
                                  Icon(
                                    Icons.location_city,
                                    color: Color(0xfffbff12),
                                    size: 20,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(top: 8.0, left: 8.0),
                                    child: Text(
                                      'TG-013',
                                      style: TextStyle(color: Colors.grey, fontSize: 13),
                                    ),
                                  )
                                ],
                              ),
                              Row(
                                children: const [
                                  Icon(
                                    Icons.person,
                                    color: Color(0xfffbff12),
                                    size: 20,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(top: 7.0, left: 8.0),
                                    child: Text('Htet Ne Oo',
                                        style: TextStyle(color: Colors.grey, fontSize: 13.5)),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 50,),
                      ListTile(
                        leading: Column(
                          children: [
                            Text( '10:30 AM',
                                style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold)),
                            Text('|', style: TextStyle(fontSize: 18)),
                            Text( '12:45 PM',
                                style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                          ],
                        ),
                        title: Center(
                          child: const Text('PSC',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18)),
                        ),
                        subtitle: Padding(
                          padding: const EdgeInsets.only(left: 130.0),
                          child: Column(
                            children: [
                              Row(
                                children: const [
                                  Icon(
                                    Icons.location_city,
                                    color: Color(0xfffbff12),
                                    size: 20,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(top: 8.0, left: 8.0),
                                    child: Text(
                                      'TG-012',
                                      style: TextStyle(color: Colors.grey, fontSize: 13),
                                    ),
                                  )
                                ],
                              ),
                              Row(
                                children: const [
                                  Icon(
                                    Icons.person,
                                    color: Color(0xfffbff12),
                                    size: 20,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(top: 7.0, left: 8.0),
                                    child: Text('Pranay Das',
                                        style: TextStyle(color: Colors.grey, fontSize: 13.5)),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 50,),
                      ListTile(
                        leading: Column(
                          children: [
                            Text( '12:45 PM',
                                style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold)),
                            Text('|', style: TextStyle(fontSize: 18)),
                            Text( '3:00 PM',
                                style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                          ],
                        ),
                        title: Center(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 30.0),
                            child: const Text('CN LAB',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18)),
                          ),
                        ),
                        subtitle: Padding(
                          padding: const EdgeInsets.only(left: 130.0),
                          child: Column(
                            children: [
                              Row(
                                children: const [
                                  Icon(
                                    Icons.location_city,
                                    color: Color(0xfffbff12),
                                    size: 20,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(top: 8.0, left: 8.0),
                                    child: Text(
                                      'TG-420',
                                      style: TextStyle(color: Colors.grey, fontSize: 13),
                                    ),
                                  )
                                ],
                              ),
                              Row(
                                children: const [
                                  Icon(
                                    Icons.person,
                                    color: Color(0xfffbff12),
                                    size: 20,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(top: 7.0, left: 8.0),
                                    child: Text('Htet Ne Oo',
                                        style: TextStyle(color: Colors.grey, fontSize: 13.5)),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 50,),
                      ListTile(
                        leading: Column(
                          children: [
                            Text( '3:00 PM',
                                style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold)),
                            Text('|', style: TextStyle(fontSize: 18)),
                            Text( '4:30 PM',
                                style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                          ],
                        ),
                        title: Padding(
                          padding: const EdgeInsets.only(left: 20.0),
                          child: Center(
                            child: const Text('LINUX',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18)),
                          ),
                        ),
                        subtitle: Padding(
                          padding: const EdgeInsets.only(left: 135.0),
                          child: Column(
                            children: [
                              Row(
                                children: const [
                                  Icon(
                                    Icons.location_city,
                                    color: Color(0xfffbff12),
                                    size: 20,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(top: 8.0, left: 8.0),
                                    child: Text(
                                      'TG-103',
                                      style: TextStyle(color: Colors.grey, fontSize: 13),
                                    ),
                                  )
                                ],
                              ),
                              Row(
                                children: const [
                                  Icon(
                                    Icons.person,
                                    color: Color(0xfffbff12),
                                    size: 20,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(top: 7.0, left: 8.0),
                                    child: Text('Pranay Das',
                                        style: TextStyle(color: Colors.grey, fontSize: 13.5)),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),



                    ],
                  ),
                  ListView(
                    children: [
                      SizedBox(height: 40,),
                      ListTile(

                        leading: Column(
                          children: [
                            Text( '9:00 AM',
                                style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                            Text('|', style: TextStyle(fontSize: 18)),
                            Text( '9:45 AM',
                                style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                          ],
                        ),
                        title: Center(
                          child: const Text('CN',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18)),
                        ),
                        subtitle: Padding(
                          padding: const EdgeInsets.only(left: 130.0),
                          child: Column(
                            children: [
                              Row(
                                children: const [
                                  Icon(
                                    Icons.location_city,
                                    color: Color(0xfffbff12),
                                    size: 20,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(top: 8.0, left: 8.0),
                                    child: Text(
                                      'TG-012',
                                      style: TextStyle(color: Colors.grey, fontSize: 13),
                                    ),
                                  )
                                ],
                              ),
                              Row(
                                children: const [
                                  Icon(
                                    Icons.person,
                                    color: Color(0xfffbff12),
                                    size: 20,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(top: 7.0, left: 8.0),
                                    child: Text('Htet Ne Oo',
                                        style: TextStyle(color: Colors.grey, fontSize: 13.5)),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 50,),
                      ListTile(
                        leading: Column(
                          children: [
                            Text( '9:45 AM',
                                style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold)),
                            Text('|', style: TextStyle(fontSize: 18)),
                            Text( '10:30 AM',
                                style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                          ],
                        ),
                        title: Center(
                          child: const Text('COA',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18)),
                        ),
                        subtitle: Padding(
                          padding: const EdgeInsets.only(left: 130.0),
                          child: Column(
                            children: [
                              Row(
                                children: const [
                                  Icon(
                                    Icons.location_city,
                                    color: Color(0xfffbff12),
                                    size: 20,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(top: 8.0, left: 8.0),
                                    child: Text(
                                      'TG-013',
                                      style: TextStyle(color: Colors.grey, fontSize: 13),
                                    ),
                                  )
                                ],
                              ),
                              Row(
                                children: const [
                                  Icon(
                                    Icons.person,
                                    color: Color(0xfffbff12),
                                    size: 20,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(top: 7.0, left: 8.0),
                                    child: Text('Girish Wadhwa',
                                        style: TextStyle(color: Colors.grey, fontSize: 13.5)),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 50,),
                      ListTile(
                        leading: Column(
                          children: [
                            Text( '10:30 AM',
                                style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold)),
                            Text('|', style: TextStyle(fontSize: 18)),
                            Text( '12:45 PM',
                                style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                          ],
                        ),
                        title: Center(
                          child: const Text('PSC',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18)),
                        ),
                        subtitle: Padding(
                          padding: const EdgeInsets.only(left: 130.0),
                          child: Column(
                            children: [
                              Row(
                                children: const [
                                  Icon(
                                    Icons.location_city,
                                    color: Color(0xfffbff12),
                                    size: 20,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(top: 8.0, left: 8.0),
                                    child: Text(
                                      'TG-012',
                                      style: TextStyle(color: Colors.grey, fontSize: 13),
                                    ),
                                  )
                                ],
                              ),
                              Row(
                                children: const [
                                  Icon(
                                    Icons.person,
                                    color: Color(0xfffbff12),
                                    size: 20,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(top: 7.0, left: 8.0),
                                    child: Text('Pranay Das',
                                        style: TextStyle(color: Colors.grey, fontSize: 13.5)),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 50,),
                      ListTile(
                        leading: Column(
                          children: [
                            Text( '12:45 PM',
                                style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold)),
                            Text('|', style: TextStyle(fontSize: 18)),
                            Text( '3:00 PM',
                                style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                          ],
                        ),
                        title: Center(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 30.0),
                            child: const Text('CN LAB',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18)),
                          ),
                        ),
                        subtitle: Padding(
                          padding: const EdgeInsets.only(left: 130.0),
                          child: Column(
                            children: [
                              Row(
                                children: const [
                                  Icon(
                                    Icons.location_city,
                                    color: Color(0xfffbff12),
                                    size: 20,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(top: 8.0, left: 8.0),
                                    child: Text(
                                      'TG-420',
                                      style: TextStyle(color: Colors.grey, fontSize: 13),
                                    ),
                                  )
                                ],
                              ),
                              Row(
                                children: const [
                                  Icon(
                                    Icons.person,
                                    color: Color(0xfffbff12),
                                    size: 20,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(top: 7.0, left: 8.0),
                                    child: Text('Htet Ne Oo',
                                        style: TextStyle(color: Colors.grey, fontSize: 13.5)),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 50,),
                      ListTile(
                        leading: Column(
                          children: [
                            Text( '3:00 PM',
                                style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold)),
                            Text('|', style: TextStyle(fontSize: 18)),
                            Text( '4:30 PM',
                                style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                          ],
                        ),
                        title: Padding(
                          padding: const EdgeInsets.only(left: 20.0),
                          child: Center(
                            child: const Text('LINUX',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18)),
                          ),
                        ),
                        subtitle: Padding(
                          padding: const EdgeInsets.only(left: 135.0),
                          child: Column(
                            children: [
                              Row(
                                children: const [
                                  Icon(
                                    Icons.location_city,
                                    color: Color(0xfffbff12),
                                    size: 20,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(top: 8.0, left: 8.0),
                                    child: Text(
                                      'TG-103',
                                      style: TextStyle(color: Colors.grey, fontSize: 13),
                                    ),
                                  )
                                ],
                              ),
                              Row(
                                children: const [
                                  Icon(
                                    Icons.person,
                                    color: Color(0xfffbff12),
                                    size: 20,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(top: 7.0, left: 8.0),
                                    child: Text('Pranay Das',
                                        style: TextStyle(color: Colors.grey, fontSize: 13.5)),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),



                    ],
                  ),
                  ListView(
                    children: [
                      SizedBox(height: 40,),
                      ListTile(

                        leading: Column(
                          children: [
                            Text( '9:00 AM',
                                style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                            Text('|', style: TextStyle(fontSize: 18)),
                            Text( '9:45 AM',
                                style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                          ],
                        ),
                        title: Center(
                          child: const Text('PSC',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18)),
                        ),
                        subtitle: Padding(
                          padding: const EdgeInsets.only(left: 130.0),
                          child: Column(
                            children: [
                              Row(
                                children: const [
                                  Icon(
                                    Icons.location_city,
                                    color: Color(0xfffbff12),
                                    size: 20,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(top: 8.0, left: 8.0),
                                    child: Text(
                                      'TG-012',
                                      style: TextStyle(color: Colors.grey, fontSize: 13),
                                    ),
                                  )
                                ],
                              ),
                              Row(
                                children: const [
                                  Icon(
                                    Icons.person,
                                    color: Color(0xfffbff12),
                                    size: 20,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(top: 7.0, left: 8.0),
                                    child: Text('Pranay Das',
                                        style: TextStyle(color: Colors.grey, fontSize: 13.5)),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 50,),
                      ListTile(
                        leading: Column(
                          children: [
                            Text( '9:45 AM',
                                style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold)),
                            Text('|', style: TextStyle(fontSize: 18)),
                            Text( '10:30 AM',
                                style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                          ],
                        ),
                        title: Center(
                          child: const Text('CN',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18)),
                        ),
                        subtitle: Padding(
                          padding: const EdgeInsets.only(left: 130.0),
                          child: Column(
                            children: [
                              Row(
                                children: const [
                                  Icon(
                                    Icons.location_city,
                                    color: Color(0xfffbff12),
                                    size: 20,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(top: 8.0, left: 8.0),
                                    child: Text(
                                      'TG-013',
                                      style: TextStyle(color: Colors.grey, fontSize: 13),
                                    ),
                                  )
                                ],
                              ),
                              Row(
                                children: const [
                                  Icon(
                                    Icons.person,
                                    color: Color(0xfffbff12),
                                    size: 20,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(top: 7.0, left: 8.0),
                                    child: Text('Htet Ne Oo',
                                        style: TextStyle(color: Colors.grey, fontSize: 13.5)),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 50,),
                      ListTile(
                        leading: Column(
                          children: [
                            Text( '10:30 AM',
                                style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold)),
                            Text('|', style: TextStyle(fontSize: 18)),
                            Text( '12:45 PM',
                                style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                          ],
                        ),
                        title: Center(
                          child: const Text('PSC',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18)),
                        ),
                        subtitle: Padding(
                          padding: const EdgeInsets.only(left: 130.0),
                          child: Column(
                            children: [
                              Row(
                                children: const [
                                  Icon(
                                    Icons.location_city,
                                    color: Color(0xfffbff12),
                                    size: 20,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(top: 8.0, left: 8.0),
                                    child: Text(
                                      'TG-012',
                                      style: TextStyle(color: Colors.grey, fontSize: 13),
                                    ),
                                  )
                                ],
                              ),
                              Row(
                                children: const [
                                  Icon(
                                    Icons.person,
                                    color: Color(0xfffbff12),
                                    size: 20,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(top: 7.0, left: 8.0),
                                    child: Text('Pranay Das',
                                        style: TextStyle(color: Colors.grey, fontSize: 13.5)),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 50,),
                      ListTile(
                        leading: Column(
                          children: [
                            Text( '12:45 PM',
                                style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold)),
                            Text('|', style: TextStyle(fontSize: 18)),
                            Text( '3:00 PM',
                                style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                          ],
                        ),
                        title: Center(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 30.0),
                            child: const Text('CN LAB',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18)),
                          ),
                        ),
                        subtitle: Padding(
                          padding: const EdgeInsets.only(left: 130.0),
                          child: Column(
                            children: [
                              Row(
                                children: const [
                                  Icon(
                                    Icons.location_city,
                                    color: Color(0xfffbff12),
                                    size: 20,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(top: 8.0, left: 8.0),
                                    child: Text(
                                      'TG-420',
                                      style: TextStyle(color: Colors.grey, fontSize: 13),
                                    ),
                                  )
                                ],
                              ),
                              Row(
                                children: const [
                                  Icon(
                                    Icons.person,
                                    color: Color(0xfffbff12),
                                    size: 20,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(top: 7.0, left: 8.0),
                                    child: Text('Htet Ne Oo',
                                        style: TextStyle(color: Colors.grey, fontSize: 13.5)),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 50,),
                      ListTile(
                        leading: Column(
                          children: [
                            Text( '3:00 PM',
                                style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold)),
                            Text('|', style: TextStyle(fontSize: 18)),
                            Text( '4:30 PM',
                                style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                          ],
                        ),
                        title: Padding(
                          padding: const EdgeInsets.only(left: 20.0),
                          child: Center(
                            child: const Text('LINUX',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18)),
                          ),
                        ),
                        subtitle: Padding(
                          padding: const EdgeInsets.only(left: 135.0),
                          child: Column(
                            children: [
                              Row(
                                children: const [
                                  Icon(
                                    Icons.location_city,
                                    color: Color(0xfffbff12),
                                    size: 20,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(top: 8.0, left: 8.0),
                                    child: Text(
                                      'TG-103',
                                      style: TextStyle(color: Colors.grey, fontSize: 13),
                                    ),
                                  )
                                ],
                              ),
                              Row(
                                children: const [
                                  Icon(
                                    Icons.person,
                                    color: Color(0xfffbff12),
                                    size: 20,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(top: 7.0, left: 8.0),
                                    child: Text('Pranay Das',
                                        style: TextStyle(color: Colors.grey, fontSize: 13.5)),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),



                    ],
                  ),
                  ListView(
                    children: [
                      SizedBox(height: 40,),
                      ListTile(

                        leading: Column(
                          children: [
                            Text( '9:00 AM',
                                style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                            Text('|', style: TextStyle(fontSize: 18)),
                            Text( '9:45 AM',
                                style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                          ],
                        ),
                        title: Center(
                          child: const Text('CN',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18)),
                        ),
                        subtitle: Padding(
                          padding: const EdgeInsets.only(left: 130.0),
                          child: Column(
                            children: [
                              Row(
                                children: const [
                                  Icon(
                                    Icons.location_city,
                                    color: Color(0xfffbff12),
                                    size: 20,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(top: 8.0, left: 8.0),
                                    child: Text(
                                      'TG-012',
                                      style: TextStyle(color: Colors.grey, fontSize: 13),
                                    ),
                                  )
                                ],
                              ),
                              Row(
                                children: const [
                                  Icon(
                                    Icons.person,
                                    color: Color(0xfffbff12),
                                    size: 20,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(top: 7.0, left: 8.0),
                                    child: Text('Htet Ne Oo',
                                        style: TextStyle(color: Colors.grey, fontSize: 13.5)),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 50,),
                      ListTile(
                        leading: Column(
                          children: [
                            Text( '9:45 AM',
                                style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold)),
                            Text('|', style: TextStyle(fontSize: 18)),
                            Text( '10:30 AM',
                                style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                          ],
                        ),
                        title: Center(
                          child: const Text('COA',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18)),
                        ),
                        subtitle: Padding(
                          padding: const EdgeInsets.only(left: 130.0),
                          child: Column(
                            children: [
                              Row(
                                children: const [
                                  Icon(
                                    Icons.location_city,
                                    color: Color(0xfffbff12),
                                    size: 20,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(top: 8.0, left: 8.0),
                                    child: Text(
                                      'TG-013',
                                      style: TextStyle(color: Colors.grey, fontSize: 13),
                                    ),
                                  )
                                ],
                              ),
                              Row(
                                children: const [
                                  Icon(
                                    Icons.person,
                                    color: Color(0xfffbff12),
                                    size: 20,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(top: 7.0, left: 8.0),
                                    child: Text('Girish Wadhwa',
                                        style: TextStyle(color: Colors.grey, fontSize: 13.5)),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 50,),
                      ListTile(
                        leading: Column(
                          children: [
                            Text( '10:30 AM',
                                style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold)),
                            Text('|', style: TextStyle(fontSize: 18)),
                            Text( '12:45 PM',
                                style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                          ],
                        ),
                        title: Center(
                          child: const Text('PSC',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18)),
                        ),
                        subtitle: Padding(
                          padding: const EdgeInsets.only(left: 130.0),
                          child: Column(
                            children: [
                              Row(
                                children: const [
                                  Icon(
                                    Icons.location_city,
                                    color: Color(0xfffbff12),
                                    size: 20,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(top: 8.0, left: 8.0),
                                    child: Text(
                                      'TG-012',
                                      style: TextStyle(color: Colors.grey, fontSize: 13),
                                    ),
                                  )
                                ],
                              ),
                              Row(
                                children: const [
                                  Icon(
                                    Icons.person,
                                    color: Color(0xfffbff12),
                                    size: 20,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(top: 7.0, left: 8.0),
                                    child: Text('Pranay Das',
                                        style: TextStyle(color: Colors.grey, fontSize: 13.5)),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 50,),
                      ListTile(
                        leading: Column(
                          children: [
                            Text( '12:45 PM',
                                style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold)),
                            Text('|', style: TextStyle(fontSize: 18)),
                            Text( '3:00 PM',
                                style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                          ],
                        ),
                        title: Center(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 30.0),
                            child: const Text('CN LAB',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18)),
                          ),
                        ),
                        subtitle: Padding(
                          padding: const EdgeInsets.only(left: 130.0),
                          child: Column(
                            children: [
                              Row(
                                children: const [
                                  Icon(
                                    Icons.location_city,
                                    color: Color(0xfffbff12),
                                    size: 20,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(top: 8.0, left: 8.0),
                                    child: Text(
                                      'TG-420',
                                      style: TextStyle(color: Colors.grey, fontSize: 13),
                                    ),
                                  )
                                ],
                              ),
                              Row(
                                children: const [
                                  Icon(
                                    Icons.person,
                                    color: Color(0xfffbff12),
                                    size: 20,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(top: 7.0, left: 8.0),
                                    child: Text('Htet Ne Oo',
                                        style: TextStyle(color: Colors.grey, fontSize: 13.5)),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 50,),
                      ListTile(
                        leading: Column(
                          children: [
                            Text( '3:00 PM',
                                style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold)),
                            Text('|', style: TextStyle(fontSize: 18)),
                            Text( '4:30 PM',
                                style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                          ],
                        ),
                        title: Padding(
                          padding: const EdgeInsets.only(left: 20.0),
                          child: Center(
                            child: const Text('LINUX',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18)),
                          ),
                        ),
                        subtitle: Padding(
                          padding: const EdgeInsets.only(left: 135.0),
                          child: Column(
                            children: [
                              Row(
                                children: const [
                                  Icon(
                                    Icons.location_city,
                                    color: Color(0xfffbff12),
                                    size: 20,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(top: 8.0, left: 8.0),
                                    child: Text(
                                      'TG-103',
                                      style: TextStyle(color: Colors.grey, fontSize: 13),
                                    ),
                                  )
                                ],
                              ),
                              Row(
                                children: const [
                                  Icon(
                                    Icons.person,
                                    color: Color(0xfffbff12),
                                    size: 20,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(top: 7.0, left: 8.0),
                                    child: Text('Pranay Das',
                                        style: TextStyle(color: Colors.grey, fontSize: 13.5)),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),



                    ],
                  ),
                  ListView(
                    children: [
                      SizedBox(height: 40,),
                      ListTile(

                        leading: Column(
                          children: [
                            Text( '9:00 AM',
                                style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                            Text('|', style: TextStyle(fontSize: 18)),
                            Text( '9:45 AM',
                                style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                          ],
                        ),
                        title: Center(
                          child: const Text('PSC',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18)),
                        ),
                        subtitle: Padding(
                          padding: const EdgeInsets.only(left: 130.0),
                          child: Column(
                            children: [
                              Row(
                                children: const [
                                  Icon(
                                    Icons.location_city,
                                    color: Color(0xfffbff12),
                                    size: 20,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(top: 8.0, left: 8.0),
                                    child: Text(
                                      'TG-012',
                                      style: TextStyle(color: Colors.grey, fontSize: 13),
                                    ),
                                  )
                                ],
                              ),
                              Row(
                                children: const [
                                  Icon(
                                    Icons.person,
                                    color: Color(0xfffbff12),
                                    size: 20,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(top: 7.0, left: 8.0),
                                    child: Text('Pranay Das',
                                        style: TextStyle(color: Colors.grey, fontSize: 13.5)),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 50,),
                      ListTile(
                        leading: Column(
                          children: [
                            Text( '9:45 AM',
                                style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold)),
                            Text('|', style: TextStyle(fontSize: 18)),
                            Text( '10:30 AM',
                                style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                          ],
                        ),
                        title: Center(
                          child: const Text('CN',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18)),
                        ),
                        subtitle: Padding(
                          padding: const EdgeInsets.only(left: 130.0),
                          child: Column(
                            children: [
                              Row(
                                children: const [
                                  Icon(
                                    Icons.location_city,
                                    color: Color(0xfffbff12),
                                    size: 20,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(top: 8.0, left: 8.0),
                                    child: Text(
                                      'TG-013',
                                      style: TextStyle(color: Colors.grey, fontSize: 13),
                                    ),
                                  )
                                ],
                              ),
                              Row(
                                children: const [
                                  Icon(
                                    Icons.person,
                                    color: Color(0xfffbff12),
                                    size: 20,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(top: 7.0, left: 8.0),
                                    child: Text('Htet Ne Oo',
                                        style: TextStyle(color: Colors.grey, fontSize: 13.5)),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 50,),
                      ListTile(
                        leading: Column(
                          children: const [
                            Text( '10:30 AM',
                                style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold)),
                            Text('|', style: TextStyle(fontSize: 18)),
                            Text( '12:45 PM',
                                style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                          ],
                        ),
                        title: Center(
                          child: const Text('PSC',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18)),
                        ),
                        subtitle: Padding(
                          padding: const EdgeInsets.only(left: 130.0),
                          child: Column(
                            children: [
                              Row(
                                children: const [
                                  Icon(
                                    Icons.location_city,
                                    color: Color(0xfffbff12),
                                    size: 20,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(top: 8.0, left: 8.0),
                                    child: Text(
                                      'TG-012',
                                      style: TextStyle(color: Colors.grey, fontSize: 13),
                                    ),
                                  )
                                ],
                              ),
                              Row(
                                children: const [
                                  Icon(
                                    Icons.person,
                                    color: Color(0xfffbff12),
                                    size: 20,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(top: 7.0, left: 8.0),
                                    child: Text('Pranay Das',
                                        style: TextStyle(color: Colors.grey, fontSize: 13.5)),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 50,),
                      ListTile(
                        leading: Column(
                          children: [
                            Text( '12:45 PM',
                                style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold)),
                            Text('|', style: TextStyle(fontSize: 18)),
                            Text( '3:00 PM',
                                style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                          ],
                        ),
                        title: Center(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 30.0),
                            child: const Text('CN LAB',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18)),
                          ),
                        ),
                        subtitle: Padding(
                          padding: const EdgeInsets.only(left: 130.0),
                          child: Column(
                            children: [
                              Row(
                                children: const [
                                  Icon(
                                    Icons.location_city,
                                    color: Color(0xfffbff12),
                                    size: 20,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(top: 8.0, left: 8.0),
                                    child: Text(
                                      'TG-420',
                                      style: TextStyle(color: Colors.grey, fontSize: 13),
                                    ),
                                  )
                                ],
                              ),
                              Row(
                                children: const [
                                  Icon(
                                    Icons.person,
                                    color: Color(0xfffbff12),
                                    size: 20,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(top: 7.0, left: 8.0),
                                    child: Text('Htet Ne Oo',
                                        style: TextStyle(color: Colors.grey, fontSize: 13.5)),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 50,),
                      ListTile(
                        leading: Column(
                          children: [
                            Text( '3:00 PM',
                                style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold)),
                            Text('|', style: TextStyle(fontSize: 18)),
                            Text( '4:30 PM',
                                style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                          ],
                        ),
                        title: Padding(
                          padding: const EdgeInsets.only(left: 20.0),
                          child: Center(
                            child: const Text('LINUX',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18)),
                          ),
                        ),
                        subtitle: Padding(
                          padding: const EdgeInsets.only(left: 135.0),
                          child: Column(
                            children: [
                              Row(
                                children: const [
                                  Icon(
                                    Icons.location_city,
                                    color: Color(0xfffbff12),
                                    size: 20,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(top: 8.0, left: 8.0),
                                    child: Text(
                                      'TG-103',
                                      style: TextStyle(color: Colors.grey, fontSize: 13),
                                    ),
                                  )
                                ],
                              ),
                              Row(
                                children: const [
                                  Icon(
                                    Icons.person,
                                    color: Color(0xfffbff12),
                                    size: 20,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(top: 7.0, left: 8.0),
                                    child: Text('Pranay Das',
                                        style: TextStyle(color: Colors.grey, fontSize: 13.5)),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),



                    ],
                  ),
                ]),
              )
            ],
          ),
          bottomNavigationBar: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 85.0, bottom: 25),
                child: Image(
                  height: 25,
                    width: 25,
                    image: AssetImage('images/gdg.png')),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0, bottom: 25),
                child: Text(
                  'Google Developer',
                  style: TextStyle(fontWeight: FontWeight.bold),),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 3.0, bottom: 25),
                child: Text('Student Club'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
