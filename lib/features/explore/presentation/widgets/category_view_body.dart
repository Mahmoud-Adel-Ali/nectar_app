import 'package:flutter/material.dart';
import 'package:nectar_app/features/home/data/models/product_model.dart';
import 'package:nectar_app/features/home/presentation/widgets/custom_product_card.dart';

class CategoryViewBody extends StatelessWidget {
  const CategoryViewBody({super.key});
  
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 0.8,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
      ),
      itemCount: 10,
      itemBuilder: (context, index) {
        return CustomProductCard(
            productModel: ProductModel(
                id: 2,
                imgPath:
                    'https://s3-alpha-sig.figma.com/img/a650/1a3c/a88c17d9ec33d6b348ad9b9b3078ccfb?Expires=1719792000&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=AuMLG9WGckTL-W3XJLuIYWoJIw3PZogGVJvAOaEbz9cNTj6KD0InrlxpcGWfz~pS5xhfYHWGuGPRQVR99kZLQA5NrI-93BU7N56AQt2Bff9HIXKLll3~1yVzwRgpGm3N6Ux9xZaeIgPFIc4KpLpCG41ULru4QQdjQfN1d-NjeaOsqxbJF9Wria5UffWkQJb-Q3XufZhiEYE0734Ygy0pAVAr5VIt9hUBPjB4Xz0JeQDqz3hStV90VWfkZiZVC5GowJHofMEAziKRHxm3sc2PbAWr7Dt15zhjd4fAtCPQtKMf6xhFFmiqCaIu~edO~IT9CDOxYLrZ760CEt16sChA3A__',
                name: 'Coca Cola Can',
                description: '325ml, Price',
                price: 5.99));
      },
    );
  }
}
