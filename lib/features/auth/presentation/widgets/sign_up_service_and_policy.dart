import 'package:flutter/material.dart';

import '../../../../core/app/app_colors.dart';
import '../../../../core/utils/styless.dart';

class SignUpServiceAndPolicy extends StatelessWidget {
  const SignUpServiceAndPolicy({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: MediaQuery.sizeOf(context).height * 0.1,
      child: FittedBox(
        fit: BoxFit.scaleDown,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                const Text(
                  'By continuing you agree to our ',
                  style: Styless.textStyle14,
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    ' Terms of Service ',
                    style: Styless.textStyle16
                        .copyWith(color: AppColors.mainColor),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                const Text(
                  'and',
                  style: Styless.textStyle14,
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    ' Privacy Policy.',
                    style: Styless.textStyle16
                        .copyWith(color: AppColors.mainColor),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
