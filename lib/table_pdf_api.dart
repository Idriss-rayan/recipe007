import 'dart:io';

import 'package:pdf/widgets.dart';
import 'package:recipe/save_and_open_pdf.dart';

class User {
  final String name;
  final int age;

  const User({required this.name, required this.age});
}

class TablePdfApi {
  static Future<File> generateTablePdf() async {
    final pdf = Document();

    final headers = ['Name', 'Age'];

    final users = [
      const User(name: 'James', age: 19),
      const User(name: 'Sarah', age: 21),
      const User(name: 'Emma', age: 2),
    ];
    final data = users.map((user) => [user.name, user.age]).toList();

    pdf.addPage(
      Page(
        build: (context) => TableHelper.fromTextArray(
          data: data,
          headers: headers,
          cellAlignment: Alignment.center,
          tableWidth: TableWidth.max,
          headerHeight: 150,
          cellHeight: 100,
          border: TableBorder.all(width: 5),
          headerStyle: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
          cellStyle: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
      ),
    );
    return SaveAndOpenDocument.savePdf(name: 'table_pdf', pdf: pdf);
  }
}
