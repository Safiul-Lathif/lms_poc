import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:lms_poc/utils/const.dart';

class MostViewedWidget extends StatelessWidget {
  const MostViewedWidget({super.key, required this.i, required this.callback});

  final int i;
  final Function callback;

  @override
  Widget build(BuildContext context) {
    isMobile = MediaQuery.of(context).size.width < 900;

    return Container(
      width: isMobile
          ? MediaQuery.of(context).size.width * 0.85
          : MediaQuery.of(context).size.width * 0.35,
      padding: const EdgeInsets.only(top: 5, bottom: 5),
      child: InkWell(
        onTap: () {
          callback(role == "Staff"
              ? staffSubject1[i]['name']
              : mostViewed[i]['name']);
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(role == "Staff"
                ? "${i + 1}) ${staffSubject1[i]['name']}"
                : "${i + 1}) ${mostViewed[i]['name']}"),
            SizedBox(
              width: isMobile
                  ? MediaQuery.of(context).size.width * 0.45
                  : MediaQuery.of(context).size.width * 0.25,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  LinearPercentIndicator(
                    width: MediaQuery.of(context).size.width * 0.2,
                    lineHeight: 5.0,
                    percent: role == "Staff"
                        ? staffSubject1[i]['percentage'] / 100
                        : mostViewed[i]['percentage'] / 100,
                    barRadius: const Radius.circular(10),
                    progressColor: Colors.green,
                  ),
                  Text(role == "Staff"
                      ? staffSubject1[i]['count']
                      : mostViewed[i]['count']),
                  const Icon(
                    Icons.remove_red_eye,
                    color: Colors.green,
                    size: 20,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class MostEnrolledWidget extends StatelessWidget {
  const MostEnrolledWidget(
      {super.key, required this.i, required this.callback});

  final int i;
  final Function callback;

  @override
  Widget build(BuildContext context) {
    isMobile = MediaQuery.of(context).size.width < 900;

    return Container(
      width: isMobile
          ? MediaQuery.of(context).size.width * 0.7
          : MediaQuery.of(context).size.width * 0.35,
      padding: const EdgeInsets.only(top: 5, bottom: 5),
      child: InkWell(
        onTap: () {
          callback(role == "Staff"
              ? staffSubject2[i]['name']
              : mostEnrolled[i]['name']);
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(role == "Staff"
                ? "${i + 6}) ${staffSubject2[i]['name']}"
                : "${i + 6}) ${mostEnrolled[i]['name']}"),
            SizedBox(
              width: isMobile
                  ? MediaQuery.of(context).size.width * 0.45
                  : MediaQuery.of(context).size.width * 0.25,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  LinearPercentIndicator(
                    width: MediaQuery.of(context).size.width * 0.2,
                    lineHeight: 5.0,
                    percent: role == "Staff"
                        ? staffSubject2[i]['percentage'] / 100
                        : mostEnrolled[i]['percentage'] / 100,
                    barRadius: const Radius.circular(10),
                    progressColor: Colors.green,
                  ),
                  Text(role == "Staff"
                      ? staffSubject2[i]['count']
                      : mostEnrolled[i]['count']),
                  const Icon(
                    Icons.remove_red_eye,
                    color: Colors.green,
                    size: 20,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
