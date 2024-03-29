import 'package:flutter/material.dart';
import 'package:lms_poc/model/login_model.dart';

var colorizeColors = [
  Colors.pink,
  Colors.green,
  Colors.orange,
  Colors.green,
  Colors.purple,
  Colors.red
];

bool isMobile = false;

List<Map<String, dynamic>> data = [
  {"name": "Total Users", "percentage": 100, "count": "107"},
  {"name": "Total Courses", "percentage": 100, "count": "33"},
];
List<Map<String, dynamic>> staffProgress = [
  {"name": "Total Top pics", "percentage": 100, "count": "10"},
  {"name": "Course Progress", "percentage": 20, "count": "2"},
];

List<Map<String, dynamic>> mostViewed = [
  {"name": "Physics", "percentage": 70, "count": "70%"},
  {"name": "Chemistry", "percentage": 10, "count": "10%"},
  {"name": "Tamil", "percentage": 40, "count": "40%"},
  {"name": "English", "percentage": 60, "count": "60%"},
  {"name": "Hindi", "percentage": 50, "count": "50%"},
];

List<Map<String, dynamic>> mostEnrolled = [
  {"name": "Maths", "percentage": 60, "count": "60%"},
  {"name": "Social science", "percentage": 50, "count": "50%"},
  {"name": "Biology", "percentage": 70, "count": "70%"},
  {"name": "EVS", "percentage": 40, "count": "40%"},
  {"name": "Computer", "percentage": 50, "count": "50%"},
];

List<Map<String, dynamic>> staffSubject1 = [
  {"name": "Newton's Law", "percentage": 70, "count": "70%"},
  {"name": "Thermodynamics", "percentage": 10, "count": "10%"},
  {"name": "Physics Study", "percentage": 40, "count": "40%"},
  {"name": "Astronomy", "percentage": 60, "count": "60%"},
  {"name": "Space", "percentage": 50, "count": "50%"},
];

List<Map<String, dynamic>> staffSubject2 = [
  {"name": "kepler's law", "percentage": 60, "count": "60%"},
  {"name": "Galaxy", "percentage": 50, "count": "50%"},
  {"name": "Demo Course", "percentage": 70, "count": "70%"},
  {"name": "Solar System", "percentage": 0, "count": "0%"},
  {"name": "Earth Science", "percentage": 0, "count": "0%"},
];

List<Map<String, dynamic>> videoSampleData = [
  {
    "title": "The Earth and its environment",
    "image":
        "https://media.istockphoto.com/id/1365125708/photo/earth-venus-and-mercury.jpg?s=2048x2048&w=is&k=20&c=NnFnHQcfbAMBcgFtAGsIg3-3_RUTvPg1TqyLotGIAi8=",
    "subTitle":
        "Earth is the third planet from the sun, the fifth largest planet in our solar system, and the only planet in the solar system that can support life. It's also known as the blue planet because 71% of its surface is covered by water. "
  },
  {
    "title": "The Moon",
    "image":
        "https://cdn.mos.cms.futurecdn.net/7jxwc8dNejsvowwWTGfG2P-320-80.jpg",
    "subTitle":
        "The Moon is Earth's only natural satellite. It orbits at an average distance of 384,400 km (238,900 mi), about 30 times the diameter of Earth. Over time Earth's gravity has caused tidal locking, causing the same side of the Moon to always face Earth. "
  },
];

List<Map<String, dynamic>> courseCompletion = [
  {"subject": "English", "courseCompletion": 100, "studentProgress": 80},
  // {
  //   "subject": "Second \nLanguage",
  //   "courseCompletion": 90,
  //   "studentProgress": 45
  // },
  {"subject": "Maths", "courseCompletion": 80, "studentProgress": 60},
  {"subject": "Science", "courseCompletion": 90, "studentProgress": 40},
  {"subject": "Biology", "courseCompletion": 100, "studentProgress": 50},
  {"subject": "EVS", "courseCompletion": 60, "studentProgress": 60},
];

