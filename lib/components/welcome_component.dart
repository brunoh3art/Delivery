import 'package:delivery/constants.dart';
import 'package:flutter/material.dart';

class WelcomeHeader extends StatefulWidget {
  const WelcomeHeader({super.key});

  @override
  State<WelcomeHeader> createState() => _WelcomeHeaderState();
}

class _WelcomeHeaderState extends State<WelcomeHeader> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 442.0,
      alignment: Alignment.center,
      decoration: const BoxDecoration(
        color: primaryColor,
        image: DecorationImage(
          alignment: Alignment(0, -1.9),
          image: AssetImage("assets/Vector.png"),
          fit: BoxFit.cover,
        ),
      ),
      child: Stack(
        fit: StackFit.expand,
        alignment: Alignment.center,
        children: <Widget>[
          const Align(
            alignment: Alignment(0, -0.75),
            child: Text(
              "Delivery",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 36.0,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Align(
            alignment: const Alignment(0, 20.0),
            child: Image.asset("assets/welcome.png"),
          )
        ],
      ),
    );
  }
}
