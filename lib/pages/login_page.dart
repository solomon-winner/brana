import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:brana/Providers/users/user_provider.dart';
import 'package:brana/pages/home_page.dart';

class LoginScreen extends ConsumerStatefulWidget {
  const LoginScreen({super.key});

  @override
  ConsumerState<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends ConsumerState<LoginScreen> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  Future<void> _login() async {
    await ref.read(userNotifierProvider.notifier).login(
      _emailController.text,
      _passwordController.text,
    );
  }

  @override
  Widget build(BuildContext context) {
    final userState = ref.watch(userNotifierProvider);

    ref.listen(userNotifierProvider, (previous, next) {
      if (next is AsyncData && next.value?.user != null) {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (_) => HomePage(),
          ),
        );
      } else if (next is AsyncError) {
        final error = next.error.toString();
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(error)));
      }
    });

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            TextField(
              controller: _emailController,
              decoration: const InputDecoration(labelText: 'Email'),
            ),
            TextField(
              controller: _passwordController,
              obscureText: true,
              decoration: const InputDecoration(labelText: 'Password'),
            ),
            const SizedBox(height: 20),
            userState.isLoading
                ? const CircularProgressIndicator()
                : ElevatedButton(
                    onPressed: _login,
                    child: const Text('Sign In'),
                  ),
          ],
        ),
      ),
    );
  }
}
