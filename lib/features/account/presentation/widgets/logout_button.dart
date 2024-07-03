
import 'package:flutter/material.dart';
import 'package:nectar_app/core/app/app_colors.dart';
import 'package:nectar_app/core/common/widgets/custom_buttom.dart';
import 'package:nectar_app/core/utils/styless.dart';

class LogoutButton extends StatelessWidget {
  const LogoutButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: CustomButtom(
        onPressed: () {},
        color: const Color(0xffF2F3F2),
        textColor: AppColors.mainColor,
        child: Row(
          children: [
            const Icon(Icons.logout, size: 27),
            const Expanded(flex: 3, child: SizedBox()),
            Text(
              "Log Out",
              style: Styless.textStyle16.copyWith(
                color: AppColors.mainColor,
              ),
            ),
            const Expanded(flex: 4, child: SizedBox()),
          ],
        ),
      ),
    );
  }
}
