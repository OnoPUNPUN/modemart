import 'package:flutter/material.dart';
import 'package:modemart/features/shop/screens/home/widget/home_app_bar.dart';
import '../../../../common/custom_shapes/containers/app_primary_header_container.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            AppPrimaryHeaderContainer(child: Column(children: [HomeAppBar()])),
          ],
        ),
      ),
    );
  }
}
