
import 'package:flutter/material.dart';

import '../../core/app_colors.dart';
import '../../core/app_styles.dart';

class AakashInstitute extends StatelessWidget {
  const AakashInstitute({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 40,
        ),
        Row(
          children: [
            Badge(
              backgroundColor: Colors.transparent,
              alignment: Alignment.bottomRight,
              offset: Offset.fromDirection(1, 9),
              largeSize: 40,
              label: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.add_circle_rounded,
                    color: AppColors.darkPrimary,
                    size: 35,
                  )),
              child: Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                    color: const Color(0xffF3F7FF),
                    borderRadius: BorderRadius.circular(10)),
                child: Image.asset("assets/shop.png"),
              ),
            ),
            const Spacer(),
            const Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  "Aakash Institute ",
                  style: AppStyles.avenir26500,
                ),
                Text("----------------"),
              ],
            ),
            const Spacer(),
          ],
        ),
      ],
    );
  }
}
