
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nectar_app/core/app/app_images.dart';

class DetailsImage extends StatelessWidget {
  const DetailsImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xffF2F3F2),
      height: MediaQuery.sizeOf(context).height * 0.405,
      padding: const EdgeInsets.all(16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: SvgPicture.asset(AppImages.arrowBack)),
                GestureDetector(child: SvgPicture.asset(AppImages.logout)),
              ],
            ),
          ),
          Image.network(
              'https://s3-alpha-sig.figma.com/img/8590/b6a4/4c4e9d58d8f6ba361a423878cbabe793?Expires=1719792000&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=P6A2oMxoKXZgGxaIQNUqMnCTBs56xzpd7RzlE5zfs0LyOHPDJHhjLKoqBPCdyfn~L0IhUwajvQhqpmqHaIMzKL~3GnmQRNogqBFA-4vTaeRS8LQGFbEnH1fCCFHi0UTCykXnsaiBjN2cMMrgo3ISEYyadCH7EgXE9MpN~PQz-WvAIUUeu9l-FAjwbLdoZcHUjFVa~hJWBehP5Zb5mLxBPZnHa7Snmc4dc40zr27X8QZyRWspNSMbcE6ZTQ-9BxhjxVS6CaPSNR0FLSnMjm-SgNOnfiG~X9wWKAcvWKDl9ZYIl8SMPV6Zk033q6Q1q5goKjR4nF-MjhjBHP0VGvqfkw__'),
        ],
      ),
    );
  }
}
