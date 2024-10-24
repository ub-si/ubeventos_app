import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../controllers/auth_controller.dart';
import '../utils/validators.dart';
import '../widgets/button_widget.dart';
import '../widgets/text_field_widget.dart';
import 'home_page.dart';

class LoginPage extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Provider.of<AuthController>(context, listen: false);

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextFieldWidget(
              controller: emailController,
              icon: Icons.email,
              label: 'Email',
              validator: emailValidator,
            ),
            TextFieldWidget(
              controller: passwordController,
              icon: Icons.lock,
              label: 'Senha',
              isSecret: true,
              validator: passwordValidator,
            ),
            const SizedBox(height: 20),
            ButtonWidget(
                onPressed: () async {
                  try {
                    await controller.login(
                      emailController.text,
                      passwordController.text,
                    );

                    if (!context.mounted) return;
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (_) => const HomePage(),
                        ));
                  } catch (e) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text("Erro ao tentar fazer login!")),
                    );
                  }
                },
                child: const Text('Login')),
          ],
        ),
      ),
    );
  }
}
