import 'package:flutter/material.dart';
import 'package:responsive_design_assignment/utils/custom_color.dart';
import 'package:responsive_design_assignment/utils/custom_text.dart';

class TabletScreen extends StatefulWidget {
  const TabletScreen({super.key});

  @override
  State<TabletScreen> createState() => _DesktopScreenState();
}

class _DesktopScreenState extends State<TabletScreen> {
  @override
  Widget build(BuildContext context) {
    final currentwidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                HeadingThree(
                    data: "K O F F E E\n C O D E",
                    fontWeight: FontWeight.bold,
                    textColor: AppColor.primaryColor),
                Row(
                  children: [
                    HeadingThree(data: "Home", fontWeight: FontWeight.bold),
                    const SizedBox(
                      width: 20,
                    ),
                    HeadingThree(data: "Contact", fontWeight: FontWeight.bold)
                  ],
                )
              ],
            ),
            const Spacer(),
            HeadingOne(
                data: "FLUTTER WEB.\nTHE BASICS", fontWeight: FontWeight.bold),
            SizedBox(
              height: 10,
            ),
            Text(
              textAlign: TextAlign.justify,
              "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. ",
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Container(
              height: 60,
              width: MediaQuery.of(context).size.width / 2.5,
              decoration: BoxDecoration(
                  color: AppColor.primaryColor,
                  borderRadius: BorderRadius.circular(15)),
              child: Center(
                  child:
                      HeadingThree(data: "Join Now", textColor: Colors.white)),
            ),
            const Spacer(
              flex: 1,
            )
          ],
        ),
      ),
    );
  }
}
