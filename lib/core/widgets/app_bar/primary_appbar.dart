
import 'package:danew/core/theme/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../theme/colors.dart';

class PrimaryAppbar extends StatefulWidget implements PreferredSizeWidget {
  final bool isLeadingButtonExist; // Leading 버튼의 유무
  final String? leadingButtonIcon; // Leading 버튼의 아이콘
  final VoidCallback? leadingButtonPressed; // Leading 버튼 눌렸을 때 행동
  final String? title; // 제목
  final bool showNotificationIcon; // 알림 아이콘 유무
  final VoidCallback? notificationButtonPressed; // 알림 아이콘 눌렀을 때 행동
  final bool showSettingIcon; // 설정 아이콘 유무
  final VoidCallback? settingButtonPressed; // 설정 아이콘 눌렀을 때 행동
  final bool showLogo; // 어플 로고 유무
  final bool isDivider;

  const PrimaryAppbar({
    super.key,
    this.isLeadingButtonExist = false,
    this.leadingButtonIcon,
    this.leadingButtonPressed,
    this.title,
    this.showNotificationIcon = false,
    this.notificationButtonPressed,
    this.showSettingIcon = false,
    this.settingButtonPressed,
    this.showLogo = false,
    this.isDivider = false,
  });

  @override
  CommonAppBarState createState() => CommonAppBarState();

  @override
  Size get preferredSize =>
      const Size.fromHeight(56); // 일반 AppBar 높이
}

class CommonAppBarState extends State<PrimaryAppbar> {
  double titleSpacing = 12.0;
  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppBar(
          backgroundColor: Colors.white,
          // AppBar의 배경색 지정
          elevation: 0,
          // 그림자 제거
          leadingWidth: 24.0 + 20,
          scrolledUnderElevation: 0,
          leading: widget.isLeadingButtonExist
              ? Padding(
            padding:
            const EdgeInsets.only(left: 20.0), // Leading 아이콘 좌측 여백
            child: SizedBox(
              width: 24.0,
              height: 24.0,
              child: IconButton(
                padding: EdgeInsets.zero,
                icon: SvgPicture.asset(
                  widget.leadingButtonIcon!,
                  width: 24,
                  height: 24,
                ),
                onPressed: widget.leadingButtonPressed,
              ),
            ),
          )
              : null,
          title: getTitleWidget(),
          centerTitle: true,
          actions: [
            if (widget.showNotificationIcon)
              Stack(
                clipBehavior: Clip.none,
                children: [
                  SizedBox(
                    width: 40,
                    height: 40,
                    child: IconButton(
                      icon: SvgPicture.asset(
                        'lib/core/icons/bell.svg',
                        width: 24,
                        height: 24,
                      ),
                      onPressed: () {
                      },
                      padding: EdgeInsets.zero,
                    ),
                  ),
                  Positioned(
                    top: 12,
                    right: 12,
                    child: SvgPicture.asset(
                      'lib/core/icons/bell_badge.svg',
                      width: 7,
                      height: 7,
                    ),
                  ),
                ],
              ),
            if (widget.showSettingIcon)
              Padding(
                padding: const EdgeInsets.only(right: 16.0), // 설정 아이콘 우측 여백
                child: SizedBox(
                  width: 24,
                  height: 24,
                  child: IconButton(
                    icon: SvgPicture.asset(
                      'lib/core/icons/setting.svg',
                    ),
                    onPressed: () {
                      widget.settingButtonPressed!(); // 함수를 호출하기 위해 ()를 사용
                    },
                    padding: const EdgeInsets.all(0),
                  ),
                ),
              ),
        if (widget.isDivider)
          const Divider(
            height: 1,
            color: AppColors.lightGreyColor, // 구분선 색상
          ),
      ],
    )]);
  }

  Widget? getTitleWidget() {
    // 제목이 있을 경우
    if (widget.title != null) {
      setState(() {
        titleSpacing = 8;
      });
      return Text(
        widget.title!,
        style: AppTextStyles.semiBold24,
        textAlign: TextAlign.center,
      );
    }
    // 로고를 보여야 할 경우
    else if (widget.showLogo) {
      return SvgPicture.asset(
        'lib/core/icons/app_logo.svg',
      );
    }
    // 검색중 x, 타이틀 x, 로고 x일 경우
    else {
      return null;
    }
  }
}
