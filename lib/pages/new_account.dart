import 'package:flutter/material.dart';

import 'demo_ini.dart';

class NewAccount extends StatefulWidget {
  const NewAccount({Key? key}) : super(key: key);

  @override
  State<NewAccount> createState() => _NewAccountState();
}

class _NewAccountState extends State<NewAccount> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          reverse: true,
          child: Container(
            color: Colors.white,
            child: Column(
              children: [
                Container(
                  alignment: Alignment.topLeft,
                  child: TextButton(
                    onPressed: () {
                      Navigator.of(context).pushReplacementNamed('/');
                    },
                    child: const Icon(
                      Icons.arrow_circle_left_outlined,
                      color: Color(0xff8E97FD),
                      size: 70,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Image.asset("lib/assets/images/logo2.png"),
                Container(
                  padding: const EdgeInsets.only(top: 35, left: 30),
                  alignment: Alignment.topLeft,
                  child: const Text(
                    "Crie sua conta",
                    style: TextStyle(
                        decoration: TextDecoration.none,
                        color: Colors.black87,
                        fontSize: 25),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Container(
                  padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
                  child: Column(
                    children: [
                      const TextField(
                        decoration: InputDecoration(
                          labelText: 'Nome completo',
                          labelStyle: TextStyle(color: Color(0xff8E97FD)),
                          prefixIcon: Icon(
                            Icons.person,
                            color: Color(0xff8E97FD),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xff8E97FD),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      const TextField(
                        decoration: InputDecoration(
                          labelText: 'Endereço de e-mail',
                          labelStyle: TextStyle(color: Color(0xff8E97FD)),
                          prefixIcon: Icon(
                            Icons.email,
                            color: Color(0xff8E97FD),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xff8E97FD),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      const TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          labelText: 'Senha',
                          labelStyle: TextStyle(
                            color: Color(0xff8E97FD),
                          ),
                          prefixIcon: Icon(
                            Icons.remove_red_eye_outlined,
                            color: Color(0xff8E97FD),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xff8E97FD),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.only(
                              left: 100, right: 100, top: 10, bottom: 10),
                          primary: const Color(0xffFFCF86),
                          elevation: 3,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16),
                          ),
                        ),
                        onPressed: () {},
                        child: const Text(
                          'Entrar',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontFamily: 'Varela-Regular',
                          ),
                        ),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: const Text(
                          "Esqueceu sua senha?",
                          style: TextStyle(color: Colors.black87),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
    ;
  }
}
