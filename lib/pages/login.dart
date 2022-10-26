import 'package:flutter/material.dart';
import 'package:my_tdah/pages/demo_ini.dart';

import 'new_account.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
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
                const SizedBox(height: 20),
                Image.asset("lib/assets/images/logo2.png"),
                Container(
                  padding: const EdgeInsets.only(top: 35, left: 30),
                  alignment: Alignment.topLeft,
                  child: const Text(
                    "Faça seu login",
                    style: TextStyle(
                        decoration: TextDecoration.none,
                        color: Colors.black87,
                        fontSize: 25),
                  ),
                ),
                const SizedBox(height: 30),
                Container(
                  padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
                  child: Column(
                    children: [
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
                      const SizedBox(
                        height: 30,
                      ),
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
                const SizedBox(height: 30),
                Container(
                  alignment: Alignment.topLeft,
                  child: Row(
                    children: [
                      Image.asset('lib/assets/images/Arrow.png'),
                      const SizedBox(width: 20),
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).pushReplacementNamed('/newAccount');
                        },
                        child: const Text(
                          'Crie sua conta',
                          style: TextStyle(
                            color: Color(0xff9EA6FD),
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
