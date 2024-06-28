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
            itemCount: 4,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return CustomGroceriesCard(
                color: Colors.pinkAccent.shade100.withOpacity(0.4),
                imgPath:
                    'https://s3-alpha-sig.figma.com/img/1c21/02c3/a571eb7f6999e7478d3a0def185b7b25?Expires=1719792000&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=MyASF2xKlv5uA2TlFBM5aFRrvMAilE9R5sNGPWZqYpeMupmiO61XwcUeEeLY2Fy6~oG84J9d~R~t24~0q7nKMuRVBSdbSWa~wTF~QvFeblHFR6vNksl1y~Z1oQyxH5L3~AozjaIYrth6y26zNXgVaO0yqZJbkSWRkMJlSA2PcwFXX6knNC6s~tM1x3HM6LY4A9boU6KE9Rs9VfKe5rlzdFoAXiLEwrWzmzaitsLClIMeEEwJ5O5C4YobM0xH8atfvdK77n7qJVm-I7CbOUvgmSdn--4DOGR4A9gIQbb7dAPUVIuAgGEwaq9HSE8xXf94AWQU631eQLAh2xdJDVjW6Q__',
                text: 'Pulses',
              );
            },
          ),
        ),
        const CustomProductListView(),
      ],
    );
  }
}
