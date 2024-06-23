import 'package:flutter/material.dart';
import 'package:nectar_app/features/home/presentation/widgets/add_product_and_price.dart';
import 'package:nectar_app/features/home/presentation/widgets/custom_show_all_list_tile.dart';
import 'package:nectar_app/features/home/presentation/widgets/details_image.dart';
import 'package:nectar_app/features/home/presentation/widgets/product_name.dart';

class DetailsViewBody extends StatelessWidget {
  const DetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: <Widget>[
          DetailsImage(
            imgPath:
                'https://s3-alpha-sig.figma.com/img/3834/f4b9/c7c2628935f610ab8527d0b21e102632?Expires=1719792000&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=gQOQbg0KD1XAmM9jif8fYP1J7dTjC6qJNxD~c3IdfTfYdFF61bIuCKO7XIKK6Lu8NwtMWoYp5ow~m4jCZykevhPHQGDPrbWfSdq~g1lD3M-GFkVx~Ef5hhoMrATQxVNv5dkkYauoebJkwFf~ycNEGGapyS9VU2h42U8woPIx0rYUkf8HPmr9cqq4U1-iDszZGvfhjD~fMRrtLEFD95LGyGK0fLSO-ipfVDHqqINMAR0o61KJTWCL4cds8-8CRaj1wDbPo3Z6vU3gfWxI6Nc4NrHXRcmUQL483ML54cCGBtTepnWfAH4J8S5IdLvaGzBJscr7ZpO1~xtuZLIij18Nfg__',
          ),
          Padding(
            padding: EdgeInsets.all(18.0),
            child: Column(
              children: [
                ProductName(
                    title: 'Naturel Red Apple', subtitle: '1kg, Price'),
                SizedBox(height: 20),
                AddProductAndPrice(),
                SizedBox(height: 20),
                SizedBox(
                    child: Divider(thickness: 1, color: Color(0xffE2E2E2))),
                CustomShowAllListTile(
                  title: 'Product Detail',
                  subtitle:
                      'Apples are nutritious. Apples may be good for weight loss. apples may be good for your heart. As part of a healtful and varied diet.',
                ),
                SizedBox(
                    child: Divider(thickness: 1, color: Color(0xffE2E2E2))),
                CustomShowAllListTile(
                  title: 'Nutritions',
                  subtitle: 'Nutritions......................',
                ),
                SizedBox(
                    child: Divider(thickness: 1, color: Color(0xffE2E2E2))),
                CustomShowAllListTile(
                  title: 'Review',
                  subtitle: 'Review.....................',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
