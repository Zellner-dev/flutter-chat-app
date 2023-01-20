import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class LoadingPage extends StatelessWidget {
  const LoadingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primary,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const [
            CircularProgressIndicator(
              color: Colors.white,
            ),
            SizedBox(height: 10),
            Text(
              "Carregando...",
              style: TextStyle(
                color: Colors.white
              ),
            )
          ],
        ),
      ),
    );
  }
}