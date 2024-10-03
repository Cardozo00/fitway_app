import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:image_picker/image_picker.dart';

class ShowModalImagem extends StatefulWidget {
  const ShowModalImagem({super.key});

  @override
  State<ShowModalImagem> createState() => _ShowModalImagemState();
}

class _ShowModalImagemState extends State<ShowModalImagem> {
  adicionarFoto(ImageSource sorce) async {
    XFile? photo;

    final _imagePicker = ImagePicker();

    photo = await _imagePicker.pickImage(source: sorce);

    if (photo != null) {}
  }

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        ListTile(
          title: Text("Camera"),
          leading: FaIcon(FontAwesomeIcons.camera),
          onTap: () {},
        ),
        ListTile(
          title: Text("Galeria"),
          leading: FaIcon(FontAwesomeIcons.image),
          onTap: () {},
        ),
        ListTile(
          title: Text("Remover"),
          leading: FaIcon(FontAwesomeIcons.xmark),
          onTap: () {},
        )
      ],
    );
  }
}