List<Map<String, dynamic>> classComparison = [
  {
    "subject": "English",
    "classAverage": 60,
    "studentProgress": 50,
    "comparison": "Good"
  },
  // {
  //   "subject": "Second Language",
  //   "classAverage": 50,
  //   "studentProgress": 45,
  //   "comparison": "Good"
  // },
  {
    "subject": "Maths",
    "classAverage": 70,
    "studentProgress": 60,
    "comparison": "Good"
  },
  {
    "subject": "Science",
    "classAverage": 30,
    "studentProgress": 40,
    "comparison": "Best"
  },
  {
    "subject": "Biology",
    "classAverage": 50,
    "studentProgress": 50,
    "comparison": "Need Attention"
  },
  {
    "subject": "EVS",
    "classAverage": 60,
    "studentProgress": 60,
    "comparison": "Good"
  },
];

List<Map<String, dynamic>> extendedTopics = [
  {
    "period": "Period 1",
    "subject": "English",
    "topic": "Poetry",
    "performance": 70,
    "extendedHomeContent": "Yes",
    "conceptsAvailable": "Video (30 min) | AR",
  },
  {
    "period": "Period 2",
    "subject": "Maths",
    "topic": "Algebra",
    "performance": 60,
    "extendedHomeContent": "No",
    "conceptsAvailable": "Video (30 min) | AR | VR",
  },
  {
    "period": "Period 3",
    "subject": "Science",
    "topic": "Solar System",
    "performance": 30,
    "extendedHomeContent": "Yes",
    "conceptsAvailable": "Video (30 min) | Worksheet",
  },
];

List<Map<String, dynamic>> preparationForUpcomingClass = [
  {
    "class": "9A",
    "topic": "Trigonometry[change]",
    "availablePreparations": "yes",
    "progress": "Completed",
    "classCoverage": "30 min",
    "conceptsAvailable": "Video (30 min) | AR",
  },
  {
    "class": "8C",
    "topic": "Algebra",
    "availablePreparations": "yes",
    "progress": "Not Completed",
    "classCoverage": "50 min",
    "conceptsAvailable": "Video (30 min) | Worksheet",
  },
  {
    "class": "7D",
    "topic": "Matrices",
    "availablePreparations": "yes",
    "progress": "Completed",
    "classCoverage": "1 hr",
    "conceptsAvailable": "Video (20 min) | AR | VR ",
  },
];
List<Map<String, dynamic>> topics = [
  {
    "topics": "Newton's Law",
    "understandingLevel": 70,
    "classAverage": 70,
    "curriculumCoverage": "Completed",
    "studentProgress": "in-progress",
    "conceptsAvailable": "Video (30 min) | AR",
    "recommendation": "Extended class for interest"
  },
  {
    "topics": "Thermodynamics",
    "understandingLevel": 10,
    "classAverage": 10,
    "curriculumCoverage": "Completed",
    "studentProgress": "in-progress",
    "conceptsAvailable": "Video (35 min)  |VR",
    "recommendation": "Extended class for interest"
  },
  {
    "topics": "Physics Study",
    "understandingLevel": 40,
    "classAverage": 40,
    "curriculumCoverage": "Completed",
    "studentProgress": "in-progress",
    "conceptsAvailable": " AR |VR",
    "recommendation": "Extended class for interest"
  },
  {
    "topics": "Astronomy",
    "understandingLevel": 60,
    "classAverage": 60,
    "curriculumCoverage": "Completed",
    "studentProgress": "in-progress",
    "conceptsAvailable": "Video (35 min)",
    "recommendation": "Extended class for interest"
  },
  {
    "topics": "Space",
    "understandingLevel": 50,
    "classAverage": 50,
    "curriculumCoverage": "Completed",
    "studentProgress": "in-progress",
    "conceptsAvailable": "Video (27 min) | AR |VR",
    "recommendation": "Extended class for interest"
  },
  {
    "topics": "kepler's law",
    "understandingLevel": 60,
    "classAverage": 10,
    "curriculumCoverage": "Completed",
    "studentProgress": "in-progress",
    "conceptsAvailable": "Video (60 min) | AR |VR",
    "recommendation": "Extended class Much Needed"
  },
  {
    "topics": "Galaxy",
    "understandingLevel": 50,
    "classAverage": 40,
    "curriculumCoverage": "Completed",
    "studentProgress": "in-progress",
    "conceptsAvailable": "Video (10 min) | VR",
    "recommendation": "Extended class for interest"
  },
  {
    "topics": "Galaxy",
    "understandingLevel": 50,
    "classAverage": 50,
    "curriculumCoverage": "Completed",
    "studentProgress": "completed",
    "conceptsAvailable": "Video (2 hr) | AR |VR",
    "recommendation": "Extended class for interest"
  },
  {
    "topics": "Demo Course",
    "understandingLevel": 70,
    "classAverage": 70,
    "curriculumCoverage": "Completed",
    "studentProgress": "Completed",
    "conceptsAvailable": "Video (40 min) | AR |VR",
    "recommendation": "Extended class for interest"
  },
  {
    "topics": "Solar System",
    "understandingLevel": 0,
    "classAverage": 0,
    "curriculumCoverage": "yet to start",
    "studentProgress": "nil",
    "conceptsAvailable": "Video (10 min) | AR |VR",
    "recommendation": "start watching video"
  },
  {
    "topics": "Earth Science",
    "understandingLevel": 0,
    "classAverage": 0,
    "curriculumCoverage": "yet to start",
    "studentProgress": "nil",
    "conceptsAvailable": "Video (15 min) | AR |VR",
    "recommendation": "start watching video"
  },
];

