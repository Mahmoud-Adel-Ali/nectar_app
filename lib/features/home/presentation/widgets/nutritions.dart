import 'package:flutter/material.dart';
import 'package:nectar_app/core/utils/styless.dart';
import 'package:nectar_app/features/home/presentation/widgets/custom_expantion_panal.dart';

class Nutritions extends StatelessWidget {
  const Nutritions({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomExpansionPanel(
      title: 'Nutritions',
      subtitle: 'Nutritions......................',
      trailing: Container(
        padding:
            const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
        decoration: BoxDecoration(
          color: const Color(0xffEBEBEB),
          borderRadius: BorderRadius.circular(5),
        ),
        child: Text(
          '100gr',
          style: Styless.textStyle12.copyWith(
              fontSize: 12, color: const Color(0xff7c7c7c)),
        ),
      ),
    );
  }
}
