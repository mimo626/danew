import 'package:danew/core/widgets/custom_search_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

import '../../theme/colors.dart';
import '../../theme/padding.dart';
import '../../theme/sizedbox.dart';

class SearchBarAppbar extends ConsumerStatefulWidget implements PreferredSizeWidget {
  const SearchBarAppbar({super.key});

  @override
  SearchBarAppbarState createState() => SearchBarAppbarState();

  @override
  Size get preferredSize => const Size.fromHeight(56.0);
}

class SearchBarAppbarState extends ConsumerState<SearchBarAppbar> {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        padding: AppPadding.h20v10Padding,
        child: Row(
          children: [
            SizedBox(
              width: 24,
              height: 24,
              child: IconButton(
                padding: EdgeInsets.zero,
                icon: SvgPicture.asset(
                  'lib/core/icons/arrow_back_ios_new.svg',
                  color: AppColors.blackColor,
                ),
                onPressed: () {
                  context.pop();
                },
              ),
            ),
            AppSizedBox.w8SizedBox,
            Expanded(
              child: CustomSearchBar()
            ),
          ],
        ),
      ),
    );
  }
}