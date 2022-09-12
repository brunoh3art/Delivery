import 'package:delivery/components/Buttons/buttons.dart';
import 'package:delivery/components/components.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Welcome extends StatefulWidget {
  const Welcome({super.key});

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.orange,
        systemNavigationBarColor: Colors.white,
        statusBarIconBrightness: Brightness.light,
        statusBarBrightness: Brightness.light,
      ),
    );

    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: [
          const WelcomeHeader(),
          Padding(
            padding: const EdgeInsets.only(left: 24, right: 24, top: 52),
            child: Flex(
              direction: Axis.vertical,
              children: const [
                Text(
                  'O Hamburguer mais delicioso da sua Cidade!',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 29.0,
                    fontFamily: "Inter",
                    fontStyle: FontStyle.normal,
                  ),
                ),
                SizedBox(height: 36),
                RowInfo(),
                SizedBox(height: 36),
                AcitonsButton()
              ],
            ),
          )
        ],
      ),
    );
  }
}

class AcitonsButton extends StatelessWidget {
  const AcitonsButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ButtonSolid(
          title: "Fazer Login",
          onPressed: () {
            Navigator.of(context).pushNamed("/login");
          },
        ),
        const SizedBox(height: 16),
        ButtonOutline(
            title: "Ver cardápio",
            onPressed: () {
              Navigator.of(context).pushNamed("/home");
            }),
      ],
    );
  }
}

class RowInfo extends StatelessWidget {
  const RowInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        Text(
          'Logou',
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 18.0,
            fontFamily: "Inter",
          ),
        ),
        SizedBox(
          width: 8,
        ),
        Icon(
          Icons.arrow_forward,
          color: Colors.amber,
          size: 24,
        ),
        SizedBox(
          width: 8,
        ),
        Text(
          'Pediu',
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 18.0,
            fontFamily: "Inter",
          ),
        ),
        Icon(
          Icons.arrow_forward,
          color: Colors.amber,
          size: 24,
        ),
        SizedBox(
          width: 8,
        ),
        Text(
          'Chegou',
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 18.0,
            fontFamily: "Inter",
          ),
        ),
      ],
    );
  }
}
