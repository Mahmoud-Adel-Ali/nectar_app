import 'package:flutter/material.dart';
import 'package:nectar_app/core/app/app_colors.dart';
import 'package:nectar_app/core/utils/styless.dart';

class UserAccount extends StatelessWidget {
  const UserAccount({
    super.key,
    required this.imgPath,
    required this.name,
    required this.email,
  });
  final String imgPath, name, email;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        radius: 27,
        backgroundImage: NetworkImage(imgPath),
      ),
      title: Row(
        children: [
          Text(name, style: Styless.textStyle20bold),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.mode_edit_outlined,
              color: AppColors.mainColor,
            ),
          ),
        ],
      ),
      subtitle: Text(email, style: Styless.textStyle16),
    );
  }
}
