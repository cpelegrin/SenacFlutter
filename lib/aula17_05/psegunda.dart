import 'package:flutter/material.dart';
import 'package:teste/aula17_05/pprincipal.dart';

class PaginaSegunda extends StatelessWidget {
  const PaginaSegunda({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Segunda Página"),
      ),
      drawer: SafeArea(
        child: Drawer(
          child: ListView(
            children: [
              UserAccountsDrawerHeader(
                currentAccountPicture: CircleAvatar(
                  child: Icon(Icons.person),
                ),
                accountName: Text(
                  "Carlos Pelegrin",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                accountEmail: Text("carlos.pelegrin@docente.pr.senac.br"),
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          "https://blog.sebastiano.dev/content/images/2019/07/1_l3wujEgEKOecwVzf_dqVrQ.jpeg"),
                      fit: BoxFit.fill),
                ),
              ),
              ListTile(
                leading: Icon(Icons.confirmation_num_sharp),
                title: Text("Título"),
                subtitle: Text("Subtítulo"),
                trailing: Icon(Icons.arrow_right_sharp),
              ),
              ListTile(
                leading: Icon(Icons.add_call),
                title: Text("Título"),
                subtitle: Text("Subtítulo"),
                trailing: Icon(Icons.arrow_right_sharp),
              ),
              Divider(
                height: 15,
                thickness: 2,
              ),
              ListTile(
                leading: Icon(Icons.zoom_out_map_outlined),
                title: Text("Título"),
                subtitle: Text("Subtítulo"),
                trailing: Icon(Icons.arrow_right_sharp),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return const PaginaPrincipal();
                      },
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
      body: const Center(
        child: Text("Você está na Segunda Página"),
      ),
    );
  }
}
