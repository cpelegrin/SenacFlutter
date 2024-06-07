import 'package:flutter/material.dart';
import 'package:teste/aula17_05/psegunda.dart';

class PaginaPrincipal extends StatelessWidget {
  const PaginaPrincipal({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Página Principal"),
      ),
      drawer: SafeArea(
        child: Drawer(
          child: ListView(
            children: [
              const UserAccountsDrawerHeader(
                currentAccountPicture: CircleAvatar(
                  child: Icon(Icons.person),
                ),
                accountName: Text(
                  "Teste de Flutter",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                accountEmail: Text("teste@teste.com.br"),
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          "https://blog.sebastiano.dev/content/images/2019/07/1_l3wujEgEKOecwVzf_dqVrQ.jpeg"),
                      fit: BoxFit.fill),
                ),
              ),
              const Padding(padding: EdgeInsets.only(top: 8)),
              ListTile(
                leading: const Icon(Icons.business_center),
                title: const Text("Abrir o Google"),
                trailing: const Icon(Icons.keyboard_arrow_right),
                onTap: () {},
              ),
              const Divider(
                height: 15,
                thickness: 2,
              ),
              const Padding(padding: EdgeInsets.only(top: 8)),
              ListTile(
                leading: const Icon(Icons.business_center),
                title: const Text("Abrir o Google"),
                trailing: const Icon(Icons.keyboard_arrow_right),
                onTap: () {},
              ),
            ],
          ),
        ),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return const PaginaSegunda();
                },
              ),
            );
          },
          child: const Text("Próxima Página"),
        ),
      ),
    );
  }
}
