import 'package:flutter/material.dart';
import 'package:nectar_app/core/app/app_colors.dart';
import 'package:nectar_app/core/utils/styless.dart';
import 'package:nectar_app/features/favorites/presentation/widgets/favorites_view_body.dart';


class FavoritesView extends StatelessWidget {
  const FavoritesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.scaffoldBackground,
        title: const Text('Favorurite', style: Styless.textStyle20bold),
        centerTitle: true,
        flexibleSpace: FlexibleSpaceBar(
          background: Container(color: AppColors.scaffoldBackground),
        ),
      ),
      body: const FavoritesViewBody(),
    );
  }
}
