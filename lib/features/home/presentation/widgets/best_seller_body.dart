import 'package:flutter/material.dart';
import 'package:nectar_app/core/app/app_colors.dart';
import 'package:nectar_app/core/utils/styless.dart';
import 'package:nectar_app/features/home/data/models/product_model.dart';
import 'package:nectar_app/features/home/presentation/widgets/custom_product_card.dart';

class BestSellerBody extends StatefulWidget {
  const BestSellerBody({super.key});

  @override
  State<BestSellerBody> createState() => _BestSellerBodyState();
}

class _BestSellerBodyState extends State<BestSellerBody> {
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
                  'Best Selling',
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
                      'https://s3-alpha-sig.figma.com/img/3834/f4b9/c7c2628935f610ab8527d0b21e102632?Expires=1719792000&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=gQOQbg0KD1XAmM9jif8fYP1J7dTjC6qJNxD~c3IdfTfYdFF61bIuCKO7XIKK6Lu8NwtMWoYp5ow~m4jCZykevhPHQGDPrbWfSdq~g1lD3M-GFkVx~Ef5hhoMrATQxVNv5dkkYauoebJkwFf~ycNEGGapyS9VU2h42U8woPIx0rYUkf8HPmr9cqq4U1-iDszZGvfhjD~fMRrtLEFD95LGyGK0fLSO-ipfVDHqqINMAR0o61KJTWCL4cds8-8CRaj1wDbPo3Z6vU3gfWxI6Nc4NrHXRcmUQL483ML54cCGBtTepnWfAH4J8S5IdLvaGzBJscr7ZpO1~xtuZLIij18Nfg__',
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
