// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MoviesHeader extends StatelessWidget {
  const MoviesHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: Get.width,
      height: 196,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          SizedBox(
              width: Get.width,
              child: Image.asset(
                'assets/images/header.png',
                fit: BoxFit.cover,
              )),
          Container(
            width: Get.width * .9,
            padding: const EdgeInsets.only(bottom: 20),
            child: TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30)),
                  fillColor: Colors.white,
                  filled: true,
                  labelText: 'Procurar Filmes',
                  labelStyle: const TextStyle(fontSize: 15,color: Colors.grey),
                  prefixIcon: const Icon(Icons.search),
                  contentPadding: EdgeInsets.zero,
                  floatingLabelBehavior: FloatingLabelBehavior.never),
            ),
          )
        ],
      ),
    );
  }
}
