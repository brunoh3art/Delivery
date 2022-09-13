import 'package:delivery/constants.dart';
import 'package:flutter/cupertino.dart';

class DividerComponent extends StatelessWidget {
  const DividerComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            color: const Color(0xFFE2E2E2),
            height: 1.5,
          ),
        ),
        Container(
          color: primaryColor,
          width: 213,
          height: 1.5,
        ),
        Expanded(
          child: Container(
            color: const Color(0xFFE2E2E2),
            height: 1.5,
          ),
        ),
      ],
    );
  }
}
