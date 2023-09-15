import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  DateTime today = DateTime.now();
  int index1 = 0;
  TextEditingController text=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("images/Curves.png"), fit: BoxFit.cover)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Container(

              padding: EdgeInsets.all(20),
              width: MediaQuery.of(context).size.width,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height:MediaQuery.of(context).size.width >=600?  400:300,

                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(color: Colors.white, blurRadius: 40)
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          "Let's Find your doctor",
                          style:
                              TextStyle(fontFamily: 'RobotoSlab', fontSize: 20),
                          textAlign: TextAlign.center,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  border:
                                      Border.all(color: Colors.blue, width: 2),
                                  borderRadius: BorderRadius.circular(50)),
                              child: FloatingActionButton(
                                onPressed: () {},
                                backgroundColor: Colors.white,
                                elevation: 10,
                                highlightElevation: 3,
                                child: Icon(
                                  Icons.add_business_sharp,
                                  color: Colors.orange,
                                  size: 30,
                                  shadows: [
                                    Shadow(
                                      color: Colors.green,
                                      blurRadius: 5,
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  border:
                                      Border.all(color: Colors.blue, width: 2),
                                  borderRadius: BorderRadius.circular(50)),
                              child: FloatingActionButton(
                                onPressed: () {},
                                backgroundColor: Colors.white,
                                elevation: 10,
                                highlightElevation: 3,
                                child: Icon(
                                  Icons.add_box,
                                  color: Colors.red,
                                  size: 30,
                                  shadows: [
                                    Shadow(
                                      color: Colors.green,
                                      blurRadius: 5,
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  border:
                                      Border.all(color: Colors.blue, width: 2),
                                  borderRadius: BorderRadius.circular(50)),
                              child: FloatingActionButton(
                                onPressed: () {},
                                backgroundColor: Colors.white,
                                elevation: 10,
                                highlightElevation: 3,
                                child: Icon(
                                  Icons.favorite,
                                  color: Colors.blueAccent,
                                  size: 30,
                                  shadows: [
                                    Shadow(
                                      color: Colors.green,
                                      blurRadius: 5,
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  border:
                                      Border.all(color: Colors.blue, width: 2),
                                  borderRadius: BorderRadius.circular(50)),
                              child: FloatingActionButton(
                                onPressed: () {},
                                backgroundColor: Colors.white,
                                elevation: 10,
                                highlightElevation: 3,
                                child: Icon(
                                  Icons.nordic_walking_sharp,
                                  color: Colors.green,
                                  size: 30,
                                  shadows: [
                                    Shadow(
                                      color: Colors.red,
                                      blurRadius: 5,
                                    )
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 60),
                          child: TextFormField(
                            controller: text,
                            decoration: InputDecoration(
                                prefixIcon: Icon(Icons.search),
                                suffixIcon: IconButton(icon: Icon(Icons.cancel_outlined),onPressed: (){

                                  setState(() {
                                    text.text="";
                                    print("object");

                                  });
                                },),
                                hintText: "Search...",
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: BorderSide(
                                        color: Colors.black, width: 3))),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height:MediaQuery.of(context).size.width >=600? 320:270,
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(color: Colors.white, blurRadius: 40)
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          " Today :  " +
                              DateTime.now().toString().split(" ")[0],
                          style:
                              TextStyle(fontFamily: 'RobotoSlab', fontSize: 20),
                          textAlign: TextAlign.center,
                        ),
                        Container(
                          child: TableCalendar(

                              daysOfWeekStyle: DaysOfWeekStyle(
                                  decoration: BoxDecoration(

                                borderRadius: BorderRadius.circular(10),
                                border:
                                    Border.all(color: Colors.blue, width: 1),
                              )),
                              headerStyle: HeaderStyle(
                                  formatButtonVisible: false,
                                  titleCentered: true),
                              calendarFormat: CalendarFormat.week,
                              pageAnimationDuration: Duration(seconds: 2),
                              calendarStyle: CalendarStyle(
                                  cellAlignment: Alignment.center,
                                  cellMargin: EdgeInsets.all(6),
                                  // cellPadding: EdgeInsets.all(10),
                                  // canMarkersOverflow: true,
                                  // rangeHighlightScale: 20,
                                  // markerSize: 40,
                                  selectedTextStyle:
                                      TextStyle(color: Colors.black),
                                  selectedDecoration: BoxDecoration(
// borderRadius: BorderRadius.circular(50),

                                      shape: BoxShape.circle,
                                      border: Border.all(
                                          color: Colors.black, width: 2),
                                      image: DecorationImage(
                                          image: AssetImage(
                                        "images/3.jfif",
                                      )),
                                      boxShadow: [
                                        BoxShadow(
                                            color: Colors.black,
                                            blurStyle: BlurStyle.outer,
                                            blurRadius: 5)
                                      ]),
                                  tableBorder: TableBorder(
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(10),
                                    ),

                                    // horizontalInside: BorderSide(color: Colors.blue,width: 2),
                                    // verticalInside: BorderSide(color: Colors.green,width: 2),
                                    // right: BorderSide(color: Colors.green,width: 2),
                                    //
                                    // bottom: BorderSide(color: Colors.green,width: 2),
                                    // top: BorderSide(color: Colors.green,width: 2),
                                    // left: BorderSide(color: Colors.green,width: 2)
                                  ),
                                  todayTextStyle:
                                      TextStyle(color: Colors.black),
                                  todayDecoration: BoxDecoration(
// borderRadius: BorderRadius.circular(50),
                                      shape: BoxShape.circle,
                                      border: Border.all(
                                          color: Colors.orangeAccent, width: 2),
                                      image: DecorationImage(
                                          image: AssetImage(
                                        "images/3.jfif",
                                      )),
                                      boxShadow: [
                                        BoxShadow(
                                            color: Colors.black,
                                            blurStyle: BlurStyle.outer,
                                            blurRadius: 5)
                                      ])),
                              availableGestures: AvailableGestures.all,
                              selectedDayPredicate: (day) =>
                                  isSameDay(day, today),
                              onDaySelected: (selectedDay, focusedDay) {
                                setState(() {
                                  today = selectedDay;
                                });
                              },
                              rowHeight: 40,
                              focusedDay: today,
                              firstDay: DateTime.utc(2022, 9, 4),
                              lastDay: DateTime.utc(2060, 9, 4)),
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 200,
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(color: Colors.white, blurRadius: 40)
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ListTile(
                          title: Text(
                            "Dr. ChatBot",
                            style: TextStyle(
                                fontFamily: 'RobotoSlab', fontSize: 20),
                          ),
                          subtitle:
                              Text("Assistant", style: TextStyle(fontSize: 15)),
                          trailing: Container(
                            decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.black, width: 2),
                                borderRadius: BorderRadius.circular(50)),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(50),
                              child:
                                  Image(image: AssetImage("images/result.png")),
                            ),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            TextButton(
                                onPressed: () {},
                                child: Text("Available for your need",
                                    style: TextStyle(
                                        fontFamily: 'RobotoSlab',
                                        fontSize: 20))),
                            Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(80),
                                  boxShadow: [
                                    BoxShadow(
                                        blurStyle: BlurStyle.outer,
                                        color: Colors.blue,
                                        blurRadius: 15,
                                        spreadRadius: 0)
                                  ],
                                  image: DecorationImage(
                                      image: AssetImage("images/3.jfif"),
                                      fit: BoxFit.fill)),
                              child: ElevatedButton(
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(
                                      side: BorderSide(color: Colors.black),
                                      shape: StadiumBorder(),
                                      elevation: 0,
                                      padding: EdgeInsets.all(13),
                                      alignment: Alignment.center,
                                      backgroundColor: Colors.transparent),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.contact_mail,
                                        color: Colors.black,
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        "Contact",
                                        style: TextStyle(color: Colors.black),
                                      )
                                    ],
                                  )),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        bottomNavigationBar: ConvexAppBar(
          style: TabStyle.reactCircle,
          backgroundColor: Colors.red,
          curve: Curves.easeInOutCirc,
          activeColor: Colors.red,
          gradient: LinearGradient(colors: [
            Colors.blue,
            Colors.white,
            Colors.red,
          ], transform: GradientRotation(20)),
          shadowColor: Colors.black,
          onTap: (index) {
            setState(() {
              index1 = index;
              print(index1);
              // if (index1 == 1) {
              //   // Navigator.of(context).push(animation(page: person()));
              // } else if (index1 == 3) {
              //   // Navigator.of(context).push(animation(page: order()));
              // } else if (index1 == 0) {
              //   // Navigator.of(context).push(animation(page: nofication()));
              // }
            });
          },
          initialActiveIndex: index1,
          elevation: 20,
          items: [
            TabItem(
                icon: Icon(
              Icons.home_sharp,
            )),
            TabItem(
                icon: Icon(
              Icons.comment,
            )),
            TabItem(
                icon: Icon(
              Icons.local_hospital_outlined,
            )),
            TabItem(
                icon: Icon(
              Icons.favorite,
            )),
            TabItem(
                icon: Icon(
              Icons.add_home_work,
            )),
          ],
        ),
      ),
    );
  }
}
