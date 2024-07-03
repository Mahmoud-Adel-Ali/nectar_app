import 'package:flutter/material.dart';
import 'package:nectar_app/features/account/presentation/widgets/user_account.dart';

class AccountViewBody extends StatelessWidget {
  const AccountViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          children: [
            UserAccount(
              imgPath:
                  'https://s3-alpha-sig.figma.com/img/8d96/4bb3/075c91474d08dfc85b7f95eee4fa0ae6?Expires=1721001600&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=qnZDB1PnpGEZkyRXWHmo3xDFUGvvH~wfBeSsFVxPVSu7vYgCE2RhETIWtxx5fdhPRTMq5ZcpJ52JXmn0C3ZYwK9nenHv~qkXhIVkHUCTEQ~E5xAKd6SW8jFTU0YQ7-~LBIKgH~wtr-~LDk41tCF3rJe-nbuDrKdFeCYndX6q9rnvzliy9x-si3XmPDQUjaJTB80OeDg-BpqN4uS2lO5H0K4zveeGJSTBH~n0in6KxIhkoUi4Jk4uTaD2qbFbENXR6Sii9owCh4WxVkR~c-hvsjzo59g2RzO3KMpFQRTuLfi0py1R-gnEz9rlwefWrcZmiiBcKJN-ABHZLKlGhrbqJg__',
              name: 'Afsar Hossen',
              email: 'Imshuvo97@gmail.com',
            ),
          ],
        ),
      ),
    );
  }
}
