import 'package:flutter/material.dart';
import 'package:responsive_design_assignment/utils/custom_color.dart';
import 'package:responsive_design_assignment/utils/custom_text.dart';
import 'package:responsive_design_assignment/widgets/mobile_screen_details.dart';

class MobileScreen extends StatefulWidget {
  const MobileScreen({super.key});

  @override
  State<MobileScreen> createState() => _DesktopScreenState();
}

class _DesktopScreenState extends State<MobileScreen> {
  List<Map> drawerinfo = [
    {
      "image": "assets/images/man.png",
      "title": "Profile",
      "subtitle": "Change information and password"
    },
    {
      "image": "assets/images/download.png",
      "title": "Offline Content",
      "subtitle": "Saved Contents"
    },
    {
      "image": "assets/images/folder.png",
      "title": "Resource",
      "subtitle": "Class Resource Files and Attachments"
    },
    {
      "image": "assets/images/info.png",
      "title": "About Us",
      "subtitle": "FAQ, Terms etc"
    },
  ];

  @override
  Widget build(BuildContext context) {
    final currentwidth = MediaQuery.of(context).size.width;
    return Scaffold(
        appBar: AppBar(
          elevation: 1,
          backgroundColor: Colors.white,
          actions: const [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CircleAvatar(
                backgroundColor: Colors.grey,
              ),
            )
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
          child: mobiledetailsscreen(currentwidth: currentwidth),
        ),
        drawer: Drawer(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(10),
                height: 100,
                width: double.infinity,
                decoration: BoxDecoration(color: Color(0xff967259)),
                child: Text(
                  "K O F F E E \n C O D E",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              ListTile(
                leading: CircleAvatar(),
                title: Text("Demo"),
                subtitle: Text("Demo"),
              )
            ],
          ),
        ),
        backgroundColor: Colors.white);
  }
}
