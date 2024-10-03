import 'package:fitway_app/shared/input_decoration.dart';
import 'package:flutter/material.dart';

formularioConcluirCadastro() {
  return Wrap(
    children: [
      Form(
        child: Card(
          child: Column(
            children: [
              TextFormField(
                decoration: getAutenticationInputDecoration("Nome"),
              )
            ],
          ),
        ),
      )
    ],
  );
}
