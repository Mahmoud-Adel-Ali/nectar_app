import 'package:flutter/material.dart';
import 'package:nectar_app/features/home/data/models/product_model.dart';
import 'package:nectar_app/features/home/presentation/widgets/custom_product_card.dart';

class ExclusiveOfferBody extends StatelessWidget {
  const ExclusiveOfferBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: CustomProductCard(
        productModel: ProductModel(
          id: 1,
          imgPath:
              'https://s3-alpha-sig.figma.com/img/cdd4/9d63/a82af5cf4cfd7f408c9a57cd24bf47c9?Expires=1719792000&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=cEqKvaHH7jkQTFLxCun0pQOr4drMN8OMPlLtbwEAVRCVFVI0qVCpbyay4c0EouP2YrAg0aYFtGMibBGU1fqsBFbLeLGiFwQAjAViOU1P~9T-uZnon52O4g0PLDd9cGW4VoF6Dl99f7GBa~Rz4~ALWhJuMnsp2qdttjkcVYCoYQMlGCaSi-QC4GGsb6a1ISyT9gn2qTSCCYCHak-eL2O0pbjqyYAen~fC8~WVt-oLUT-pZ~AD5hTHuyc5IMWPLnPCJZK8kHnVYyjY8DrVgfpTTjbk3LsegpNnCu2uU2P2EsCB9KTnkMkoQ7xysNCdIHfbEu0-VN10DYY6FHF~B-IjZQ__',
          name: 'Organic Bananas',
          description: '7pcs, Priceg',
          price: 4.99,
        ),
      ),
    );
  }
}
