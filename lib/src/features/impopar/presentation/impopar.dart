import 'package:flutter/material.dart';

class ImpoParPage extends StatefulWidget {
  const ImpoParPage({super.key});

  @override
  State<ImpoParPage> createState() => _ImpoParPageState();
}

class _ImpoParPageState extends State<ImpoParPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Impar ou Par?'),
        actions: [
          IconButton(
              onPressed: () {
                showModalBottomSheet(
                  context: context,
                  builder: (context) {
                    return const Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 8.0),
                            child: Text(
                              'Dicas',
                              style: TextStyle(fontSize: 32),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 8.0),
                            child: Text.rich(TextSpan(
                                text: 'Toque em um dos botões ',
                                children: [
                                  TextSpan(
                                    text: 'ÍMPAR',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  TextSpan(text: ' ou '),
                                  TextSpan(
                                    text: 'PAR',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  TextSpan(
                                      text:
                                          ' para definir sua intenção de jogo. A seguir, toque em um dos botões de 0 a 5 para selecionar o valor.')
                                ])),
                          ),
                          Text(
                              'Após selcionar o n;umero desejado, o computador irá realizar um sorteio de outro valor na mesma faixa e indicará se você ganhou ou perdeu com uma mensagem no rodapé da tela.'),
                          Text('Boa sorte!',
                              style: TextStyle(
                                  fontSize: 32, fontWeight: FontWeight.bold)),
                        ],
                      ),
                    );
                  },
                );
              },
              icon: const Icon(Icons.question_mark))
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Column(
              children: [
                Text('Computador'),
                TextButton(
                  onPressed: null,
                  child: Text(
                    '0',
                    style: TextStyle(fontSize: 72),
                  ),
                ),
              ],
            ),
            FilledButton(
              onPressed: () {},
              child: const Text(
                '0',
                style: TextStyle(fontSize: 72),
              ),
            ),
            // const Spacer(),
            Padding(
              padding: const EdgeInsets.all(32.0),
              child: Wrap(
                spacing: 16,
                runSpacing: 16,
                alignment: WrapAlignment.center,
                children: [
                  FilledButton(
                    onPressed: () {},
                    child: const Text(
                      '0',
                      style: TextStyle(fontSize: 72),
                    ),
                  ),
                  FilledButton(
                    onPressed: () {},
                    child: const Text(
                      '1',
                      style: TextStyle(fontSize: 72),
                    ),
                  ),
                  FilledButton(
                    onPressed: () {},
                    child: const Text(
                      '2',
                      style: TextStyle(fontSize: 72),
                    ),
                  ),
                  FilledButton(
                    onPressed: () {},
                    child: const Text(
                      '3',
                      style: TextStyle(fontSize: 72),
                    ),
                  ),
                  FilledButton(
                    onPressed: () {},
                    child: const Text(
                      '4',
                      style: TextStyle(fontSize: 72),
                    ),
                  ),
                  FilledButton(
                    onPressed: () {},
                    child: const Text(
                      '5',
                      style: TextStyle(fontSize: 72),
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                        content: Text('Venceu!'),
                        backgroundColor: Colors.green,
                      ));
                    },
                    child: const Text('IMPAR')),
                ElevatedButton(
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                        content: Text('Perdeu!'),
                        backgroundColor: Colors.red,
                      ));
                    },
                    child: const Text('PAR'))
              ],
            )
          ],
        ),
      ),
    );
  }
}

// 27/09 - William, Daniel, Caua, Chiara, Pedro Otavio, Pedro Beck, Guilerme, Carlao, 
// Vitor, Valdelaine, Tiago Barros, Tiago, Giovani
