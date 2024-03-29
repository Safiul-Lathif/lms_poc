// ignore_for_file: depend_on_referenced_packages, must_be_immutable
import 'package:flutter/material.dart';
import 'package:data_table_2/data_table_2.dart';
import 'package:lms_poc/web/screens/extended_video_screen.dart';
import '../../utils/const.dart';

class PreparationForUpcomingClassPage extends StatefulWidget {
  PreparationForUpcomingClassPage(
      {super.key, required this.callback, required this.title});
  Function callback;
  String title;

  @override
  State<PreparationForUpcomingClassPage> createState() =>
      _PreparationForUpcomingClassPageState();
}

class _PreparationForUpcomingClassPageState
    extends State<PreparationForUpcomingClassPage> {
  bool isVideoPage = false;

  List<DataColumn2> preparationClassesColumn = const [
    DataColumn2(
      label: Text('Class/Section'),
    ),
    DataColumn2(
      label: Text('Topic next in queue'),
    ),
    DataColumn2(
      label: Text('Available Preparation'),
    ),
    DataColumn2(
      label: Text('Concepts for the class'),
    ),
    DataColumn2(
      label: Text('Class Coverage available'),
    ),
    DataColumn2(
      label: Text('Progress'),
    ),
  ];
  String title = "Extended Home Content";

  @override
  Widget build(BuildContext context) {
    return isVideoPage
        ? ExtendedVideoScreen(
            callback: () {
              setState(() {
                isVideoPage = false;
              });
            },
          )
        : Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      widget.title,
                      style: const TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    ),
                    Row(
                      children: [
                        IconButton(
                            onPressed: () {
                              widget.callback(true);
                            },
                            icon: const Icon(Icons.cancel)),
                      ],
                    )
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                    height: MediaQuery.of(context).size.height * 0.3,
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey.shade200,
                      boxShadow: const [BoxShadow()],
                    ),
                    child: DataTable2(
                        columnSpacing: 12,
                        horizontalMargin: 14,
                        minWidth: 800,
                        columns: preparationClassesColumn,
                        rows: List<DataRow>.generate(
                            preparationForUpcomingClass.length, (index) {
                          var topic = preparationForUpcomingClass[index];
                          return DataRow(cells: [
                            DataCell(Text(topic['class'])),
                            DataCell(Text(topic['topic'])),
                            DataCell(Text(topic['availablePreparations'])),
                            DataCell(Text(
                              topic['progress'],
                            )),
                            DataCell(Text(topic['classCoverage'])),
                            DataCell(InkWell(
                                onTap: () {
                                  setState(() {
                                    isVideoPage = true;
                                  });
                                },
                                child: Text(topic['conceptsAvailable']))),
                          ]);
                        }))),
              ],
            ),
          );
  }
}
