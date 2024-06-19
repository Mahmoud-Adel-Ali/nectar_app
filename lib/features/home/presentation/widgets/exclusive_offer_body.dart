import 'package:flutter/material.dart';
import 'package:nectar_app/core/app/app_colors.dart';
import 'package:nectar_app/core/utils/styless.dart';
import 'package:nectar_app/features/home/data/models/product_model.dart';
import 'package:nectar_app/features/home/presentation/widgets/custom_product_card.dart';

class ExclusiveOfferBody extends StatefulWidget {
  const ExclusiveOfferBody({super.key});

  @override
  State<ExclusiveOfferBody> createState() => _ExclusiveOfferBodyState();
}

class _ExclusiveOfferBodyState extends State<ExclusiveOfferBody> {
  bool seeAll = false;
  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20, right: 18, left: 18),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Exclusive Offer',
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
                      'https://s3-alpha-sig.figma.com/img/cdd4/9d63/a82af5cf4cfd7f408c9a57cd24bf47c9?Expires=1719792000&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=cEqKvaHH7jkQTFLxCun0pQOr4drMN8OMPlLtbwEAVRCVFVI0qVCpbyay4c0EouP2YrAg0aYFtGMibBGU1fqsBFbLeLGiFwQAjAViOU1P~9T-uZnon52O4g0PLDd9cGW4VoF6Dl99f7GBa~Rz4~ALWhJuMnsp2qdttjkcVYCoYQMlGCaSi-QC4GGsb6a1ISyT9gn2qTSCCYCHak-eL2O0pbjqyYAen~fC8~WVt-oLUT-pZ~AD5hTHuyc5IMWPLnPCJZK8kHnVYyjY8DrVgfpTTjbk3LsegpNnCu2uU2P2EsCB9KTnkMkoQ7xysNCdIHfbEu0-VN10DYY6FHF~B-IjZQ__',
                  name: 'Organic Bananas',
                  description: '7pcs, Priceg',
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
