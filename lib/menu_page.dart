import 'package:flutter/material.dart';
import 'package:flutter_application_1/reco.dart';

class main_menu extends StatelessWidget {
  const main_menu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF6F73D2),
      appBar: AppBar(
        title: const Text("Menú Principal"),
        backgroundColor: const Color(0xffEF476F),
        toolbarHeight: 40,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const SizedBox(
            height: 20,
          ),
          const Text(
            "Game's Recommend",
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Color(0xff52d1dc),
                fontFamily: 'Roboto',
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.bold,
                fontSize: 20),
          ),
          const SizedBox(
            height: 40,
          ),
          // Primera fila de fotos y botones
          Row(
            children: [
              const SizedBox(
                width: 10,
              ),
              Expanded(
                child: Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(
                          10.0), // Ajusta el valor para redondear más o menos
                      child: Image.asset('assets/jugados.png'),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        // Acción cuando se presiona el botón 1
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xffEF476F),
                        foregroundColor:
                            const Color(0xff52d1dc), // Color del texto}
                      ),
                      child: const Text("Ver jugados"),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Expanded(
                child: Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(
                          10.0), // Ajusta el valor para redondear más o menos
                      child: Image.asset('assets/pendientes.png'),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        // Acción cuando se presiona el botón 2
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xffEF476F),
                        foregroundColor:
                            const Color(0xff52d1dc), // Color del texto}
                      ),
                      child: const Text("Ver pendientes"),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                width: 10,
              ),
            ],
          ),
          const SizedBox(height: 20), // Espacio entre filas
          // Segunda fila de foto y botón
          Column(
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 200,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20.0),
                  child: Padding(
                    padding: const EdgeInsets.only(
                      right: 20,
                      left: 20,
                      bottom: 10,
                    ),
                    child: ClipRRect(
                      borderRadius:
                          const BorderRadius.all(Radius.circular(20.0)),
                      child: Image.asset(
                        'assets/reco.png',
                        fit: BoxFit.cover,
                        width: MediaQuery.of(context).size.width,
                        height: 270,
                      ),
                    ),
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>
                        const Reco()));
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xffEF476F),
                  foregroundColor: const Color(0xff52d1dc), // Color del texto}
                ),
                child: const Text("Solicitar Recomendación"),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
