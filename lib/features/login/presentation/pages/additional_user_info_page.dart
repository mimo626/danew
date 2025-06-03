import 'package:danew/core/globals/enum.dart';
import 'package:danew/core/theme/colors.dart';
import 'package:danew/core/theme/sizedbox.dart';
import 'package:danew/core/widgets/app_bar/primary_appbar.dart';
import 'package:danew/core/widgets/button/basic_btn.dart';
import 'package:danew/core/widgets/text_field_title.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/theme/padding.dart';
import '../../../../core/theme/text_styles.dart';

class AdditionalUserInfoPage extends ConsumerStatefulWidget {
  const AdditionalUserInfoPage({super.key});

  @override
  AdditionalUserInfoPageState createState() => AdditionalUserInfoPageState();
}

class AdditionalUserInfoPageState extends ConsumerState<AdditionalUserInfoPage> {
  @override
  Widget build(BuildContext context) {
    TextEditingController nameTextEditingController = TextEditingController();
    Gender? _selectedGender;

    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      appBar: PrimaryAppbar(
        isLeadingButtonExist: true,
        leadingButtonIcon: "lib/core/icons/arrow_back.svg",
        leadingButtonPressed:() => context.pop(),
      ),
      body: Padding(
        padding: AppPadding.h20Padding,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppSizedBox.h32SizedBox,
            Text("추가 정보 입력",
              style: AppTextStyles.semiBold24,
            ),
            AppSizedBox.h32SizedBox,
            TextFieldTitle(
              title: "이름",
                controller: nameTextEditingController,
                hintText: "이름을 입력해 주세요."
            ),
            AppSizedBox.h16SizedBox,
            TextFieldTitle(
              title: "생년월일",
              controller: nameTextEditingController,
              hintText: "YYMMDD의 형태로 입력해 주세요.",
              keyboardType: TextInputType.number,
            ),
            AppSizedBox.h16SizedBox,
            Text("성별", style: AppTextStyles.medium14,),
            AppSizedBox.h16SizedBox,
            Column(
              children: [
                RadioListTile<Gender>(
                  title: Text("남"),
                  value: Gender.man,
                  groupValue: _selectedGender,
                  activeColor: AppColors.primaryColor,
                  contentPadding: EdgeInsets.zero,
                  onChanged: (Gender? value) {
                    setState(() {
                      print(value);
                      _selectedGender = value!;
                      print("선택된 성별: $_selectedGender");
                    });
                  },
                ),
                RadioListTile<Gender>(
                  title: Text("여"),
                  value: Gender.woman,
                  groupValue: _selectedGender,
                  activeColor: AppColors.primaryColor,
                  contentPadding: EdgeInsets.zero,
                  onChanged: (Gender? value) {
                    setState(() {
                      _selectedGender = value!;
                      print("선택된 성별: $_selectedGender");
                    });
                  },
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: AppPadding.v16Padding,
        child: BasicBtn(
            btnText: "다음",
            textColor: AppColors.whiteColor,
            backgroundColor: AppColors.primaryColor,
            onPressed: () => context.push("/termsAgree")
        ),
      ),
    );
  }
}
