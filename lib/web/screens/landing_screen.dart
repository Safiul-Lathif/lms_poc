// ignore_for_file: library_private_types_in_public_api
import 'package:collapsible_sidebar/collapsible_sidebar.dart';
import 'package:flutter/material.dart';
import 'package:lms_poc/web/management/subject_managements.dart';
import 'package:lms_poc/web/pages/home_page.dart';
import 'package:lms_poc/web/pages/parent_home_page.dart';
import 'package:lms_poc/web/screens/extended_video_screen.dart';
import 'package:lms_poc/web/screens/login_screen.dart';
import 'package:lms_poc/utils/const.dart';

class LandingScreen extends StatefulWidget {
  const LandingScreen({super.key});

  @override
  _LandingScreenState createState() => _LandingScreenState();
}

class _LandingScreenState extends State<LandingScreen> {
  late List<CollapsibleItem> _items;
  late String _headline;
  final NetworkImage _avatarImg = const NetworkImage(
      "https://media.istockphoto.com/id/1327592506/vector/default-avatar-photo-placeholder-icon-grey-profile-picture-business-man.jpg?s=612x612&w=0&k=20&c=BpR0FVaEa5F24GIw7K8nMWiiGmbb8qmhfkpXcp1dhQg=");

  @override
  void initState() {
    super.initState();
    _items = _generateItems;
    _headline = _items.firstWhere((item) => item.isSelected).text;
  }

