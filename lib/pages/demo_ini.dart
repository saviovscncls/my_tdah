import 'package:flutter/material.dart';
import 'package:my_tdah/pages/login.dart';
import 'package:my_tdah/pages/new_account.dart';

class DemoPage extends StatefulWidget {
  const DemoPage({Key? key}) : super(key: key);

  @override
  State<DemoPage> createState() => _DemoPageState();
}

class _DemoPageState extends State<DemoPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: const Color(0xff8E97FD),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Image.asset('lib/assets/images/logo.png'),
              const SizedBox(width: 10),
              Image.asset('lib/assets/images/imgopen.png'),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: const [
                    Text(
                      'Bem vindo',
                      style: TextStyle(
                          color: Color(0xffFFCF86),
                          fontSize: 30,
                          decoration: TextDecoration.none),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'O objetivo deste aplicativo é ajudar no dia a dia da pessoa com TDAH.',
                      style: TextStyle(
                        fontSize: 13,
                        color: Colors.white,
                        decoration: TextDecoration.none,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(left: 32, right: 32),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                      elevation: 5,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16))),
                  onPressed: () {
                    Navigator.of(context).pushReplacementNamed('/newAccount');
                  },
                  child: const Text(
                    'CRIAR CONTA',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 84),
                child: Row(
                  children: [
                    const Text(
                      "Não tem uma conta?",
                      style: TextStyle(
                          decoration: TextDecoration.none,
                          fontSize: 13,
                          color: Colors.white),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).pushReplacementNamed('/login');
                      },
                      child: const Text(
                        "Conecte-se",
                        style:
                            TextStyle(fontSize: 13, color: Color(0xffFFCF86)),
                        overflow: TextOverflow.ellipsis,
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
