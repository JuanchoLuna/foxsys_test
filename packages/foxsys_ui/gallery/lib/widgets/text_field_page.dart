import 'package:foxsys_ui/foxsys_ui.dart';
import 'package:flutter/material.dart';

class TextFieldPage extends StatelessWidget {
  const TextFieldPage({super.key});

  static Route<void> route() {
    return MaterialPageRoute<void>(builder: (_) => const TextFieldPage());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Text Field',
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(FOXSYSSpacing.lg),
        child: Column(
          children: [
            FOXSYSTextField.emailTextField(
              onChanged: (_) {},
            ),
            const SizedBox(height: FOXSYSSpacing.sm),
            FOXSYSTextField.passwordTextField(
              onChanged: (_) {},
            ),
            const SizedBox(height: FOXSYSSpacing.sm),
            FOXSYSTextField(
              hintText: 'Default text field',
              onChanged: (_) {},
            ),
          ],
        ),
      ),
    );
  }
}
