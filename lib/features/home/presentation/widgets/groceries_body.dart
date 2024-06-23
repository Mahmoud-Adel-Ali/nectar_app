import 'package:flutter/material.dart';
import 'package:nectar_app/core/app/app_colors.dart';
import 'package:nectar_app/core/utils/styless.dart';
import 'package:nectar_app/features/home/data/models/product_model.dart';
import 'package:nectar_app/features/home/presentation/widgets/custom_groceries_card.dart';
import 'package:nectar_app/features/home/presentation/widgets/custom_product_card.dart';

class GroceriesBody extends StatefulWidget {
  const GroceriesBody({super.key});

  @override
  State<GroceriesBody> createState() => _GroceriesBodyState();
}

class _GroceriesBodyState extends State<GroceriesBody> {
  bool seeAll = false;
  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Column(
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
                  onPressed: () {
                    seeAll = !seeAll;
                    setState(() {});
                  },
                  child: Text(
                    seeAll ? 'close' : "see all",
                    style: Styless.textStyle16
                        .copyWith(color: AppColors.mainColor),
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
          SizedBox(
            child: GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: seeAll ? 10 : 4,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 0.8,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
              ),
              itemBuilder: (context, index) => CustomProductCard(
                productModel: ProductModel(
                  id: 1,
                  imgPath:
                      'https://s3-alpha-sig.figma.com/img/8590/b6a4/4c4e9d58d8f6ba361a423878cbabe793?Expires=1719792000&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=P6A2oMxoKXZgGxaIQNUqMnCTBs56xzpd7RzlE5zfs0LyOHPDJHhjLKoqBPCdyfn~L0IhUwajvQhqpmqHaIMzKL~3GnmQRNogqBFA-4vTaeRS8LQGFbEnH1fCCFHi0UTCykXnsaiBjN2cMMrgo3ISEYyadCH7EgXE9MpN~PQz-WvAIUUeu9l-FAjwbLdoZcHUjFVa~hJWBehP5Zb5mLxBPZnHa7Snmc4dc40zr27X8QZyRWspNSMbcE6ZTQ-9BxhjxVS6CaPSNR0FLSnMjm-SgNOnfiG~X9wWKAcvWKDl9ZYIl8SMPV6Zk033q6Q1q5goKjR4nF-MjhjBHP0VGvqfkw__',
                  name: 'Beef Bone',
                  description: '1kg, Priceg',
                  price: 4.99,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
