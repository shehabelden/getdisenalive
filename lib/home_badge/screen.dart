import 'package:flutter/material.dart';

import 'component/app_bar.dart';
import 'component/body_component.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarrComponent(),
      body: const BodyComponent(),
    );
  }
}
