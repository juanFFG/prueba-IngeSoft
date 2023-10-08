import 'package:flutter/material.dart';


class Reco extends StatelessWidget {
  const Reco({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text("Recomendación"),
        backgroundColor: const Color(0xffEF476F),
        toolbarHeight: 40,
      ),
    );
  }
}