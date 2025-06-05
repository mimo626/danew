
import 'package:danew/core/theme/padding.dart';
import 'package:danew/core/theme/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

import '../../theme/colors.dart';

class PrimaryAppbar extends ConsumerStatefulWidget implements PreferredSizeWidget {
  final bool isLeadingButtonExist; // Leading 버튼의 유무
  final String? leadingButtonIcon; // Leading 버튼의 아이콘
  final VoidCallback? leadingButtonPressed; // Leading 버튼 눌렸을 때 행동
  final String? title; // 제목
  final bool showNotificationIcon; // 알림 아이콘 유무
  final bool showSettingIcon; // 설정 아이콘 유무
  final bool showSearchIcon; // 검색 아이콘 유무
  final bool showLogo; // 어플 로고 유무
  final bool isDivider;

  const PrimaryAppbar({
    super.key,
    this.isLeadingButtonExist = false,
    this.leadingButtonIcon,
    this.leadingButtonPressed,
    this.title,
    this.showNotificationIcon = false,
    this.showSettingIcon = false,
    this.showSearchIcon = false,
    this.showLogo = false,
    this.isDivider = false,
  });

  @override
  CommonAppBarState createState() => CommonAppBarState();

  @override
  Size get preferredSize =>
      const Size.fromHeight(56); // 일반 AppBar 높이
}

class CommonAppBarState extends ConsumerState<PrimaryAppbar> {
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
            if (widget.showSearchIcon)
              Padding(
                padding: AppPadding.right8Padding,
                child: SizedBox(
                  width: 30,
                  height: 30,
                  child: IconButton(
                    icon: SvgPicture.asset(
                      'lib/core/icons/search.svg',
                      width: 22,
                      height: 22,
                      color: AppColors.blackColor,
                    ),
                    onPressed: () {
                      context.push("/search");
                    },
                    padding: const EdgeInsets.all(0),
                  ),
                ),
              ),
            if (widget.showSettingIcon)
              Padding(
                padding: AppPadding.right8Padding,
                child: SizedBox(
                  width: 30,
                  height: 30,
                  child: IconButton(
                    icon: SvgPicture.asset(
                      'lib/core/icons/setting.svg',
                      width: 24,
                      height: 24,
                    ),
                    onPressed: () {
                      context.push("/settings");
                    },
                    padding: const EdgeInsets.all(0),
                  ),
                ),
              ),
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
                        context.push("/alarm");
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
        style: AppTextStyles.semiBold18,
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
