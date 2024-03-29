// ignore_for_file: depend_on_referenced_packages, must_be_immutable
import 'package:flutter/material.dart';
import 'package:data_table_2/data_table_2.dart';
import 'package:lms_poc/web/screens/extended_video_screen.dart';
import '../../utils/const.dart';

class SubjectManagement extends StatefulWidget {
  SubjectManagement({super.key, required this.title, required this.callback});
  String title;
  Function callback;

  @override
  State<SubjectManagement> createState() => _SubjectManagementState();
}

class _SubjectManagementState extends State<SubjectManagement> {
  bool isVideoPage = false;
  bool isExtendedPage = false;
  List<DataColumn2> subjectColumn = const [
    DataColumn2(
      label: Text('Topics'),
    ),
    DataColumn2(
      label: Text('Concepts Available'),
    ),
    DataColumn2(
      label: Text('Curriculum Coverage'),
    ),
    DataColumn2(
      label: Text('Lithikesh Progress'),
    ),
    DataColumn2(
      label: Text('Understanding Level'),
    ),
    DataColumn2(
      label: Text('Class Average'),
    ),
    DataColumn2(
      label: Text('Recommendation'),
    ),
  ];
  List<DataColumn2> extendedVideoColumn = const [
    DataColumn2(
      label: Text('Period'),
    ),
    DataColumn2(
      label: Text('Subjects'),
    ),
    DataColumn2(
      label: Text('Topic'),
    ),
    DataColumn2(
      label: Text('Performance'),
    ),
    DataColumn2(
      label: Text('Extended Home Content'),
    ),
    DataColumn2(
      label: Text('Concepts for the class'),
    ),
  ];
  String title = "Extended Home Content";
  @override
  void initState() {
    super.initState();
    setState(() {
      title = widget.title;
    });
  }

  @override
  Widget build(BuildContext context) {
    return isVideoPage
        ? ExtendedVideoScreen(callback: () {
            setState(() {
              isVideoPage = false;
            });
          })
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
                      title,
                      style: const TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    ),
                    Row(
                      children: [
                        ElevatedButton(
                            style: const ButtonStyle(
                                backgroundColor:
                                    MaterialStatePropertyAll(Colors.green),
                                foregroundColor:
                                    MaterialStatePropertyAll(Colors.white)),
                            onPressed: () {
                              setState(() {
                                if (isExtendedPage) {
                                  isExtendedPage = false;
                                  title = widget.title;
                                } else {
                                  isExtendedPage = true;
                                  title = "All Extended Video";
                                }
                              });
                            },
                            child: Text(isExtendedPage
                                ? "Back to Subjects"
                                : "All Extended Classes")),
                        const SizedBox(
                          width: 10,
                        ),
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
                  height: isExtendedPage
                      ? MediaQuery.of(context).size.height * 0.3
                      : MediaQuery.of(context).size.height * 0.81,
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
                      columns:
                          isExtendedPage ? extendedVideoColumn : subjectColumn,
                      rows: isExtendedPage
                          ? List<DataRow>.generate(extendedTopics.length,
                              (index) {
                              var topic = extendedTopics[index];
                              return DataRow(cells: [
                                DataCell(Text(topic['period'])),
                                DataCell(Text(topic['subject'])),
                                DataCell(Text(topic['topic'])),
                                DataCell(Text(
                                  "${topic['performance']}%",
                                )),
                                DataCell(Text(topic['extendedHomeContent'])),
                                DataCell(InkWell(
                                    onTap: () {
                                      setState(() {
                                        isVideoPage = true;
                                      });
                                    },
                                    child: Text(topic['conceptsAvailable']))),
                              ]);
                            })
                          : List<DataRow>.generate(topics.length, (index) {
                              var topic = topics[index];
                              return DataRow(cells: [
                                DataCell(Text(topic['topics'])),
                                DataCell(Text(topic['conceptsAvailable'])),
                                DataCell(Text(topic['curriculumCoverage'])),
                                DataCell(Text(topic['studentProgress'])),
                                DataCell(Text(
                                  "${topic['understandingLevel']}%",
                                )),
                                DataCell(Text("${topic['classAverage']}%")),
                                DataCell(InkWell(
                                    onTap: () {
                                      setState(() {
                                        isVideoPage = true;
                                      });
                                    },
                                    child: Text(topic['recommendation']))),
                              ]);
                            })),
                ),
              ],
            ),
          );
  }
}
