import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../theme/padding.dart';

class ListViewWidget extends ConsumerStatefulWidget {
  final List<dynamic> list;
  final int listLength;
  final Widget Function(dynamic item) listWidgetBuilder;
  const ListViewWidget({super.key,
    required this.list,
    required this.listLength,
    required this.listWidgetBuilder});

  @override
  ListViewWidgetState createState() => ListViewWidgetState();
}

class ListViewWidgetState extends ConsumerState<ListViewWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppPadding.h20Padding,
      child: ListView.builder(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemCount: widget.listLength,
        itemBuilder: (context, index) {
          final item = widget.list[index];
          return widget.listWidgetBuilder(item);
        },
      ),
    );
  }
}
