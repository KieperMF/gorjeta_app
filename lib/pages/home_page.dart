import 'package:flutter/material.dart';
import 'package:gorjeta_certa/operations/calcule_tip.dart';
import 'package:gorjeta_certa/widgets/alert.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final _percentageInput = TextEditingController();
    final _paymentInput = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: const Text("Gorjeta Certa"),
        backgroundColor: Colors.blue[700],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              width: 300,
              child: TextField(
                controller: _percentageInput,
                decoration: const InputDecoration(
                    hintText: "Porcentagem da gorjeta..."),
                keyboardType: TextInputType.number,
              ),
            ),
            const Padding(padding: EdgeInsets.all(10)),
            SizedBox(
              width: 300,
              child: TextField(
                controller: _paymentInput,
                decoration: const InputDecoration(
                    hintText: "Valor total da conta..."),
                keyboardType: TextInputType.number,
              ),
            ),
            const Padding(padding: EdgeInsets.all(10)),
            ElevatedButton(
                onPressed: () {
                  if (_paymentInput.text.isEmpty ||
                      _percentageInput.text.isEmpty) {
                    alert(context);
                  } else {
                    tip(_percentageInput.text, _paymentInput.text);
                    setState(() {});
                  }
                },
                child: const Text("Calcular")),
                const Padding(padding: EdgeInsets.all(10)),
            if (valueTip != null) ...[Text("Valor da Gorjeta: $valueTip", style:const TextStyle(fontSize: 16),)]
          ],
        ),
      ),
    );
  }
}
