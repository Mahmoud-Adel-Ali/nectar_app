import 'package:flutter/material.dart';
import 'package:nectar_app/core/utils/styless.dart';

class ProductName extends StatelessWidget {
  const ProductName({super.key, required this.title, required this.subtitle});
  final String title;
  final String subtitle;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      title: Text(
        title,
        style: Styless.textStyle24Bold,
      ),
      subtitle: Text(
        subtitle,
        style: Styless.textStyle16,
      ),
      trailing: IconButton(
          onPressed: () {}, icon: const Icon(Icons.favorite_outline_rounded)),
    );
  }
}
