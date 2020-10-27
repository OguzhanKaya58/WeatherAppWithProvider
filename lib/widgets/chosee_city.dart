import 'dart:ui';
import 'package:flutter/material.dart';

class SehirSec extends StatefulWidget {
  @override
  _SehirSecState createState() => _SehirSecState();
}

class _SehirSecState extends State<SehirSec> {
  final _textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Şehirler"),
      ),
      body: Column(
        children: [
          Form(
              child: Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    controller: _textController,
                    decoration: InputDecoration(
                      labelText: "Şehir",
                      hintText: "Lütfen Şehir Seç...",
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
              ),
              IconButton(
                  icon: Icon(Icons.arrow_forward),
                  onPressed: () {
                    Navigator.pop(context, _textController.text);
                  }),
            ],
          )),
        ],
      ),
    );
  }
}
