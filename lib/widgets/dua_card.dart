import 'package:flutter/material.dart';

import '../utils/app_layout.dart';
import '../utils/app_style.dart';

class DuaCard extends StatelessWidget {
  const DuaCard({
    Key? key,
    required this.namazText,
    required this.arbiText,
    required this.banglaText,
    required this.onubadText,
  }) : super(key: key);
  final String namazText;
  final String arbiText;
  final String banglaText;
  final String onubadText;

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);

    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(5),
          width: 100,
          height: 40,
          decoration: BoxDecoration(
            color: Styles.smallCardColor,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Text(
            namazText,
            style: Styles.textStyle,
            textAlign: TextAlign.center,
          ),
        ),
        Container(
          margin:
              const EdgeInsets.only(left: 25, right: 25, bottom: 30, top: 3),
          padding: const EdgeInsets.all(20),
          width: size.width,
          decoration: BoxDecoration(
            color: Styles.cardColor,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: Styles.cardColor,
                blurRadius: 2,
                spreadRadius: 1,
              ),
            ],
          ),
          child: Column(
            children: [
              Text(
                arbiText,
                style: Styles.textStyle,
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                banglaText,
                style: Styles.headLineStyle3,
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                onubadText,
                style: Styles.headLineStyle4,
              ),
              const SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
