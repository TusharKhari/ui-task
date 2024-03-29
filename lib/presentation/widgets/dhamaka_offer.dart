import 'package:flutter/material.dart';

import '../../core/app_colors.dart';
import '../../core/app_styles.dart';

class DhamakaOffer extends StatelessWidget {
  const DhamakaOffer({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsetsDirectional.symmetric(horizontal: 16),
        padding: const EdgeInsetsDirectional.only(top: 24, start: 24),
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
                  const Text(
                    "Double Dhamaka Offer!",
                    style: AppStyles.avenir18800,
                  ),
                  const Text(""),
                  Text(
                    "Accept payment on Google Pay for Business QR to win weekly cashbacks!",
                    style: AppStyles.avenir14500
                        .copyWith(color: const Color(0xffADADAD)),
                  ),
                  Text(
                    "Check Out!\n",
                    style: AppStyles.avenir14800
                        .copyWith(color: AppColors.darkPrimary),
                  ),
                ],
              ),
            )
            //
            ,
            Positioned(
              left: size.width*0.45 ,
              bottom: 0,
              child: Align(
              
                  alignment: Alignment.bottomRight,
                  child: Image.asset("assets/flag.png")),
            ),
          ],
        ));
  }
}
