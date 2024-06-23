import 'package:flutter/material.dart';
import 'package:nectar_app/features/home/presentation/widgets/details_image.dart';

class DetailsViewBody extends StatelessWidget {
  const DetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: <Widget>[
        DetailsImage(),
      ],
    );
  }
}
