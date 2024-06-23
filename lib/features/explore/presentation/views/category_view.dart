import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nectar_app/core/app/app_images.dart';
import 'package:nectar_app/core/utils/styless.dart';
import 'package:nectar_app/features/explore/presentation/widgets/category_view_body.dart';

class CategoryView extends StatelessWidget {
  const CategoryView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(Icons.arrow_back_ios),
        ),
        title: const Text('Category',style:Styless.textStyle22bold ,),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right:12.0),
            child: SvgPicture.asset(AppImages.categoryAction),
          ),
        ],
      ),
      body: const CategoryViewBody(),
    );
  }
}
