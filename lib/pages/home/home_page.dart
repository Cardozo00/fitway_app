import 'package:fitway_app/pages/home/missoes_diarias.dart';
import 'package:fitway_app/shared/show_modal_imagem.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Material(
              elevation: 7,
              borderRadius: BorderRadius.circular(7),
              child: Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        InkWell(
                          onTap: () {
                            showModalBottomSheet(
                                context: context,
                                builder: (_) => ShowModalImagem());
                          },
                          child: CircleAvatar(
                            radius: 25,
                            child: Icon(Icons.person),
                          ),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Text(
                          "Ola, bruno",
                          style: TextStyle(fontSize: 20),
                        )
                      ],
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(size: 30, Icons.notifications_none))
                  ],
                ),
              ),
            ),
            Expanded(
                child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              child: ListView(
                children: [missoesDiarias()],
              ),
            ))
          ],
        ),
      ),
    );
  }
}
