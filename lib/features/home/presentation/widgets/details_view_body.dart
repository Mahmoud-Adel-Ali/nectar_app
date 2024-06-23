import 'package:flutter/material.dart';
import 'package:nectar_app/features/home/presentation/widgets/details_image.dart';

class DetailsViewBody extends StatelessWidget {
  const DetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: <Widget>[
        DetailsImage(imgPath: 'https://s3-alpha-sig.figma.com/img/8590/b6a4/4c4e9d58d8f6ba361a423878cbabe793?Expires=1719792000&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=P6A2oMxoKXZgGxaIQNUqMnCTBs56xzpd7RzlE5zfs0LyOHPDJHhjLKoqBPCdyfn~L0IhUwajvQhqpmqHaIMzKL~3GnmQRNogqBFA-4vTaeRS8LQGFbEnH1fCCFHi0UTCykXnsaiBjN2cMMrgo3ISEYyadCH7EgXE9MpN~PQz-WvAIUUeu9l-FAjwbLdoZcHUjFVa~hJWBehP5Zb5mLxBPZnHa7Snmc4dc40zr27X8QZyRWspNSMbcE6ZTQ-9BxhjxVS6CaPSNR0FLSnMjm-SgNOnfiG~X9wWKAcvWKDl9ZYIl8SMPV6Zk033q6Q1q5goKjR4nF-MjhjBHP0VGvqfkw__',),
      ],
    );
  }
}
