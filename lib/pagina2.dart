import 'package:flutter/material.dart';

class Pagina2 extends StatelessWidget {
  const Pagina2({super.key});

  @override
  Widget build(BuildContext context) {
    var estiloTexto = const TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 30,
    );
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        title: const Text("Página 2"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Texto da linha 1 um pouco maior", style: estiloTexto),
          Text("Texto", style: estiloTexto),
          Text("Texto da linha 3 um pouco maior", style: estiloTexto),
          Text("Texto", style: estiloTexto),
          Text("Texto da linha 5 um pouco maior", style: estiloTexto),
          const SizedBox(height: 32),
          Row(
            children: [
              Text("Texto1", style: estiloTexto),
              const SizedBox(width: 8),
              Text("Texto2", style: estiloTexto),
              const SizedBox(width: 32),
              const Icon(Icons.rocket_launch),
              const SizedBox(width: 32),
              Text("Texto4", style: estiloTexto),
              const SizedBox(width: 8),
              Text("Texto5", style: estiloTexto),
            ],
          ),
          const SizedBox(
            height: 480,
            child: Center(
              child: Text(
                "Texto Centralizado",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 40,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
