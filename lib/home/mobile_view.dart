import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class MobileView extends StatefulWidget {
  var title;

  MobileView({Key? key, required this.title}) : super(key: key);

  @override
  State<MobileView> createState() => _MobileViewState();
}

class _MobileViewState extends State<MobileView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ephraim YFD'),
      ),
      body: const Center(
          child: SizedBox(
        child: Text('Mobile View'),
      )),
    );
  }
}
