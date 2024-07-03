import 'package:flutter/material.dart';

class ErrorViewHeader extends StatelessWidget {
  const ErrorViewHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      alignment: Alignment.centerLeft,
      child: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(
            Icons.close,
          )),
    );
  }
}
