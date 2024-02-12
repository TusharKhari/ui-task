
import 'package:flutter/material.dart';

import '../../core/app_colors.dart';
import '../../core/app_styles.dart';

class AddInstituteCover extends StatelessWidget {
  const AddInstituteCover({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width*0.7,
      child: Column(
        children: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.add_circle_rounded,
                color: AppColors.darkPrimary,
                size: 35,
              )),
          const Text("Add Institute Cover     ", style: AppStyles.avenir16800),
          const Text(
            "Browse your Gallery or take a Picture from the phone Camera to upload",
            style: AppStyles.avenir14500,
          ),
        ],
      ),
    );
  }
}
