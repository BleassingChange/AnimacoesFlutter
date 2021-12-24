// ignore_for_file: file_names, sized_box_for_whitespace, prefer_const_constructors, unused_field, unused_element, avoid_types_as_parameter_names, non_constant_identifier_names, avoid_web_libraries_in_flutter, unused_import, avoid_print, duplicate_ignore

import 'dart:html';

import 'package:flutter/material.dart';
import 'package:hovering/hovering.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: Scaffold(
        appBar: AppBar(title: const Text(_title)),
        body: const Center(
          child: ContainerImage(),
        ),
      ),
    );
  }
}

class ContainerImage extends StatefulWidget {
  const ContainerImage({Key? key}) : super(key: key);

  @override
  _ContainerImageState createState() => _ContainerImageState();
}

class _ContainerImageState extends State<ContainerImage> {
  final _key = GlobalKey<ScaffoldState>();
  late double tamanho = 200;

  void aumentar() {
    setState(() {
      tamanho = tamanho + 50;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _key,
      body: Column(
        children: [
          Center(
              child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: HoverWidget(
                    hoverChild: Container(
                      width: 200,
                      height: tamanho,
                      decoration: BoxDecoration(
                        image: DecorationImage(image: 
                        AssetImage('Assets/Eu.jpeg')
                        )
                      ),
                      
                    ),
                    // ignore: deprecated_member_use
                    onHover: (event) {
                      if (tamanho == 200) {
                        setState(() {
                          tamanho = 150;
                        });

                        // ignore: avoid_print
                        print(tamanho);
                      } else {
                          setState(() {
                          tamanho = 150;

                          });
                      
                    }

                    },
                    child: Container(
                      height: 200,
                      width: 200,
                      decoration:BoxDecoration(
                        image: DecorationImage(image: 
                        AssetImage('Assets/Eu.jpeg')
                        ),
                      )
                      
                    ),
                  ))),
        ],
      ),
    );
  }
}
