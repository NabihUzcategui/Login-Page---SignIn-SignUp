import 'package:flutter/material.dart';

import '../theme/theme.dart';
import '../widgets/widgets.dart';
import 'screens.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
        child: Column(
      children: [
        Flexible(
          flex: 8,
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: Center(
              child: RichText(
                textAlign: TextAlign.center,
                text: const TextSpan(
                  children: [
                    TextSpan(
                      text: "Welcome Back!\n",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 45,
                          fontWeight: FontWeight.w600),
                    ),
                    TextSpan(
                      text: "\nEnter personal details to your employee account",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
        Flexible(
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Row(
              children: [
                const Expanded(
                    child: WelcomeButton(
                  onTap: SingInScreen(),
                  color: Colors.transparent,
                  textColor: Colors.white,
                  buttonText: 'Sing In',
                )),
                Expanded(
                    child: WelcomeButton(
                  onTap: const SingUpScreen(),
                  color: Colors.white,
                  textColor: lightColorScheme.primary,
                  buttonText: 'Sing Up',
                )),
              ],
            ),
          ),
        )
      ],
    ));
  }
}
