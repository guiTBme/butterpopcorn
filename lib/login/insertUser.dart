import 'package:flutter/material.dart';

class AddedUser extends StatelessWidget {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  void _registerUser(BuildContext context) {
    String name = _nameController.text;
    String email = _emailController.text;
    String password = _passwordController.text;

    // Lógica para adicionar o usuário
    // ...

    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('Registro concluído'),
        content: Text('Usuário adicionado com sucesso!'),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pop(context);
              Navigator.pop(context);
            },
            child: Text('OK'),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text('Cadastro'),
        backgroundColor: Colors.yellow,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            _buildTextFieldWithLabel('Nome', _nameController),
            const SizedBox(height: 10),
            _buildTextFieldWithLabel('Email', _emailController),
            const SizedBox(height: 10),
            _buildTextFieldWithLabel('Senha', _passwordController,
                obscureText: true),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => _registerUser(context),
              child: const Text('Cadastrar'),
            ),
          ],
        ),
      ),
    );
  }
}

Widget _buildTextFieldWithLabel(String label, TextEditingController controller,
    {bool obscureText = false}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        label,
        style: const TextStyle(
          color: Colors.white,
        ),
      ),
      TextField(
        controller: controller,
        obscureText: obscureText,
        style: const TextStyle(
          color: Colors.black,
        ),
        decoration: const InputDecoration(
          filled: true,
          fillColor: Colors.yellow,
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.yellow),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.yellow),
          ),
        ),
      ),
    ],
  );
}
