import 'package:flutter/material.dart';
import 'package:nectar_app/features/home/presentation/widgets/custom_expantion_panal.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const CustomExpansionPanel(
      title: 'Product Detail',
      subtitle:
          'Apples are nutritious. Apples may be good for weight loss. apples may be good for your heart. As part of a healtful and varied diet.',
      trailing: Text(''),
    );
  }
}
