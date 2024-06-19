import 'package:flutter/material.dart';
import 'package:nectar_app/core/app/app_images.dart';
import 'package:nectar_app/features/home/presentation/widgets/custom_search_field.dart';
import 'package:nectar_app/features/home/presentation/widgets/custom_sliver_appbar.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        CustomSliverAppBar(
          title: Image.asset(AppImages.carrot, height: 30),
        ),
        const CustomSearchField(),
        SliverList.builder(
          itemCount: 50,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(index.toString()),
            );
          },
        )
      ],
    );
  }
}
