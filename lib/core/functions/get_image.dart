import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:nectar_app/core/common/widgets/show_snck_bar.dart';

Future getImage({required BuildContext context, required bool isClick}) async {
  await ImagePicker().pickImage(source: ImageSource.gallery).then(
    (value) {
      if (value == null) {
        return showSnackBar(context, message: 'un selected image');
      } else {
        // context.read<UserCubit>().upLoadProfilPicture(value);
      }
    },
  );
}
