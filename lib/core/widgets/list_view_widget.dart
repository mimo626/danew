import 'package:flutter/material.dart';

import '../theme/padding.dart';

class ListViewWidget extends StatefulWidget {
  final List<dynamic> list;
  final Widget Function(dynamic item) listWidgetBuilder;
  const ListViewWidget({super.key, required this.list, required this.listWidgetBuilder});

  @override
  State<ListViewWidget> createState() => _ListViewWidgetState();
}

class _ListViewWidgetState extends State<ListViewWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppPadding.h20Padding,
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: widget.list.length,
        itemBuilder: (context, index) {
          final item = widget.list[index];
          return widget.listWidgetBuilder(item);
        },
      ),
    );
  }
}
