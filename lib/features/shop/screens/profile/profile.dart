import 'package:flutter/material.dart';
import 'package:modemart/common/widgets/appbar.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const Appbar(showBackArrow: true, title: Text('Profile')),
      body: SingleChildScrollView(),
    );
  }
}
