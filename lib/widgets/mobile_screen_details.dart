import 'package:flutter/material.dart';
import 'package:responsive_design_assignment/utils/custom_color.dart';
import 'package:responsive_design_assignment/utils/custom_text.dart';

class mobiledetailsscreen extends StatelessWidget {
  const mobiledetailsscreen({
    super.key,
    required this.currentwidth,
  });

  final double currentwidth;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Spacer(),
        HeadingOne(
            data: "FLUTTER WEB.\nTHE BASICS", fontWeight: FontWeight.bold),
        const SizedBox(
          height: 10,
        ),
        Text(
          textAlign: TextAlign.justify,
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
          style: TextStyle(fontSize: 18),
        ),
        const Spacer(
          flex: 2,
        ),
        Container(
          height: 60,
          width: MediaQuery.of(context).size.width / 1.5,
          decoration: BoxDecoration(
              color: AppColor.primaryColor,
              borderRadius: BorderRadius.circular(15)),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: HeadingThree(data: "Join Now", textColor: Colors.white),
            ),
          ),
        ),
        const Spacer(
          flex: 1,
        ),
      ],
    );
  }
}
