import 'package:flutter/material.dart';

import '../../../core/ui/helpers/size_extensions.dart';
import '../../../core/ui/styles/colors_app.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = context.sizeWidth;

    return Scaffold(
      backgroundColor: context.colors.black,
      body: Stack(
        alignment: Alignment.topCenter,
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: context.sizeShortestSide * .5,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/lanche.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Container(
            constraints: BoxConstraints(
              maxWidth: context.percentHeigth(screenWidth < 1300 ? .7 : .3),
            ),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
          )
        ],
      ),
    );
  }
}
