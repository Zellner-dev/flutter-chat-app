import 'package:chat_app/pages/models/auth_form_data.dart';
import 'package:flutter/material.dart';

class AuthForm extends StatefulWidget {
  const AuthForm({super.key});

  @override
  State<AuthForm> createState() => _AuthFormState();
}

class _AuthFormState extends State<AuthForm> {

  final _formKey = GlobalKey<FormState>();

  final _formData = AuthFormData();

  void _submit() {
    _formKey.currentState?.validate();
  } 

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(20),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              if(_formData.isSignup)
              TextFormField(
                key: const ValueKey("name"),
                initialValue: _formData.name,
                onChanged: (name) => _formData.name = name,
                decoration: const InputDecoration(
                  labelText: "Nome" 
                ),
              ),
              TextFormField(
                key: const ValueKey("email"),
                initialValue: _formData.email,
                onChanged: (email) => _formData.name = email,
                decoration: const InputDecoration(
                  labelText: "E-mail" 
                ),
              ),
              TextFormField(
                key: const ValueKey("password"),
                obscureText: true,
                decoration: const InputDecoration(
                  labelText: "Senha",
                ),
              ),
              const SizedBox(height: 12),
              ElevatedButton(
                onPressed: _submit, 
                child: const Text("Entrar")
              ),
              const SizedBox(height: 12),
              TextButton(
                onPressed: () {
                  setState(() {
                    _formData.toggleAuthMode();
                  });
                },
                child: Text(
                  _formData.isLogin
                  ? "Criar uma nova conta?"
                  : "J?? possui conta?"
                )
              )
            ],
          ),
        ),
      ),
    );
  }
}