import 'package:flutter/material.dart';
import 'package:lms_poc/utils/const.dart';
import 'package:lms_poc/web/staff/preparation_for_upcoming_classes.dart';
import 'package:lms_poc/widget/home/courses_widget.dart';
import 'package:lms_poc/widget/home/general_overview_widget.dart';
import 'package:lms_poc/widget/home/top_bar_widget.dart';
import 'package:table_calendar/table_calendar.dart';

class HomePageMobile extends StatefulWidget {
  const HomePageMobile({super.key});

  @override
  State<HomePageMobile> createState() => _HomePageMobileState();
}

class _HomePageMobileState extends State<HomePageMobile> {
  bool isMainPage = true;
  String title = "Preparation for Upcoming Cases";

  @override
  Widget build(BuildContext context) {
    isMobile = MediaQuery.of(context).size.width < 900;
    return !isMainPage
        ? PreparationForUpcomingClassPage(
            title: title,
            callback: (value) {
              setState(() {
                isMainPage = value;
              });
            },
          )
        : SafeArea(
            child: Container(
              padding: const EdgeInsets.all(15),
              color: const Color.fromARGB(255, 244, 247, 248),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    const TopBarWidget(),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const GeneralOverviewWidget(),
                        if (!isMobile)
                          Expanded(
                            child: Card(
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
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        CoursesWidget(
                          callback: (topic) {
                            setState(() {
                              isMainPage = false;
                              title = topic;
                            });
                          },
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          );
  }
}
