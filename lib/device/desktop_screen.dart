import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:responsive_design_assignment/utils/custom_color.dart';
import 'package:responsive_design_assignment/utils/custom_text.dart';

class DesktopScreen extends StatefulWidget {
  const DesktopScreen({super.key});

  @override
  State<DesktopScreen> createState() => _DesktopScreenState();
}

class _DesktopScreenState extends State<DesktopScreen> {
  @override
  Widget build(BuildContext context) {
    final currentwidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                HeadingOne(
                    data: "K O F F E E\n C O D E",
                    fontWeight: FontWeight.bold,
                    textColor: AppColor.primaryColor),
                Row(
                  children: [
                    HeadingThree(data: "Home", fontWeight: FontWeight.bold),
                    const SizedBox(
                      width: 20,
                    ),
                    HeadingThree(data: "Contact", fontWeight: FontWeight.bold),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 120,
            ),
            Row(
              children: [
                Container(
                  width: currentwidth / 1.6,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      HeadingOne(
                          data: "FLUTTER WEB.\nTHE BASICS",
                          fontWeight: FontWeight.bold),
                      const SizedBox(
                        height: 30,
                      ),
                      Text(
                        textAlign: TextAlign.justify,
                        "There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.",
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  width: 90,
                ),
                Container(
                  height: 60,
                  width: currentwidth / 5,
                  decoration: BoxDecoration(
                    color: AppColor.primaryColor,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Center(
                      child: HeadingThree(
                          data: "Join Now", textColor: Colors.white)),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
