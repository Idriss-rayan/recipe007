import 'dart:io';

import 'package:pdf/widgets.dart';

import 'save_and_open_pdf.dart';

class SimplePdfApi {
  static Future<File> genearateSimpleTextPdf(String text, String text2) async {
    final pdf = Document();

    pdf.addPage(
      Page(
        build: (_) => Center(
          child: Column(children: [
            Text(
              text,
              style: const TextStyle(fontSize: 48),
            ),
            Text(
              text2,
              style: const TextStyle(fontSize: 48),
            )
          ]),
        ),
      ),
    );
    return SaveAndOpenDocument.savePdf(name: "recipe.pdf", pdf: pdf);
  }
}
