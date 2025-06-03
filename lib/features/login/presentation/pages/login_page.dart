import 'package:danew/core/theme/colors.dart';
import 'package:danew/core/theme/sizedbox.dart';
import 'package:danew/core/theme/text_styles.dart';
import 'package:danew/core/widgets/button/basic_btn.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

class LoginPage extends ConsumerWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
                "lib/core/icons/app_logo.svg",
                height: 24,
            ),
            AppSizedBox.h24SizedBox,
            Text("맞춤형 뉴스를 추천 받고,\n나만의 기록을 남길 수 있어요.",
             style: AppTextStyles.regular14.copyWith(color: AppColors.blackColor),
              textAlign: TextAlign.center,
            ),
            AppSizedBox.h32SizedBox,
            BasicBtn(
              btnText: "Kakao Login",
              textColor: AppColors.whiteColor,
              backgroundColor: AppColors.primaryColor,
              onPressed: () => context.push("/additionalUserInfo"),
            ),
            AppSizedBox.h16SizedBox,
            BasicBtn(
              btnText: "Apple Login",
              textColor: AppColors.whiteColor,
              backgroundColor: AppColors.greyColor,
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
