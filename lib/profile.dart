import 'package:day_5_with_flutter/data_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  List<IconData> _icons = [
// The underscore declares a variable as private in dart.

    FontAwesomeIcons.userShield,
    FontAwesomeIcons.clockRotateLeft,
    FontAwesomeIcons.circleQuestion,
    FontAwesomeIcons.gear,
    FontAwesomeIcons.userPlus,
    FontAwesomeIcons.arrowRightFromBracket
  ];
  final lightColor = Colors.white;
  final darkColor = Colors.grey[900];
  bool isDark = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: isDark ? darkColor : lightColor,
      body: Container(
        width: double.infinity,
        height: double.infinity,
        margin: EdgeInsets.only(top: 30, right: 15, left: 15),
        child: ListView(
          scrollDirection: Axis.vertical,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  FontAwesomeIcons.arrowLeft,
                  color: isDark ? lightColor : darkColor,
                ),
                IconButton(
                  onPressed: () {
                    print(isDark);
                    setState(() {
                      isDark = !isDark;
                    });
                  },
                  icon: Icon(
                    isDark ? Icons.sunny : FontAwesomeIcons.solidMoon,
                    color: isDark ? lightColor : darkColor,
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Stack(
                  children: [
                    CircleAvatar(
                      radius: 60,
                      backgroundImage: AssetImage("assets/kk.jpg"),
                    ),
                    Positioned(
                      right: 2,
                      bottom: -1,
                      child: CircleAvatar(
                        radius: 14,
                        backgroundColor: Colors.amber,
                        child: IconButton(
                          color: Colors.black,
                          icon: Icon(
                            FontAwesomeIcons.pen,
                            size: 15,
                          ),
                          onPressed: () {},
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  "Kuvaan16",
                  style: TextStyle(
                    color: isDark ? lightColor : darkColor,
                    fontWeight: FontWeight.w600,
                    fontSize: 22,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "kuvaan16@gmail.com",
                  style: TextStyle(
                    color: isDark
                        ? Color.fromARGB(66, 255, 255, 255)
                        : Color.fromARGB(188, 35, 35, 35),
                    fontWeight: FontWeight.w400,
                    fontSize: 15,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      padding:
                          EdgeInsets.symmetric(horizontal: 40, vertical: 12),
                      foregroundColor: Color.fromARGB(155, 0, 0, 0),
                      backgroundColor: Colors.amber,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20))),
                  onPressed: () {},
                  child: Text(
                    "Upgrade to PRO",
                    style: TextStyle(letterSpacing: .4),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
            ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: userlist.length,
              itemBuilder: (BuildContext context, int index) {
                if (index == userlist.length - 1) {
                  return Center(
                    child: Container(
                      width: 350,
                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: isDark
                            ? Color.fromARGB(227, 55, 55, 55)
                            : Color.fromARGB(35, 150, 195, 251),
                        borderRadius: BorderRadius.circular(55),
                      ),
                      child: ListTile(
                        title: Container(
                          child: Row(
                            children: [
                              Icon(
                                _icons[index],
                                color: isDark
                                    ? Color.fromARGB(206, 255, 255, 255)
                                    : Color.fromARGB(188, 35, 35, 35),
                                size: 20,
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Text(
                                userlist[index].text,
                                style: TextStyle(
                                  color: isDark
                                      ? Color.fromARGB(206, 255, 255, 255)
                                      : Color.fromARGB(188, 35, 35, 35),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  );
                }
                return Center(
                  child: Container(
                    width: 350,
                    margin: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: isDark
                          ? Color.fromARGB(227, 55, 55, 55)
                          : Color.fromARGB(35, 150, 195, 251),
                      borderRadius: BorderRadius.circular(55),
                    ),
                    child: ListTile(
                        title: Container(
                          child: Row(
                            children: [
                              Icon(
                                _icons[index],
                                color: isDark
                                    ? Color.fromARGB(206, 255, 255, 255)
                                    : Color.fromARGB(188, 35, 35, 35),
                                size: 20,
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Text(
                                userlist[index].text,
                                style: TextStyle(
                                  color: isDark
                                      ? Color.fromARGB(206, 255, 255, 255)
                                      : Color.fromARGB(188, 35, 35, 35),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ],
                          ),
                        ),
                        trailing: Icon(
                          FontAwesomeIcons.angleRight,
                          color: isDark
                              ? Color.fromARGB(206, 255, 255, 255)
                              : Color.fromARGB(188, 35, 35, 35),
                        )),
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}

extension ColorExtension on String {
  toColor() {
    var hexString = this;
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}
