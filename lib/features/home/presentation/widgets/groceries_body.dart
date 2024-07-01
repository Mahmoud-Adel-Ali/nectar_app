import 'package:flutter/material.dart';
import 'package:nectar_app/core/app/app_colors.dart';
import 'package:nectar_app/core/utils/styless.dart';
import 'package:nectar_app/features/home/presentation/widgets/custom_groceries_card.dart';
import 'package:nectar_app/features/home/presentation/widgets/custom_products_list_view.dart';

class GroceriesBody extends StatelessWidget {
  const GroceriesBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 20, right: 18, left: 18),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Groceries',
                style: Styless.textStyle24,
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  "see all",
                  style:
                      Styless.textStyle16.copyWith(color: AppColors.mainColor),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 120,
          child: ListView.builder(
            padding: EdgeInsets.zero,
            itemCount: 5,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.only(left: index == 0 ? 16 : 0, right: 16),
                child: CustomGroceriesCard(
                  color: Colors.pinkAccent.shade100.withOpacity(0.4),
                  imgPath:
                      'https://s3-alpha-sig.figma.com/img/1c21/02c3/a571eb7f6999e7478d3a0def185b7b25?Expires=1721001600&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=pLW9~HFgkdEU4ZOjylDxEmWZWvgD~dn7gkx1Q0WpW3NrleIkuFChSl3qn93IkGwJnhkI0hOGAxCwfDZo9Y6ogBvLjh0GJGsm~QRM6E65jxIDFFHr4ReLk7vfrnJ3Fgl-feWSdSnZDJu~JIvfhlRjpzwA2Mp-jQ~iZgfQeUb6wGqvazetTn6a368E5bGLpIQCViRxPelswIkBj8xm77TmtRNvkHwY-WlFKWEqdf1r~JskqF21fQlkMX-uDOfcGfCcb82MdGSi3aUlF2a8cAo-uUpXdN8H-S~RQtVu4x4EyPJTmKogp9QchpHrxG3C052EMekAVytFrGZ4eUmJodzkCQ__',
                  text: 'Pulses',
                ),
              );
            },
          ),
        ),
        const CustomProductListView(),
      ],
    );
  }
}
