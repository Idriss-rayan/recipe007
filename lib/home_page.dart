import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:recipe/image_pdf_api.dart';
import 'package:recipe/paragraph_pdf_api.dart';
import 'package:recipe/save_and_open_pdf.dart';
import 'package:recipe/simple_pdf_api.dart';
import 'package:recipe/table_pdf_api.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: () async {
              final simplePdfFile = await SimplePdfApi.genearateSimpleTextPdf(
                'Sample Text',
                'Flutter Developper',
              );
              SaveAndOpenDocument.openPdf(simplePdfFile);
            },
            child: const Text("Simple Pdf"),
          ),
          SizedBox(height: 24),
          ElevatedButton(
            onPressed: () async {
              final ParagraphPdf = await ParagraphPdfApi.generateParagraphPdf();
              SaveAndOpenDocument.openPdf(ParagraphPdf);
            },
            child: const Text("Paragraph pdf"),
          ),
          SizedBox(height: 24),
          ElevatedButton(
            onPressed: () async {
              final tablePdf = await TablePdfApi.generateTablePdf();
              SaveAndOpenDocument.openPdf(tablePdf);
            },
            child: const Text("table Pdf"),
          ),
          SizedBox(height: 24),
          ElevatedButton(
            onPressed: () async {
              final imagePdf = await ImagePdfApi.generateImagePdf();
              SaveAndOpenDocument.openPdf(imagePdf);
            },
            child: Text("Image Pdf"),
          ),
        ],
      ),
    );
  }
}