double option1 = 1.0;

double option2 = 0.0;

double option3 = 1.0;

double option4 = 1.0;

double option5 = 7.0;

double option6 = 3.0;

double option7 = 17.0;

double option8 = 1.0;

String user = "king@mail.com";

Map<String, int> usersWhoVoted = {
  'sam@mail.com': 3,
  'mike@mail.com': 4,
  'john@mail.com': 1,
  'kenny@mail.com': 1
};

String creator = "eddy@mail.com";

List<LoginModel> userRole = [
  LoginModel(phoneNo: 9876543210, password: "123455", userType: 'Management'),
  LoginModel(phoneNo: 9876543211, password: "123456", userType: 'Admin'),
  LoginModel(phoneNo: 9876543212, password: "123457", userType: 'Staff'),
  LoginModel(phoneNo: 9876543213, password: "123458", userType: 'Parent'),
  LoginModel(phoneNo: 9876543214, password: "123459", userType: 'Student'),
];

String role = "Parent";

class AppColors {
  static const Color primary = contentColorCyan;
  static const Color menuBackground = Color(0xFF090912);
  static const Color itemsBackground = Color(0xFF1B2339);
  static const Color pageBackground = Color(0xFF282E45);
  static const Color mainTextColor1 = Colors.white;
  static const Color mainTextColor2 = Colors.white70;
  static const Color mainTextColor3 = Colors.white38;
  static const Color mainGridLineColor = Colors.white10;
  static const Color borderColor = Colors.white54;
  static const Color gridLinesColor = Color(0x11FFFFFF);

  static const Color contentColorBlack = Colors.black;
  static const Color contentColorWhite = Colors.white;
  static const Color contentColorBlue = Color(0xFF2196F3);
  static const Color contentColorYellow = Color(0xFFFFC300);
  static const Color contentColorOrange = Color(0xFFFF683B);
  static const Color contentColorGreen = Color(0xFF3BFF49);
  static const Color contentColorPurple = Color(0xFF6E1BFF);
  static const Color contentColorPink = Color(0xFFFF3AF2);
  static const Color contentColorRed = Color(0xFFE80054);
  static const Color contentColorCyan = Color(0xFF50E4FF);
}
