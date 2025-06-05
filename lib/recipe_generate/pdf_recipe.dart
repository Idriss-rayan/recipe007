import 'dart:io';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:recipe/Learn_pdf/save_and_open_pdf.dart';

class PdfRecipe {
  Future<File> generateStyledReceiptPdf({
    required String fullName,
    required String email,
    required String phone,
    required String position,
    required String salary,
    required String issuedDate,
    required String description,
  }) async {
    final pdf = pw.Document();

    pw.Widget infoBox(String label, String value) {
      return pw.Container(
        margin: const pw.EdgeInsets.symmetric(vertical: 6),
        padding: const pw.EdgeInsets.all(12),
        decoration: pw.BoxDecoration(
          color: PdfColors.grey200,
          borderRadius: pw.BorderRadius.circular(6),
          border: pw.Border.all(color: PdfColors.grey600, width: 0.5),
        ),
        child: pw.RichText(
          text: pw.TextSpan(
            children: [
              pw.TextSpan(
                text: "$label: ",
                style: pw.TextStyle(fontWeight: pw.FontWeight.bold),
              ),
              pw.TextSpan(text: value),
            ],
          ),
        ),
      );
    }

    pdf.addPage(
      pw.Page(
        pageFormat: PdfPageFormat.a4,
        margin: pw.EdgeInsets.all(32),
        build: (pw.Context context) {
          return pw.Column(
            crossAxisAlignment: pw.CrossAxisAlignment.start,
            children: [
              pw.Center(
                child: pw.Container(
                  decoration: pw.BoxDecoration(
                    color: PdfColors.blue100,
                    borderRadius: pw.BorderRadius.all(pw.Radius.circular(25)),
                    border: pw.Border.all(color: PdfColors.black),
                  ),
                  width: double.infinity,
                  height: 100,
                  child: pw.Center(
                    child: pw.Text(
                      'REÇU DE PAIEMENT',
                      style: pw.TextStyle(
                        fontSize: 22,
                        fontWeight: pw.FontWeight.bold,
                        color: PdfColors.grey700,
                      ),
                    ),
                  ),
                ),
              ),
              pw.SizedBox(height: 30),
              pw.Container(
                decoration: pw.BoxDecoration(
                  color: PdfColors.grey100,
                  borderRadius: pw.BorderRadius.all(pw.Radius.circular(25)),
                  border: pw.Border.all(color: PdfColors.black),
                ),
                width: double.infinity,
                height: 582,
                child: pw.Padding(
                  padding: pw.EdgeInsets.only(
                      top: 30, bottom: 20, left: 20, right: 20),
                  child: pw.Column(
                    crossAxisAlignment: pw.CrossAxisAlignment.start,
                    children: [
                      pw.SizedBox(height: 50),
                      pw.RichText(
                        text: pw.TextSpan(
                          text: 'This is to certify that Mr./Ms.',
                          style: pw.TextStyle(
                              lineSpacing: 16,
                              fontSize: 14,
                              color: PdfColors.black),
                          children: [
                            pw.TextSpan(
                              text: '  $fullName '.toUpperCase(),
                              style: pw.TextStyle(
                                lineSpacing: 16,
                                fontWeight: pw.FontWeight.bold,
                              ),
                            ),
                            pw.TextSpan(
                              text: 'has duly paid to Mr./Ms.',
                            ),
                            pw.TextSpan(
                              text: ' $fullName '.toUpperCase(),
                              style: pw.TextStyle(
                                lineSpacing: 16,
                                fontWeight: pw.FontWeight.bold,
                              ),
                            ),
                            pw.TextSpan(
                              text: 'employed as',
                              style: pw.TextStyle(
                                lineSpacing: 16,
                                //color: PdfColors.green300,
                                //fontWeight: pw.FontWeight.bold,
                              ),
                            ),
                            pw.TextSpan(
                              text: ' $position',
                              style: pw.TextStyle(
                                lineSpacing: 16,
                                fontWeight: pw.FontWeight.bold,
                              ),
                            ),
                            pw.TextSpan(
                              text: ' the total amount of',
                              style: pw.TextStyle(
                                lineSpacing: 16,
                                //color: PdfColors.green300,
                                //fontWeight: pw.FontWeight.bold,
                              ),
                            ),
                            pw.TextSpan(
                              text: ' $salary',
                              style: pw.TextStyle(
                                lineSpacing: 16,
                                color: PdfColors.blue900,
                                fontWeight: pw.FontWeight.bold,
                                fontStyle: pw.FontStyle.italic,
                              ),
                            ),
                            pw.TextSpan(
                              text:
                                  '  This payment corresponds to the salary for the period of works.',
                              style: pw.TextStyle(
                                lineSpacing: 16,
                                //color: PdfColors.green300,
                                //fontWeight: pw.FontWeight.bold,
                              ),
                            ),
                            pw.TextSpan(
                              text: '\n\n',
                              style: pw.TextStyle(
                                lineSpacing: 16,
                                //color: PdfColors.green300,
                                //fontWeight: pw.FontWeight.bold,
                              ),
                            ),
                            pw.TextSpan(
                              text: 'The payment was made on',
                              style: pw.TextStyle(
                                lineSpacing: 16,
                                //color: PdfColors.green300,
                                //fontWeight: pw.FontWeight.bold,
                              ),
                            ),
                            //
                            pw.TextSpan(
                              text: ' $issuedDate CASH ',
                              style: pw.TextStyle(
                                lineSpacing: 16,
                                fontWeight: pw.FontWeight.bold,
                              ),
                            ),
                            //
                            pw.TextSpan(
                              text:
                                  'and covers all dues owed to the employee for the aforementioned period, including base salary and any applicable allowances or bonuses.',
                              style: pw.TextStyle(
                                lineSpacing: 16,
                                //color: PdfColors.green300,
                                //fontWeight: pw.FontWeight.bold,
                              ),
                            ),
                            //
                            pw.TextSpan(
                              text: '\n\n',
                              style: pw.TextStyle(
                                lineSpacing: 16,
                                //color: PdfColors.green300,
                                //fontWeight: pw.FontWeight.bold,
                              ),
                            ),
                            pw.TextSpan(
                              text:
                                  'This receipt is provided upon request of the employee and serves as formal acknowledgment of payment received. Any further queries or clarifications regarding this payment should be directed to the HR or payroll office of ',
                              style: pw.TextStyle(
                                lineSpacing: 16,
                                //color: PdfColors.green300,
                                //fontWeight: pw.FontWeight.bold,
                              ),
                            ),
                            pw.TextSpan(
                              text: 'Payroll Administrator. ',
                              style: pw.TextStyle(
                                lineSpacing: 16,
                                fontWeight: pw.FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              pw.Spacer(),
              pw.Divider(),
              pw.Text(
                'Thank you for your attention.',
                style: pw.TextStyle(fontStyle: pw.FontStyle.italic),
              ),
            ],
          );
        },
      ),
    );

    return SaveAndOpenDocument.savePdf(name: "${fullName}.pdf", pdf: pdf);
  }
}