  List<CollapsibleItem> get _generateItems {
    return [
      CollapsibleItem(
        text: 'Home',
        icon: Icons.home_filled,
        onPressed: () => setState(() => _headline = 'Home'),
        onHold: () => ScaffoldMessenger.of(context)
            .showSnackBar(const SnackBar(content: Text("Home"))),
        isSelected: true,
      ),
      if (role == "Admin" || role == "Management") ...[
        CollapsibleItem(
            text: 'Manage Courses',
            icon: Icons.computer,
            onPressed: () => setState(() => _headline = 'Manage Courses'),
            onHold: () => ScaffoldMessenger.of(context)
                .showSnackBar(const SnackBar(content: Text("Manage Courses"))),
            subItems: [
              CollapsibleItem(
                text: 'Old Courses',
                icon: Icons.elderly,
                onPressed: () => setState(() => _headline = 'Old Courses'),
                onHold: () => ScaffoldMessenger.of(context)
                    .showSnackBar(const SnackBar(content: Text("Old Courses"))),
              ),
              CollapsibleItem(
                  text: 'Current Courses',
                  icon: Icons.yard_outlined,
                  onPressed: () =>
                      setState(() => _headline = 'Current Courses'),
                  onHold: () => ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text("Current Courses"))),
                  subItems: [
                    CollapsibleItem(
                      text: 'Courses 1',
                      icon: Icons.one_k,
                      onPressed: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ExtendedVideoScreen(
                              callback: () {
                                Navigator.pop(context);
                              },
                            ),
                          )),
                      onHold: () => ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text("Courses 1"))),
                    ),
                    CollapsibleItem(
                        text: 'Courses 2',
                        icon: Icons.two_k,
                        onPressed: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ExtendedVideoScreen(
                                callback: () {
                                  Navigator.pop(context);
                                },
                              ),
                            )),
                        onHold: () => ScaffoldMessenger.of(context)
                            .showSnackBar(
                                const SnackBar(content: Text("Courses 2"))),
                        subItems: [
                          CollapsibleItem(
                            text: 'Courses 2 Detail',
                            icon: Icons.two_k_outlined,
                            onPressed: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => ExtendedVideoScreen(
                                    callback: () {
                                      Navigator.pop(context);
                                    },
                                  ),
                                )),
                            onHold: () => ScaffoldMessenger.of(context)
                                .showSnackBar(const SnackBar(
                                    content: Text("Courses 2 Detail"))),
                          )
                        ]),
                    CollapsibleItem(
                      text: 'Courses 3',
                      icon: Icons.three_k,
                      onPressed: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ExtendedVideoScreen(
                              callback: () {
                                Navigator.pop(context);
                              },
                            ),
                          )),
                      onHold: () => ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text("Courses 3"))),
                    )
                  ]),
              CollapsibleItem(
                text: 'New Courses',
                icon: Icons.account_balance,
                onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Scaffold(
                        body: SubjectManagement(
                          callback: (value) {
                            Navigator.pop(context);
                          },
                          title: 'New Courses',
                        ),
                      ),
                    )),
                onHold: () => ScaffoldMessenger.of(context)
                    .showSnackBar(const SnackBar(content: Text("New Courses"))),
              ),
            ]),
        CollapsibleItem(
          text: 'Learning Path',
          icon: Icons.lan,
          onPressed: () => setState(() => _headline = 'Learning Path'),
          onHold: () => ScaffoldMessenger.of(context)
              .showSnackBar(const SnackBar(content: Text("Learning Path"))),
        ),
        CollapsibleItem(
          text: 'Notifications',
          icon: Icons.notifications,
          onPressed: () => setState(() => _headline = 'Notifications'),
          onHold: () => ScaffoldMessenger.of(context)
              .showSnackBar(const SnackBar(content: Text("Notifications"))),
        ),
        CollapsibleItem(
          text: 'Manage People',
          icon: Icons.group,
          onPressed: () => setState(() => _headline = 'Manage People'),
          onHold: () => ScaffoldMessenger.of(context)
              .showSnackBar(const SnackBar(content: Text("Manage People"))),
        ),
        CollapsibleItem(
            text: 'Get Reports',
            icon: Icons.auto_graph_sharp,
            onPressed: () => setState(() => _headline = 'Get Reports'),
            onHold: () => ScaffoldMessenger.of(context)
                .showSnackBar(const SnackBar(content: Text("Get Reports"))),
            subItems: [
              CollapsibleItem(
                text: 'Old Courses',
                icon: Icons.elderly,
                onPressed: () => setState(() => _headline = 'Old Courses'),
                onHold: () => ScaffoldMessenger.of(context)
                    .showSnackBar(const SnackBar(content: Text("Old Courses"))),
              ),
              CollapsibleItem(
                  text: 'Current Courses',
                  icon: Icons.yard_outlined,
                  onPressed: () =>
                      setState(() => _headline = 'Current Courses'),
                  onHold: () => ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text("Current Courses"))),
                  subItems: [
                    CollapsibleItem(
                      text: 'Courses 1',
                      icon: Icons.one_k,
                      onPressed: () => setState(() => _headline = 'Courses 1'),
                      onHold: () => ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text("Courses 1"))),
                    ),
                    CollapsibleItem(
                        text: 'Courses 2',
                        icon: Icons.two_k,
                        onPressed: () =>
                            setState(() => _headline = 'Courses 2'),
                        onHold: () => ScaffoldMessenger.of(context)
                            .showSnackBar(
                                const SnackBar(content: Text("Courses 2"))),
                        subItems: [
                          CollapsibleItem(
                            text: 'Courses 2 Detail',
                            icon: Icons.two_k_outlined,
                            onPressed: () =>
                                setState(() => _headline = 'Courses 2 Detail'),
                            onHold: () => ScaffoldMessenger.of(context)
                                .showSnackBar(const SnackBar(
                                    content: Text("Courses 2 Detail"))),
                          )
                        ]),
                    CollapsibleItem(
                      text: 'Courses 3',
                      icon: Icons.three_k,
                      onPressed: () => setState(() => _headline = 'Courses 3'),
                      onHold: () => ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text("Courses 3"))),
                    )
                  ]),
              CollapsibleItem(
                text: 'New Courses',
                icon: Icons.account_balance,
                onPressed: () => setState(() => _headline = 'New Courses'),
                onHold: () => ScaffoldMessenger.of(context)
                    .showSnackBar(const SnackBar(content: Text("New Courses"))),
              ),
            ]),
        CollapsibleItem(
            text: 'Admin Quick Link',
            icon: Icons.auto_graph_sharp,
            onPressed: () => setState(() => _headline = 'Admin Quick Link'),
            onHold: () => ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text("Admin Quick Link"))),
            subItems: [
              CollapsibleItem(
                text: 'Old Courses',
                icon: Icons.elderly,
                onPressed: () => setState(() => _headline = 'Old Courses'),
                onHold: () => ScaffoldMessenger.of(context)
                    .showSnackBar(const SnackBar(content: Text("Old Courses"))),
              ),
              CollapsibleItem(
                  text: 'Current Courses',
                  icon: Icons.yard_outlined,
                  onPressed: () =>
                      setState(() => _headline = 'Current Courses'),
                  onHold: () => ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text("Current Courses"))),
                  subItems: [
                    CollapsibleItem(
                      text: 'Courses 1',
                      icon: Icons.one_k,
                      onPressed: () => setState(() => _headline = 'Courses 1'),
                      onHold: () => ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text("Courses 1"))),
                    ),
                    CollapsibleItem(
                        text: 'Courses 2',
                        icon: Icons.two_k,
                        onPressed: () =>
                            setState(() => _headline = 'Courses 2'),
                        onHold: () => ScaffoldMessenger.of(context)
                            .showSnackBar(
                                const SnackBar(content: Text("Courses 2"))),
                        subItems: [
                          CollapsibleItem(
                            text: 'Courses 2 Detail',
                            icon: Icons.two_k_outlined,
                            onPressed: () =>
                                setState(() => _headline = 'Courses 2 Detail'),
                            onHold: () => ScaffoldMessenger.of(context)
                                .showSnackBar(const SnackBar(
                                    content: Text("Courses 2 Detail"))),
                          )
                        ]),
                    CollapsibleItem(
                      text: 'Courses 3',
                      icon: Icons.three_k,
                      onPressed: () => setState(() => _headline = 'Courses 3'),
                      onHold: () => ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text("Courses 3"))),
                    )
                  ]),
              CollapsibleItem(
                text: 'New Courses',
                icon: Icons.account_balance,
                onPressed: () => setState(() => _headline = 'New Courses'),
                onHold: () => ScaffoldMessenger.of(context)
                    .showSnackBar(const SnackBar(content: Text("New Courses"))),
              ),
            ]),
        CollapsibleItem(
          text: 'Multi-Tenant',
          icon: Icons.lan_sharp,
          onPressed: () => setState(() => _headline = 'Multi-Tenant'),
          onHold: () => ScaffoldMessenger.of(context)
              .showSnackBar(const SnackBar(content: Text("Multi-Tenant"))),
        ),
      ],
      CollapsibleItem(
        text: 'Logout',
        icon: Icons.logout,
        onPressed: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const LoginPage(),
            )),
        onHold: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const LoginPage(),
            )),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    isMobile = MediaQuery.of(context).size.width < 900;

    return Scaffold(
      body: Container(
        color: const Color.fromARGB(255, 244, 247, 248),
        child: SafeArea(
          child: Row(
            children: [
              if (!isMobile)
                CollapsibleSidebar(
                  isCollapsed: MediaQuery.of(context).size.width <= 800,
                  items: _items,
                  collapseOnBodyTap: false,
                  onHoverPointer: MaterialStateMouseCursor.clickable,
                  avatarImg: _avatarImg,
                  title: 'Safiul Lathif',
                  onTitleTap: () {
                    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                        content: Text('Yay! Flutter Collapsible Sidebar!')));
                  },
                  body: Container(),
                  backgroundColor: Colors.black,
                  selectedTextColor: Colors.white,
                  selectedIconColor: Colors.white,
                  toggleTitle: "",
                  iconSize: 30,
                  customItemOffsetX: -10,
                  textStyle: const TextStyle(
                    fontSize: 15,
                  ),
                  sidebarBoxShadow: const [BoxShadow(offset: Offset.zero)],
                  titleStyle: const TextStyle(
                      fontSize: 20, fontWeight: FontWeight.bold),
                  toggleTitleStyle: const TextStyle(
                      fontSize: 20, fontWeight: FontWeight.bold),
                ),
              Expanded(child: Builder(builder: (context) {
                switch (role) {
                  case 'Admin':
                    return const HomePage();
                  case 'Management':
                    return const HomePage();
                  case 'Staff':
                    return const HomePage();
                  case 'Parent':
                    return const ParentHomePage();
                  case 'Student':
                    return const ParentHomePage();
                  default:
                    return Container();
                }
              }))
            ],
          ),
        ),
      ),
    );
  }
}
