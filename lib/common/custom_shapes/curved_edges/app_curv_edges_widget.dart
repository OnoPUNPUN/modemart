import 'package:flutter/material.dart';

import 'curved_edges.dart';

class AppCurvEdgesWidget extends StatelessWidget {
  const AppCurvEdgesWidget({super.key, this.child});

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return ClipPath(clipper: AppCustomCurvedEdges(), child: child);
  }
}
