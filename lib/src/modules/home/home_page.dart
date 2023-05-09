import 'package:flutter/material.dart';

import '../../core/env/env.dart';
import '../../core/ui/helpers/loader.dart';
import '../../core/ui/helpers/message.dart';
import '../../core/ui/helpers/size_extensions.dart';
import '../../core/ui/styles/colors_app.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with Loader, Message {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: Container(
        width: context.percentWidth(.5),
        height: context.percentHeigth(.5),
        color: context.colors.secondary,
        child: Text(
          Env.instance.get('backend_base_url'),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          showLoader();
          await Future.delayed(const Duration(seconds: 3));
          hideLoader();

          // showSuccess('Valeuuuuu Rita Lee!');
          showError('Error');
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
