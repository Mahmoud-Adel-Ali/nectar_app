import 'package:flutter/material.dart';
import 'package:nectar_app/core/app/app_colors.dart';
import 'package:nectar_app/core/utils/styless.dart';

class AddProductAndPrice extends StatefulWidget {
  const AddProductAndPrice({super.key, required this.price});
  final num price;
  @override
  State<AddProductAndPrice> createState() => _AddProductAndPriceState();
}

class _AddProductAndPriceState extends State<AddProductAndPrice> {
  int selectedPoduct = 0;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            GestureDetector(
              onTap: () {
                if (selectedPoduct > 0) {
                  setState(() {});
                  selectedPoduct--;
                }
              },
              child: const CircleAvatar(
                backgroundColor: Colors.transparent,
                child: Icon(Icons.horizontal_rule),
              ),
            ),
            const SizedBox(width: 10),
            Container(
              width: 50,
              height: 50,
              alignment: Alignment.center,
              padding:
                  const EdgeInsets.only(top: 5, bottom: 5, right: 12, left: 12),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.grey, width: 1),
                color: const Color(0xffE2E2E2),
              ),
              child: FittedBox(
                child: Text(
                  selectedPoduct.toString(),
                  style: Styless.textStyle18,
                ),
              ),
            ),
            const SizedBox(width: 10),
            GestureDetector(
              onTap: () {
                setState(() {});
                selectedPoduct++;
              },
              child: const CircleAvatar(
                backgroundColor: Colors.transparent,
                child: Icon(
                  Icons.add,
                  color: AppColors.mainColor,
                ),
              ),
            ),
          ],
        ),
        Text(
          '\$${widget.price.toString()}',
          style: Styless.textStyle24Bold,
        )
      ],
    );
  }
}
