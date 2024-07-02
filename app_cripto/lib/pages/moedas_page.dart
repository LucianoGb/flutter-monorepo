import 'package:app_cripto/repositories/moeda_repository.dart';
import 'package:flutter/material.dart';

class MoeadasPage extends StatelessWidget {
  const MoeadasPage({super.key});

  @override
  Widget build(BuildContext context) {
    final tabela = MoedaRepository.tabela;
    return Scaffold(
        appBar: AppBar(
          title: const Center(
              child: Text(
            'Cripto Moedas',
            style: TextStyle(color: Colors.white),
          )),
        ),
        body: ListView.separated(
          itemBuilder: (BuildContext context, int moeda) {
            return ListTile(
              
              leading: Image.asset(tabela[moeda].icone, width: 56.0,),
              title: Text(tabela[moeda].nome),
              trailing: Text(tabela[moeda].preco.toString()),

            );
          },
          padding: const EdgeInsets.all(16),
          separatorBuilder: (_, __) => Divider(),
          itemCount: tabela.length,
        ));
  }
}
