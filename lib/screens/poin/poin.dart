import 'package:flutter/material.dart';
import 'package:telkomsel_app/themes.dart';

class PoinPage extends StatefulWidget {
  const PoinPage({super.key});

  @override
  State<PoinPage> createState() => _PoinPageState();
}

class _PoinPageState extends State<PoinPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('Poin Page', style: mediumText15)),
    );
  }
}
