import 'package:flutter/material.dart';
import 'package:flutter_application_1/menu_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF6F73D2),
      body: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: 410,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(15.0),
                bottomRight: Radius.circular(15.0),
              ),
              color: Color(0xff52d1dc),
            ),
            padding: const EdgeInsets.only(
              bottom: 25,
              left: 12,
              right: 12,
            ),
            child: Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(15.0),
                  bottomRight: Radius.circular(15.0),
                ),
                color: Color(0xffEF476F),
              ),
              child: Stack(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context)
                            .size
                            .width, // Ancho deseado de la imagen
                        height: 345, // Alto deseado de la imagen
                        child: ClipRRect(
                          borderRadius: const BorderRadius.only(
                            bottomLeft: Radius.circular(20.0),
                            bottomRight: Radius.circular(20.0),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(
                                right: 20,
                                left: 20,
                                bottom: 10), // Espacio alrededor de la imagen
                            child: ClipRRect(
                              borderRadius: const BorderRadius.only(
                                bottomLeft: Radius.circular(20.0),
                                bottomRight: Radius.circular(20.0),
                              ),
                              child: Image.asset(
                                'assets/login.png',
                                fit: BoxFit.cover,
                                width: MediaQuery.of(context).size.width,
                                height: 270,
                              ),
                            ),
                          ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(
                          left: 15,
                          right: 15,
                          bottom: 15,
                        ),
                        child: Text(
                          "Game's Recommend",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              color: Color(0xff52d1dc),
                              fontFamily: 'Roboto',
                              fontSize: 20),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 90,
          ),
          SizedBox(
            width: 200, // Ancho deseado del campo de texto
            height: 50, // Alto deseado del campo de texto
            child: TextFormField(
              decoration: const InputDecoration(
                labelText: "Ingresa tu ID",
                filled: true,
                fillColor: Color(0xffef476f),
                labelStyle: TextStyle(color: Color(0xff52d1dc)),
              ),
              style: const TextStyle(
                color: Color(0xff52d1dc),
              ),
            ),
          ),
          const SizedBox(height: 50),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>
                        main_Menu()),
              );
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xff52d1dc),
              foregroundColor: Colors.black, // Color del texto}
              fixedSize: const Size(100, 30),
            ),
            child: const Text("Ingresar"),
          ),
          const Spacer()
        ],
      ),
    );
  }
}
