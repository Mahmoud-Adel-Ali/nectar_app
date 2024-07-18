import 'package:flutter/material.dart';
import 'package:nectar_app/core/app/app_colors.dart';
import 'package:nectar_app/core/common/widgets/custom_buttom.dart';
import 'package:nectar_app/core/utils/styless.dart';
import 'package:nectar_app/features/cart/presentation/widgets/cart_item.dart';
import 'package:nectar_app/features/cart/presentation/widgets/checkout_bottom_sheet.dart';
import 'package:nectar_app/test_products_list.dart';

class CartViewBody extends StatelessWidget {
  const CartViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          const Divider(color: Color(0xffE2E2E2), thickness: 1),
          Expanded(
            child: ListView.builder(
              itemCount: textProductsList.length,
              itemBuilder: (context, index) {
                return CartItem(item: textProductsList[index]);
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 24, right: 24, bottom: 16),
            child: CustomButtom(
                onPressed: () {
                  checkoutBottomSheet(context);
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Expanded(flex: 4, child: SizedBox(width: 25)),
                    Text(
                      'Go to Checkout',
                      style: Styless.textStyle16.copyWith(
                        color: AppColors.scaffoldBackground,
                      ),
                    ),
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
