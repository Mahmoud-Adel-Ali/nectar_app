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
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 0.9227,
        crossAxisSpacing: 5,
        mainAxisSpacing: 5,
      ),
      itemBuilder: (context, index) => const FindProductCard(
        color: Color(0xffFDE598),
        name: 'Frash Fruits',
        imgPath:
            'https://s3-alpha-sig.figma.com/img/6bc8/dddf/f5d852ef29933852ca183be51838587e?Expires=1721001600&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=EojtFB5WHNDh2WyHzp49lJrFArrEDSU~itxm6Ebzj9oW0O8q3AuAIaZrKd04xI9eOu04rhmnOkfcIUrxjISxI0SmGknG3c8TyBAJSvY9qBehXPpOThLXY07m2tv1kC~jVec20xcfyzfOgp21RMo6RCDGvs64fryRUxkhydXEdx1mzQjCp1EV263piyIZ1vqcAK2F-aaCyvVY71t61htBuED49bKZtb1VYVy3cUhMFsgIfkpIdjDUqN4mtwuntWqsSL16q9TYfepOctbELQMEGL5zrwf2rk-vczfyugR8n~oy0F7bN~6IjTeCdqT3vDRXGsuO56IIbVHXSr15R3-6tA__',
        borderSideColor: Color(0xffFDE500),
      ),
    );
  }
}
