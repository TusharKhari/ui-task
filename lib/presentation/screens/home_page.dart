// ignore_for_file: public_member_api_docs, sort_constructors_first, prefer_const_literals_to_create_immutables, prefer_const_constructors
import 'package:flutter/material.dart';

import 'package:dhamaka/core/app_colors.dart';
import 'package:dhamaka/core/app_styles.dart';

import '../widgets/aakash_institute.dart';
import '../widgets/add_institute_cover.dart';
import '../widgets/profile_completion.dart';
import '../widgets/verified_badge.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
          child: SafeArea(
        child: Column(
          children: [
            const AddInstituteCover(),
            const SizedBox(
              height: 40,
            ),
            Material(
              elevation: 7,
              color: Colors.white,
              borderRadius: const BorderRadius.all(Radius.circular(15)),
              child: Column(
                children: [
                  const AakashInstitute(),
                  const SizedBox(
                    height: 40,
                  ),
                  VerifiedBadge(size: size),
                  const SizedBox(
                    height: 40,
                  ),
                  ProfileCompletionWidget(),
                  const SizedBox(
                    height: 40,
                  ),
                  //
                  Container(
                      margin:
                          const EdgeInsetsDirectional.symmetric(horizontal: 16),
                      padding: const EdgeInsetsDirectional.symmetric(
                          horizontal: 16, vertical: 24),
                      width: double.maxFinite,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: AppColors.grey, width: 1)),
                      child: Stack(
                        // alignment: Alignment.bottomRight,
                        children: [
                          SizedBox(
                            width: size.width * 0.6,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Double Dhamaka Offer!",
                                  style: AppStyles.avenir18800,
                                ),
                                Text(""),
                                Text(
                                  "Accept payment on Google Pay for Business QR to win weekly cashbacks!",
                                  style: AppStyles.avenir14500
                                      .copyWith(color: Color(0xffADADAD)),
                                ),
                                Text(
                                  "Check Out!",
                                  style: AppStyles.avenir14800
                                      .copyWith(color: AppColors.darkPrimary),
                                )
                              ],
                            ),
                          )

                          //
                          ,
                          Align(
                              alignment: Alignment.bottomRight,
                              child: Image.asset("assets/flag.png")),
                        ],
                      )),
                  const SizedBox(
                    height: 40,
                  ),
                ],
              ),
            ),
          ],
        ),
      )),
    );
  }
}
