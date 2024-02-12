import 'package:flutter/material.dart';

import '../../core/app_colors.dart';
import '../../core/app_styles.dart';

class VerifiedBadge extends StatelessWidget {
  const VerifiedBadge({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsetsDirectional.symmetric(horizontal: 10),
      padding: const EdgeInsetsDirectional.symmetric(horizontal: 10),
      width: double.maxFinite,
      decoration: BoxDecoration(
          color: AppColors.lightPrimary,
          borderRadius: BorderRadius.circular(5),
          border: Border.all(color: AppColors.darkPrimary, width: 1)),
      child: Column(
        children: [
          const Text("Become a Verified OstelloAI ",
              style: AppStyles.avenir18800),
          const Text("Institute!", style: AppStyles.avenir18800),
          const SizedBox(height: 20),
          const Text.rich(TextSpan(children: [
            TextSpan(text: "3500", style: AppStyles.avenir32900),
            TextSpan(text: "/year", style: AppStyles.avenir16500),
          ])),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              VerifyWallet(
                title: "2500",
                subtitle: "Charges to verify",
              ),
              VerifyWallet(
                title: "1000",
                subtitle: "In Your wallet",
              ),
            ],
          ),
          DotTextWidget(size: size),
          Container(
            width: double.maxFinite,
            padding: const EdgeInsets.symmetric(vertical: 15),
            margin: const EdgeInsets.symmetric(vertical: 15),
            decoration: const BoxDecoration(
                color: AppColors.darkPrimary,
                borderRadius: BorderRadius.all(Radius.circular(10))),
            child: Center(
              child: Text(
                "Subscribe to Ostello Now",
                style: AppStyles.avenir16800.copyWith(color: Colors.white),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class DotTextWidget extends StatelessWidget {
  const DotTextWidget({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 5,
          width: 5,
          margin: const EdgeInsets.only(top: 10, right: 10, left: 10),
          decoration: BoxDecoration(
              color: Colors.black, borderRadius: BorderRadius.circular(10)),
        ),
        SizedBox(
          width: size.width * 0.80,
          child: const Text(
              "Lorem Ipsum is simply dummy text of the printing and typesetting industry. "),
        ),
      ],
    );
  }
}

class VerifyWallet extends StatelessWidget {
  final String title;
  final String subtitle;
  const VerifyWallet({
    Key? key,
    required this.title,
    required this.subtitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        decoration: BoxDecoration(
          color: AppColors.middlePrimary,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          children: [
            Text(
              title,
              style: AppStyles.avenir18800
                  .copyWith(color: const Color(0xff0C0C0C)),
            ),
            Text(
              subtitle,
              style: AppStyles.avenir14400
                  .copyWith(color: const Color(0xff0C0C0C)),
            ),
          ],
        ));
  }
}
