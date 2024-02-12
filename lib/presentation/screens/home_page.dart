// ignore_for_file: public_member_api_docs, sort_constructors_first, prefer_const_literals_to_create_immutables, prefer_const_constructors
import 'package:flutter/material.dart';

import 'package:dhamaka/core/app_colors.dart';
import 'package:dhamaka/core/app_styles.dart';

import '../widgets/aakash_institute.dart';
import '../widgets/add_institute_cover.dart';
import '../widgets/dhamaka_offer.dart';
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
              borderRadius: const BorderRadius.all(Radius.circular(20)),
              child: Column(
                children: [
                  Padding(
                    padding:   EdgeInsets.symmetric(horizontal: 16),
                    child: const AakashInstitute(),
                  ),
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
                  DhamakaOffer(size: size),
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
