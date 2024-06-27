import 'package:flutter/material.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
        child: Divider(thickness: 1, color: Color(0xffE2E2E2)));
  }
}
