import 'package:danew/core/theme/padding.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HorizontalListViewWidget extends ConsumerWidget {
  final List<dynamic> list;
  final int listLength;
  final Widget Function(dynamic item) listWidgetBuilder;

  const HorizontalListViewWidget({
    super.key,
    required this.list,
    required this.listLength,
    required this.listWidgetBuilder,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: AppPadding.h20Padding,
      child: Container(
        height: 100,
        child: ListView.builder(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal, // 가로 스크롤
          itemCount: listLength,
          itemBuilder: (context, index) {
            final item = list[index];
            return listWidgetBuilder(item);
          },
        ),
      ),
    );
  }
}