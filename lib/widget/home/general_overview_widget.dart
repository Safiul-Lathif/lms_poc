import 'package:flutter/material.dart';
import 'package:lms_poc/utils/const.dart';
import 'package:lms_poc/widget/home/progress_bar_widget.dart';

class GeneralOverviewWidget extends StatelessWidget {
  const GeneralOverviewWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "General Overview",
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                children: [
                  if (role == "Staff") ...[
                    for (int i = 0; i < staffProgress.length; i++)
                      ProgressBarWidget(i: i),
                  ],
                  if (role != "Staff") ...[
                    for (int i = 0; i < data.length; i++)
                      ProgressBarWidget(i: i),
                  ]
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
