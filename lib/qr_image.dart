import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class QRImage extends StatelessWidget {
  const QRImage(this.controller, {super.key});

  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter + QR code'),
        centerTitle: true,
      ),
      body: Center(
        child: QrImageView(
          data: controller.text,
          size: 280,
          // create a new set of styling option
          embeddedImageStyle: const QrEmbeddedImageStyle(
            size: Size(
              100,
              100,
            ),
          ),
        ),
      ),
    );
  }
}