import 'package:app_cripto/models/moeda.dart';

class MoedaRepository {
  static List<Moeda> tabela = [
    Moeda(
        icone: 'assets/images/cripto_1.jpg',
        nome: 'Cripto 1',
        sigla: 'cpt-1',
        preco: 199.95),
    Moeda(
        icone: 'assets/images/cripto_2.png',
        nome: 'Cripto 2',
        sigla: 'cpt-2',
        preco: 90.95),
    Moeda(
        icone: 'assets/images/cripto_3.png',
        nome: 'Cripto 3',
        sigla: 'cpt-3',
        preco: 399.58),
    Moeda(
        icone: 'assets/images/cripto_5.png',
        nome: 'Cripto 4',
        sigla: 'cpt-4',
        preco: 180.95),
    Moeda(
        icone: 'assets/images/cripto_6.png',
        nome: 'Cripto 5',
        sigla: 'cpt-5',
        preco: 58.95),
  ];
}
