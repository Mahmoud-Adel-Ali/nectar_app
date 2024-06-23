import 'package:flutter/material.dart';
import 'package:nectar_app/core/utils/styless.dart';

class CustomShowAllListTile extends StatefulWidget {
  const CustomShowAllListTile(
      {super.key, required this.title, required this.subtitle});
  final String title;
  final String subtitle;
  // final Widget? child;
  @override
  State<CustomShowAllListTile> createState() => _CustomShowAllListTileState();
}

class _CustomShowAllListTileState extends State<CustomShowAllListTile> {
  bool showAll = false;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      title: Padding(
        padding: const EdgeInsets.only(left: 8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              widget.title,
              style: Styless.textStyle16.copyWith(
                color: const Color(0xff181725),
              ),
            ),
            IconButton(
              icon: Icon(
                showAll
                    ? Icons.keyboard_arrow_down_sharp
                    : Icons.keyboard_arrow_right_sharp,
              ),
              onPressed: () {
                showAll = !showAll;
                setState(() {});
              },
            ),
          ],
        ),
      ),
      subtitle: showAll
          ? Text(
              widget.subtitle,
              style: Styless.textStyle12,
            )
          : const Text(''),
    );
  }
}
