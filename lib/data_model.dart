import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Title {
  final String text;

  
  Title({
    required this.text,
  
    
  });
}
List<IconData> _icons = [ 
// The underscore declares a variable as private in dart.

FontAwesomeIcons.userShield,
FontAwesomeIcons.clockRotateLeft,
FontAwesomeIcons.circleQuestion,
FontAwesomeIcons.gear,
FontAwesomeIcons.userPlus,
FontAwesomeIcons.arrowRightFromBracket
];
List<Title> userlist = [
  Title(text: "Privacy"),
  Title(text: "Purchase History",),
  Title(text: "Help & Support"),
  Title(text: "Settings",),
  Title(text: "Invite a Friend",),
  Title(text: "Logout",),
];
//"FontAwesomeIcons.user-shield" clock-rotate-left circle-question gear user-plus arrow-right-from-bracket
