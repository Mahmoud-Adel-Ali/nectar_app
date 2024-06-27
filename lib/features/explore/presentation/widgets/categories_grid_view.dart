import 'package:flutter/material.dart';
import 'package:nectar_app/features/explore/presentation/widgets/find_product_card.dart';

class CategoriesGridView extends StatelessWidget {
  const CategoriesGridView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: EdgeInsets.zero,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: 10,
      gridDelegate:
          const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 0.9227,
        crossAxisSpacing: 5,
        mainAxisSpacing: 5,
      ),
      itemBuilder: (context, index) => const FindProductCard(
        color: Color(0xffFDE598),
        name: 'Frash Fruits',
        imgPath:
            'https://s3-alpha-sig.figma.com/img/ca51/c56f/c6c319bfab3990da934ed0eb9c5ae3e7?Expires=1719792000&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=PV~73mxGo-hClodfYGo2S60m-~r1tC1d3lJn9u2mmRJhZ2Q8DfvtJzDCcmwXKs5-6-LdITqEsL2e1cILn3cYnbkW8772q76EVzjNEAJ~QN-calZub0686bHX4XIXkFQQRj3GgYZ2~cqLhX6mTwQjPsQo0AVWa828gpsUWJ3ISewIliV9Z6d4yY0iW9EzE9m1dX8jtqCGsiehWXYaqrpg9rsdRrHwH~1W--MyTsyC3UbsS12erPfnRJPrmjHKdmYRRF6pd-GPypcol2G7DBtwq7dWmW8xr6kvzUc-9xBd9hOyxVeTwkanSJDx6bQ4NjRIJTBACXBqSme37biDat5PRQ__',
        borderSideColor: Color(0xffFDE500),
      ),
    );
  }
}
