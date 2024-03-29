import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:lms_poc/utils/const.dart';

class ProgressBarWidget extends StatelessWidget {
  const ProgressBarWidget({
    super.key,
    required this.i,
  });

  final int i;

  @override
  Widget build(BuildContext context) {
    isMobile = MediaQuery.of(context).size.width < 900;

    return Column(
      children: [
        Padding(
          padding:
              isMobile ? const EdgeInsets.all(15) : const EdgeInsets.all(24.0),
          child: CircularPercentIndicator(
            circularStrokeCap: CircularStrokeCap.round,
            radius: isMobile ? 60 : 70.0,
            backgroundWidth: 2,
            lineWidth: 5.0,
            percent: role == "Staff"
                ? staffProgress[i]['percentage'] / 100
                : data[i]['percentage'] / 100,
            animation: true,
            animationDuration: 1000,
            center: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  role == "Staff"
                      ? staffProgress[i]['count']
                      : data[i]['count'],
                  style: TextStyle(
                      color: colorizeColors[i % colorizeColors.length],
                      fontWeight: FontWeight.w400,
                      fontSize: 18),
                ),
                const SizedBox(
                  height: 10,
                ),
                if (i == 2 || i == 1)
                  Text(
                      role == "Staff"
                          ? "${staffProgress[i]['count']}of Courses"
                          : "${data[i]['count']}of Courses",
                      style: TextStyle(
                          color: colorizeColors[i % colorizeColors.length],
                          fontWeight: FontWeight.w400,
                          fontSize: 11))
              ],
            ),
            linearGradient: LinearGradient(colors: [
              colorizeColors[i % colorizeColors.length].shade100,
              colorizeColors[i % colorizeColors.length].shade500
            ]),
          ),
        ),
        Text(role == "Staff" ? staffProgress[i]['name'] : data[i]['name'])
      ],
    );
  }
}
