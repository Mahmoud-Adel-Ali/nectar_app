import 'package:flutter/material.dart';
import 'package:nectar_app/core/utils/styless.dart';
import 'package:nectar_app/features/explore/presentation/widgets/find_product_card.dart';
import 'package:nectar_app/features/home/presentation/widgets/custom_search_field.dart';
import 'package:nectar_app/features/home/presentation/widgets/custom_sliver_appbar.dart';

class ExploreViewBody extends StatelessWidget {
  const ExploreViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        CustomSliverAppBar(
            title: Text(
          'Find Products',
          style: Styless.textStyle20,
        )),
        CustomSearchField(),
        SliverToBoxAdapter(child: SizedBox(height: 32)),
        FindProductCard(
          color: Color(0xffF7A593),
          name: 'Frash Fruits',
          imgPath:
              'https://s3-alpha-sig.figma.com/img/ca51/c56f/c6c319bfab3990da934ed0eb9c5ae3e7?Expires=1719792000&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=PV~73mxGo-hClodfYGo2S60m-~r1tC1d3lJn9u2mmRJhZ2Q8DfvtJzDCcmwXKs5-6-LdITqEsL2e1cILn3cYnbkW8772q76EVzjNEAJ~QN-calZub0686bHX4XIXkFQQRj3GgYZ2~cqLhX6mTwQjPsQo0AVWa828gpsUWJ3ISewIliV9Z6d4yY0iW9EzE9m1dX8jtqCGsiehWXYaqrpg9rsdRrHwH~1W--MyTsyC3UbsS12erPfnRJPrmjHKdmYRRF6pd-GPypcol2G7DBtwq7dWmW8xr6kvzUc-9xBd9hOyxVeTwkanSJDx6bQ4NjRIJTBACXBqSme37biDat5PRQ__',
        ),
      ],
    );
  }
}
