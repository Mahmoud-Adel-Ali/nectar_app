import 'package:flutter/material.dart';
import 'package:nectar_app/core/utils/styless.dart';
import 'package:nectar_app/features/explore/presentation/views/category_view.dart';

class FindProductCard extends StatelessWidget {
  const FindProductCard({
    super.key,
    required this.color,
    required this.name,
    required this.imgPath,
    required this.borderSideColor,
  });
  final Color color;
  final Color borderSideColor;
  final String name;
  final String imgPath;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const CategoryView(),
          ),
        );
      },
      child: Card(
        elevation: 0.3,
        shape: RoundedRectangleBorder(
          side: BorderSide(width: 2, color: borderSideColor),
          borderRadius: BorderRadius.circular(12),
        ),
        color: color,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 10),
            Image.network(
              imgPath,
              height: 80,
            ),
            const SizedBox(height: 10),
            Text(
              name,
              textAlign: TextAlign.center,
              style: Styless.textStyle22bold,
            ),
          ],
        ),
      ),
    );
  }
}
