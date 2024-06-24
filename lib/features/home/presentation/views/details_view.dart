import 'package:flutter/material.dart';
import 'package:nectar_app/features/home/data/models/product_model.dart';
import 'package:nectar_app/features/home/presentation/widgets/details_view_body.dart';

class DetailsView extends StatelessWidget {
  const DetailsView({super.key, required this.productModel});
  final ProductModel productModel;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DetailsViewBody(productModel: productModel),
    );
  }
}
