//custom_expantion_panal
import 'package:flutter/material.dart';
import 'package:nectar_app/core/app/app_colors.dart';
import 'package:nectar_app/core/utils/styless.dart';

class CustomExpansionPanel extends StatefulWidget {
  const CustomExpansionPanel(
      {super.key, required this.title, required this.subtitle, required this.trailing});
  final String title;
  final String subtitle;
  final Widget trailing;

  @override
  State<CustomExpansionPanel> createState() => _CustomExpansionPanelState();
}

class _CustomExpansionPanelState extends State<CustomExpansionPanel> {
  bool isOpen = false;

  @override
  Widget build(BuildContext context) {
    return ExpansionPanelList(
      elevation: 0,
      expandedHeaderPadding: const EdgeInsets.all(6),
      animationDuration: const Duration(milliseconds: 500),
      expansionCallback: (panelIndex, isExpanded) {
        setState(() {
          isOpen = !isOpen;
        });
      },
      children: [
        ExpansionPanel(
          canTapOnHeader: true,
          backgroundColor: AppColors.scaffoldBackground,
          headerBuilder: (context, isExpanded) {
            return Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  widget.title,
                  style: Styless.textStyle16.copyWith(
                    color: const Color(0xff181725),
                  ),
                ),
                widget.trailing,
              ],
            );
          },
          body: Padding(
            padding: const EdgeInsets.only(left: 8, right: 8, bottom: 16),
            child: Text(
              widget.subtitle,
              style: Styless.textStyle12,
            ),
          ),
          isExpanded: isOpen,
        ),
      ],
    );
  }
}
