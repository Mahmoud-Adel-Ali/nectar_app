import 'package:flutter/material.dart';
import 'package:nectar_app/core/utils/styless.dart';

class FindProductCard extends StatelessWidget {
  const FindProductCard({
    super.key,
    required this.color,
    required this.name,
    required this.imgPath,
  });
  final Color color;
  final String name;
  final String imgPath;
  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: GestureDetector(
        onTap: (){},
        child: Card(
          elevation: 0.3,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          color: color,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 10),
              Image.network(imgPath,height: 80,),
              const SizedBox(height: 10),
              Text(
                name,
                textAlign: TextAlign.center,
                style: Styless.textStyle22bold,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
