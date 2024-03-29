import 'package:flutter/material.dart';
import 'package:lms_poc/utils/const.dart';
import 'package:lms_poc/widget/home/most_viewed_widget.dart';

class CoursesWidget extends StatelessWidget {
  const CoursesWidget({super.key, required this.callback});
  final Function callback;

  @override
  Widget build(BuildContext context) {
    isMobile = MediaQuery.of(context).size.width < 900;
    var columnWidget = [
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Subjects",
            style: TextStyle(
                fontSize: 14, color: Colors.green, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 10,
          ),
          if (role != "Staff") ...[
            for (int i = 0; i < mostViewed.length; i++)
              MostViewedWidget(
                i: i,
                callback: callback,
              )
          ],
          if (role == "Staff") ...[
            for (int i = 0; i < staffSubject1.length; i++)
              MostViewedWidget(
                i: i,
                callback: callback,
              )
          ],
        ],
      ),
      const SizedBox(
        width: 10,
      ),
      Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          const SizedBox(
            height: 20,
          ),
          if (role != "Staff") ...[
            for (int i = 0; i < mostEnrolled.length; i++)
              MostViewedWidget(
                i: i,
                callback: callback,
              )
          ],
          if (role == "Staff") ...[
            for (int i = 0; i < staffSubject2.length; i++)
              MostEnrolledWidget(
                i: i,
                callback: callback,
              )
          ],
        ],
      ),
    ];

    return Card(
      elevation: 10,
      child: Padding(
        padding:
            const EdgeInsets.only(left: 10, right: 10, top: 20, bottom: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Courses Overview",
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(
              height: 20,
            ),
            isMobile
                ? Column(
                    children: columnWidget,
                  )
                : Row(
                    children: columnWidget,
                  ),
          ],
        ),
      ),
    );
  }
}
