import 'package:danew/core/theme/colors.dart';
import 'package:danew/core/theme/padding.dart';
import 'package:danew/core/widgets/app_bar/primary_appbar.dart';
import 'package:danew/core/widgets/custom_search_bar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PrimaryAppbar(
        showLogo: true,
        showNotificationIcon: true,
      ),
      backgroundColor: AppColors.whiteColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: AppPadding.h20v8Padding,
              child: CustomSearchBar(),
            ),

          ],
        ),
      ),
    );
  }
}
