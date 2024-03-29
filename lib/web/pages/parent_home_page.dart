import 'package:flutter/material.dart';
import 'package:lms_poc/utils/const.dart';
import 'package:lms_poc/web/management/subject_managements.dart';
import 'package:lms_poc/widget/custom/bar_chart.dart';
import 'package:lms_poc/widget/custom/indicator.dart';
import 'package:lms_poc/widget/custom/line_chart.dart';
import 'package:lms_poc/widget/home/top_bar_widget.dart';
import 'package:table_calendar/table_calendar.dart';

class ParentHomePage extends StatefulWidget {
  const ParentHomePage({super.key});

  @override
  State<ParentHomePage> createState() => _ParentHomePageState();
}

class _ParentHomePageState extends State<ParentHomePage> {
  bool isMainPage = true;
  String title = "Science";

  void callback(bool isMain) {
    setState(() {
      isMainPage = isMain;
    });
  }

  @override
  Widget build(BuildContext context) {
    isMobile = MediaQuery.of(context).size.width < 900;
    var widgets = [
      Card(
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(10))),
          elevation: 10,
          child: Column(
            children: [
              BarGraph(
                callback: (titles) {
                  setState(() {
                    isMainPage = false;
                    title = titles;
                  });
                },
              ),
              isMobile
                  ? Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(children: const [
                        Indicator(
                          color: Colors.blue,
                          text: 'Course Completion',
                          isSquare: true,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Indicator(
                          color: Colors.pink,
                          text: 'Litikesh Percentage',
                          isSquare: true,
                        ),
                      ]),
                    )
                  : Row(
                      children: const [
                        Indicator(
                          color: Colors.blue,
                          text: 'Course Completion',
                          isSquare: true,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Indicator(
                          color: Colors.pink,
                          text: 'Litikesh Percentage',
                          isSquare: true,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Indicator(
                          color: Colors.green,
                          text: 'Average',
                          isSquare: true,
                        ),
                      ],
                    ),
              const SizedBox(
                height: 20,
              ),
            ],
          )),
      isMobile
          ? Card(
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              elevation: 10,
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Class Completion',
                      style: TextStyle(color: Color(0xff77839a), fontSize: 22),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    LineChartSample6(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Indicator(
                          color: Colors.blue,
                          text: 'Class Average',
                          isSquare: true,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Indicator(
                          color: Colors.orange,
                          text: 'Litikesh Average',
                          isSquare: true,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
            )
          : Expanded(
              child: Card(
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                elevation: 10,
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Class Completion',
                        style:
                            TextStyle(color: Color(0xff77839a), fontSize: 22),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      LineChartSample6(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Indicator(
                            color: Colors.blue,
                            text: 'Class Average',
                            isSquare: true,
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Indicator(
                            color: Colors.orange,
                            text: 'Litikesh Average',
                            isSquare: true,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                ),
              ),
            )
    ];

    var profile = [
      Container(
        height: MediaQuery.of(context).size.height * 0.25,
        width: isMobile
            ? MediaQuery.of(context).size.width * 0.5
            : MediaQuery.of(context).size.width * 0.1,
        decoration: BoxDecoration(
          image: const DecorationImage(
              image: NetworkImage(
                  "https://as2.ftcdn.net/v2/jpg/04/22/35/71/1000_F_422357183_UxXsjmF6xLNQscbej8j7Ko4f7m1Q6bXR.jpg"),
              fit: BoxFit.cover),
          borderRadius: const BorderRadius.all(Radius.circular(20)),
          boxShadow: [
            BoxShadow(
                color: Colors.grey.withOpacity(.5),
                offset: const Offset(3, 2),
                blurRadius: 7)
          ],
        ),
      ),
      const SizedBox(
        width: 10,
      ),
      Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              children: const [
                Text(
                  "Name: ",
                  style: TextStyle(fontSize: 16),
                ),
                Text(
                  "Litikesh Hari",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: const [
                Text(
                  "Class: ",
                  style: TextStyle(fontSize: 16),
                ),
                Text(
                  "5-A",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: const [
                Text(
                  "Contact: ",
                  style: TextStyle(fontSize: 16),
                ),
                Text(
                  "9840227944",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: const [
                Text(
                  "Blood Group: ",
                  style: TextStyle(fontSize: 16),
                ),
                Text(
                  "0+",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  "Address: ",
                  style: TextStyle(fontSize: 16),
                ),
                Text(
                  "No 8 ,Vivegananthar street road,\nChennai",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
              ],
            )
          ],
        ),
      )
    ];

    return !isMainPage
        ? SubjectManagement(
            title: title,
            callback: callback,
          )
        : SafeArea(
            child: Container(
                padding: const EdgeInsets.all(15),
                color: const Color.fromARGB(255, 244, 247, 248),
                child: SingleChildScrollView(
                  child: Column(children: [
                    const TopBarWidget(),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Card(
                          shape: const RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          elevation: 10,
                          child: Padding(
                            padding: const EdgeInsets.only(
                                left: 20, right: 20, top: 30, bottom: 50),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  "Profile Info",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16),
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                isMobile
                                    ? SizedBox(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.8,
                                        child: Column(
                                          children: profile,
                                        ),
                                      )
                                    : Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: profile)
                              ],
                            ),
                          ),
                        ),
                        if (!isMobile)
                          Expanded(
                            child: Card(
                              shape: const RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10))),
                              elevation: 10,
                              child: TableCalendar(
                                rowHeight: 40,
                                firstDay: DateTime.utc(2022, 10, 16),
                                lastDay: DateTime.utc(2050, 3, 14),
                                focusedDay: DateTime.now(),
                                onDaySelected: (selectedDay, focusedDay) {},
                              ),
                            ),
                          )
                      ],
                    ),
                    if (isMobile)
                      const SizedBox(
                        height: 10,
                      ),
                    isMobile
                        ? Column(
                            children: widgets,
                          )
                        : Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: widgets,
                          )
                  ]),
                )));
  }
}
