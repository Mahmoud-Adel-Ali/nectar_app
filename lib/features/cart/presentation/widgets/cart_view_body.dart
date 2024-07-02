import 'package:flutter/material.dart';
import 'package:nectar_app/core/common/widgets/custom_buttom.dart';
import 'package:nectar_app/core/utils/styless.dart';
import 'package:nectar_app/features/cart/presentation/widgets/cart_item.dart';
import 'package:nectar_app/test_products_list.dart';

class CartViewBody extends StatelessWidget {
  const CartViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: textProductsList.length,
              itemBuilder: (context, index) {
                return CartItem(item: textProductsList[index]);
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 24,right: 24, bottom: 16),
            child: CustomButtom(
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Expanded(flex: 4, child: SizedBox(width: 25)),
                    const Text('Go to Checkout', style: Styless.textStyle16),
                    const Expanded(flex: 3, child: SizedBox(width: 25)),
                    Container(
                      padding: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                      color: const Color(0xff489E67),
                      ),
                      child: Text('\$12.96',
                          style: Styless.textStyle12
                              .copyWith(color: const Color(0xffFCFCFC))),
                    ),
                  ],
                )),
          )
        ],
      ),
    );
  }
}
