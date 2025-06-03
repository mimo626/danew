import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/theme/colors.dart';
import '../../../../core/theme/padding.dart';
import '../../../../core/theme/sizedbox.dart';
import '../../../../core/theme/text_styles.dart';
import '../../../../core/widgets/app_bar/primary_appbar.dart';
import '../../../../core/widgets/button/basic_btn.dart';

class TermsAgreePage extends ConsumerStatefulWidget {
  const TermsAgreePage({super.key});

  @override
  TermsAgreePageState createState() => TermsAgreePageState();
}

class TermsAgreePageState extends ConsumerState<TermsAgreePage> {
  bool isAllChecked = false; // 전체 동의 체크박스 상태
  List<bool> isChecked = [false, false, false]; // 개별 항목 체크 상태

  void toggleAllCheckboxes(bool value) {
    setState(() {
      isAllChecked = value;
      for (int i = 0; i < isChecked.length; i++) {
        isChecked[i] = value;
      }
    });
  }

  void toggleSingleCheckbox(int index, bool value) {
    setState(() {
      isChecked[index] = value;
      isAllChecked = isChecked.every((element) => element); // 모두 체크된 경우 true
    });
  }

  @override
  Widget build(BuildContext context) {
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
            Text("약관 동의",
              style: AppTextStyles.semiBold24,
            ),
            AppSizedBox.h40SizedBox,
            Container(
              padding: AppPadding.v12Padding,
              decoration: BoxDecoration(
                  color: AppColors.whiteColor,
                  borderRadius: BorderRadius.circular(4)),
              child: CheckboxListTile(
                value: isAllChecked,
                onChanged: (value) => toggleAllCheckboxes(value ?? false),
                title: Text(
                  "전체동의",
                  style: AppTextStyles.semiBold16,
                ),
                controlAffinity: ListTileControlAffinity.leading,
                activeColor: AppColors.primaryColor,
              ),
            ),
            // 개별 동의 항목
            Padding(
              padding: AppPadding.v12Padding,
              child: ConstrainedBox(
                constraints: const BoxConstraints(maxHeight: 230), // 최대 높이 제한
                child: IntrinsicHeight(
                  // 자식 위젯의 높이에 맞춤
                  child: Container(
                    height: 230,
                    decoration: BoxDecoration(
                      color: AppColors.whiteColor,
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: ListView(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemExtent: 40,
                      children: [
                        _buildAgreementItem(
                          index: 0,
                          title: "DANEW 이용약관 동의",
                          onPressed: () {
                            context.pushNamed('TermsOfService');
                          },
                        ),
                        _buildAgreementItem(
                          index: 1,
                          title: "개인정보 수집 및 이용 동의",
                          onPressed: () {
                            context.pushNamed('PrivacyPolicyAgreement');
                          },
                        ),
                        _buildAgreementItem(
                          index: 2,
                          title: "개인정보 제 3자 제공 동의",
                          onPressed: () {
                            context.pushNamed('ThirdPartyTerms');
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ),
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
            onPressed: () => context.push("/keywordSelect")
        ),
      ),
    );
  }

  // 동의 위젯
  Widget _buildAgreementItem({
    required int index,
    required String title,
    required VoidCallback onPressed,
  }) {
    return CheckboxListTile(
      value: isChecked[index],
      onChanged: (value) => toggleSingleCheckbox(index, value ?? false),
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Text(
                "(필수) ",
                style: AppTextStyles.regular12
                    .copyWith(color: AppColors.primaryColor),
              ),
              Text(
                title,
                style: AppTextStyles.regular12,
              ),
            ],
          ),
          TextButton(
            onPressed: () {
              onPressed();
            },
            child: Text("보기",
                style: AppTextStyles.regular12
                    .copyWith(color: AppColors.greyColor)),
          ),
        ],
      ),
      controlAffinity: ListTileControlAffinity.leading,
      activeColor: AppColors.primaryColor,
    );
  }
}
