import 'package:flutter/material.dart';
import 'package:nectar_app/features/home/presentation/widgets/details_image.dart';
import 'package:nectar_app/features/home/presentation/widgets/product_name.dart';

class DetailsViewBody extends StatelessWidget {
  const DetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: <Widget>[
        DetailsImage(
          imgPath:
              'https://s3-alpha-sig.figma.com/img/3834/f4b9/c7c2628935f610ab8527d0b21e102632?Expires=1719792000&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=gQOQbg0KD1XAmM9jif8fYP1J7dTjC6qJNxD~c3IdfTfYdFF61bIuCKO7XIKK6Lu8NwtMWoYp5ow~m4jCZykevhPHQGDPrbWfSdq~g1lD3M-GFkVx~Ef5hhoMrATQxVNv5dkkYauoebJkwFf~ycNEGGapyS9VU2h42U8woPIx0rYUkf8HPmr9cqq4U1-iDszZGvfhjD~fMRrtLEFD95LGyGK0fLSO-ipfVDHqqINMAR0o61KJTWCL4cds8-8CRaj1wDbPo3Z6vU3gfWxI6Nc4NrHXRcmUQL483ML54cCGBtTepnWfAH4J8S5IdLvaGzBJscr7ZpO1~xtuZLIij18Nfg__',
        ),
        ProductName(title: 'Naturel Red Apple', subtitle: '1kg, Price')
      ],
    );
  }
}

