import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../theme/colors.dart';
import '../theme/padding.dart';

class DividerWidget extends ConsumerWidget {
  const DividerWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: AppPadding.v8Padding,
      child: Divider(color: AppColors.lightGreyColor,),
    );
  }
}