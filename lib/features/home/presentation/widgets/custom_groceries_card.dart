import 'package:flutter/material.dart';
import 'package:nectar_app/core/utils/styless.dart';

class CustomGroceriesCard extends StatelessWidget {
  const CustomGroceriesCard(
      {super.key,
      required this.color,
      required this.imgPath,
      required this.text});
  final String imgPath;
  final String text;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.2,
      child: Card(
        color: color,
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Image.network(imgPath),
            ),
            Text(text, style: Styless.textStyle20)
          ],
        ),
      ),
    );
  }
}
