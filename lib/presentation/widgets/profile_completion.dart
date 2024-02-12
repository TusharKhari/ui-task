// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';

import '../../core/app_colors.dart';
import '../../core/app_styles.dart';

class ProfileCompletionWidget extends StatelessWidget {
  const ProfileCompletionWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsetsDirectional.symmetric(horizontal: 16),
      padding:
          const EdgeInsetsDirectional.symmetric(horizontal: 16, vertical: 14),
      width: double.maxFinite,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: AppColors.grey, width: 1)),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                padding: EdgeInsets.all(3),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(width: 7, color: AppColors.darkGreen)),
                child: Center(child: Text("😀")),
              ),
              SizedBox(
                width: 10,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "100% Profile Completed!",
                    style: AppStyles.avenir18800,
                  ),
                  Text(
                    "5 of 5 tasks complete",
                    style: AppStyles.avenir14500,
                  )
                ],
              )
            ],
          ),

          //
          Text(
            "\nUse this personalized guide to get your coaching centre up and running!",
            style: AppStyles.avenir14500,
          ),
          //
          TickMarks(
            title: "Add your first course details",
          ),
          TickMarks(
            title: "Customize your institute details",
          ),
          TickMarks(
            title: "Upload your first video",
          ),
          TickMarks(
            title: "Add popular hastags",
          ),
          TickMarks(
            title: "Become Ostello Verified",
          ),
          //
          SizedBox(
            height: 20,
          ),
          Container(
            width: double.maxFinite,
            padding: EdgeInsets.symmetric(vertical: 15),
            decoration: BoxDecoration(
                color: AppColors.lightGreen,
                borderRadius: BorderRadius.circular(10)),
            child: Center(
              child: Text(
                "You’re all set!",
                style: AppStyles.avenir14500.copyWith(
                    fontWeight: FontWeight.w600, color: AppColors.darkGreen),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class TickMarks extends StatelessWidget {
  final String title;
  const TickMarks({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 15,
        ),
        Row(
          children: [
            Icon(
              Icons.check_circle,
              color: AppColors.darkPrimary,
              size: 35,
            ),
            SizedBox(
              width: 10,
            ),
            Text(title),
            Spacer(),
            Icon(
              Icons.arrow_forward_ios,
              size: 20,
              color: Color(0xffA9A9A9),
            ),
          ],
        ),
        SizedBox(
          height: 5,
        ),
        Divider(
          height: 2,
          color: AppColors.grey,
        )
      ],
    );
  }
}
