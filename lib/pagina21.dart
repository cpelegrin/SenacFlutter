import 'package:flutter/material.dart';

class Pagina21 extends StatelessWidget {
  Pagina21({super.key});

  final GlobalKey<ScaffoldMessengerState> scaffoldMessengerKey =
      GlobalKey<ScaffoldMessengerState>();

  showSnack(texto) {
    final snackBar = SnackBar(
      content: Text(texto),
      action: SnackBarAction(
        label: 'Sim',
        textColor: Colors.yellow,
        onPressed: () {
          // Some code to undo the change.
        },
      ),
    );

    scaffoldMessengerKey.currentState?.showSnackBar(snackBar);
  }

  @override
  Widget build(BuildContext context) {
    var estiloTexto = const TextStyle(
      fontSize: 30,
      fontWeight: FontWeight.bold,
    );

    return ScaffoldMessenger(
      key: scaffoldMessengerKey,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.primary,
          title: const Text("Título"),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Texto da linha 1 um pouco maior...', style: estiloTexto),
            Text("Texto", style: estiloTexto),
            Text('Texto da linha 3 um pouco maior...........',
                style: estiloTexto),
            Text("Texto", style: estiloTexto),
            Text('Texto da linha 5 um pouco maior...........',
                style: estiloTexto),
            const SizedBox(height: 32),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Texto1", style: estiloTexto),
                const SizedBox(width: 16),
                Text("Texto2", style: estiloTexto),
                const SizedBox(width: 32),
                const Icon(Icons.rocket_launch_sharp),
                const SizedBox(width: 32),
                Text("Texto3", style: estiloTexto),
                const SizedBox(width: 16),
                Text("Texto4", style: estiloTexto),
              ],
            ),
            const Padding(padding: EdgeInsets.all(30)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FilledButton(
                  onPressed: () {
                    showSnack("FilledButton pressionado");
                  },
                  child: const Text('Filled'),
                ),
                const Padding(padding: EdgeInsets.all(30)),
                OutlinedButton(
                  onPressed: () {
                    showSnack("OutlinedButton pressionado");
                  },
                  child: const Text('Outlined'),
                ),
                const Padding(padding: EdgeInsets.all(30)),
                Directionality(
                  textDirection: TextDirection.rtl,
                  child: TextButton.icon(
                    label: const Text('Increase'),
                    icon: const Icon(Icons.volume_up),
                    onPressed: () {
                      showSnack("TextButton.icon pressionado");
                    },
                  ),
                ),
              ],
            ),
            Expanded(
              child: Center(
                child: RichText(
                  text: const TextSpan(
                    text: "Texto multi",
                    style: TextStyle(
                      fontSize: 40,
                      color: Colors.black,
                    ),
                    children: <TextSpan>[
                      TextSpan(
                        text: ' estilo',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.red,
                        ),
                      ),
                      TextSpan(
                        text: ' mais fácil',
                      ),
                      TextSpan(
                        text: ' que fazer linhas',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(
                        text: ' e textos separados',
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
