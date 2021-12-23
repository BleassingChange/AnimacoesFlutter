// ignore_for_file: file_names, prefer_const_constructors, avoid_print

// ignore: avoid_web_libraries_in_flutter, unused_import
import 'dart:html';

import 'package:flutter/material.dart';

class Principal extends StatefulWidget {
  const Principal({Key? key}) : super(key: key);

  @override
  State<Principal> createState() => _PrincipalState();
}

class _PrincipalState extends State<Principal> {
  double tamanho = 50;

  void aumentar() {
    setState(() {
      tamanho = tamanho + 300;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Center(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            InkWell(
              onTap: () {
                aumentar();
                print(tamanho);
              },
              child: Container(
                width: 300,
                height: tamanho,
                color: Colors.yellow,
              ),
            ),
          ],
        ),
      ),
    )));
  }
}
