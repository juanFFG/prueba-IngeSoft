import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffd9958f),
      body: Column(
        children: [
          const Spacer(),
          const Text(
            "Te damos la Bienvenida a ClaseApp",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 32,
            ),
          ),
          const Spacer(flex: 2,),
          TextFormField(
            decoration: InputDecoration(
              labelText: "Ingresa tu ID",
              filled: true,
              fillColor: Colors.white,
            ),
          ),
          const SizedBox(height: 35,),
          ElevatedButton(onPressed: (){}, child: Text("Ingresar")),
          const Spacer()
        ]),
    );
  }
}
