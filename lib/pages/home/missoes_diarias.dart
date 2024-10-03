import 'package:fitway_app/repository/missao_diaria_repository.dart';
import 'package:flutter/material.dart';

missoesDiarias() {
  bool fezMissao = false;
  var listaMissoes = [];
  var listaMissoesRepository = MissaoDiariaRepository();
  listaMissoes = listaMissoesRepository.retornarMissoesDiarias();
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        "Missões diárias",
        style: TextStyle(fontSize: 18),
      ),
      SizedBox(
        height: 10,
      ),
      // Column(
      //     children: listaMissoes
      //         .map((e) => CheckboxListTile(
      //             title: Text(e),
      //             value: listaMissoes.contains(e),
      //             onChanged: (value) {}))
      //         .toList()
      Container(
          alignment: Alignment.centerLeft,
          width: double.infinity,
          child: Card(
              child: Column(
            children: listaMissoes.map((e) {
              return Row(
                children: [
                  Checkbox(
                      fillColor: WidgetStatePropertyAll(
                          fezMissao == true ? Colors.green : Colors.white),
                      value: false,
                      onChanged: (value) {}),
                  Text(e)
                ],
              );
            }).toList(),
          ))),

      // ),
      // SizedBox(
      //   height: 5,
      // ),
      // Container(
      //     alignment: Alignment.centerLeft,
      //     width: double.infinity,
      //     child: Card(
      //         child: Row(
      //       children: [
      //         Checkbox(value: true, onChanged: (value) {}),
      //         Text("Fazer uma hora de esteira")
      //       ],
      //     )))
    ],
  );
}
