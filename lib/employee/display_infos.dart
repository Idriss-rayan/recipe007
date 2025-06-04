import 'package:flutter/material.dart';
import 'package:recipe/Learn_pdf/save_and_open_pdf.dart';
import 'package:recipe/button/download_button.dart';
import 'package:recipe/employee.dart';
import 'package:recipe/recipe_generate/pdf_recipe.dart';

class DisplayInfos extends StatefulWidget {
  final Employee e;
  const DisplayInfos({super.key, required this.e});

  @override
  State<DisplayInfos> createState() => _DisplayInfosState();
}

class _DisplayInfosState extends State<DisplayInfos> {
  final pdfrecipe = PdfRecipe();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: Container(
                width: double.infinity,
                height: 160,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Color(0xFF4ADE80), // vert doux
                      Color(0xFF60A5FA), // bleu doux
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                ),
                child: Stack(
                  children: [
                    // Cercle déco en arrière-plan
                    Positioned(
                      right: -60,
                      top: -40,
                      child: Container(
                        width: 120,
                        height: 120,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white.withOpacity(0.1),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 20,
                      top: 20,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          SizedBox(height: 26),
                          Text(
                            "Download",
                            style: TextStyle(
                              fontSize: 45,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(137, 255, 255, 255),
                            ),
                          ),
                          SizedBox(height: 6),
                          Row(
                            children: [
                              SizedBox(width: 50),
                              Text(
                                " ",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(112, 2, 1, 58),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      bottom: 15,
                      right: 20,
                      child: ElevatedButton.icon(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          foregroundColor: Colors.blue,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                        onPressed: () {},
                        icon: const Icon(Icons.arrow_forward_ios, size: 16),
                        label: const Text("Ad"),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(0.0),
                      child: Container(
                        width: double.infinity,
                        height: double.infinity,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              const Color.fromARGB(255, 4, 161, 124),
                              const Color.fromARGB(255, 90, 100, 240),
                            ],
                          ),
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Container(
                        width: double.infinity,
                        height: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(color: Colors.black),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 5,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                padding: EdgeInsets.all(12),
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                    colors: [Colors.greenAccent, Colors.white],
                                  ),
                                  borderRadius: BorderRadius.circular(15),
                                  border: Border.all(color: Colors.black),
                                ),
                                width: double.infinity,
                                child: Padding(
                                  padding: const EdgeInsets.all(18.0),
                                  child: Row(
                                    children: [
                                      Text(
                                        'full name:'.toUpperCase(),
                                        overflow: TextOverflow.ellipsis,
                                        maxLines: 1,
                                        style: TextStyle(
                                          fontSize: 15,
                                          color: const Color.fromARGB(
                                              139, 0, 0, 0),
                                        ),
                                      ),
                                      Expanded(
                                        child: Text(
                                          ' ${widget.e.firstName} ${widget.e.lastName}',
                                          overflow: TextOverflow.fade,
                                          maxLines: 1,
                                          style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold,
                                            color: const Color.fromARGB(
                                                139, 0, 0, 0),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                padding: EdgeInsets.all(12),
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                    colors: [Colors.greenAccent, Colors.white],
                                  ),
                                  borderRadius: BorderRadius.circular(15),
                                  border: Border.all(color: Colors.black),
                                ),
                                width: double.infinity,
                                child: Padding(
                                  padding: const EdgeInsets.all(18.0),
                                  child: Row(
                                    children: [
                                      Text(
                                        'salary:'.toUpperCase(),
                                        style: TextStyle(
                                          fontSize: 15,
                                          color: const Color.fromARGB(
                                              139, 0, 0, 0),
                                        ),
                                      ),
                                      Expanded(
                                        child: Text(
                                          ' ${widget.e.salary}'.toUpperCase(),
                                          style: TextStyle(
                                            overflow: TextOverflow.fade,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15,
                                            color: const Color.fromARGB(
                                                139, 0, 0, 0),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                padding: EdgeInsets.all(12),
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                    colors: [Colors.greenAccent, Colors.white],
                                  ),
                                  borderRadius: BorderRadius.circular(15),
                                  border: Border.all(color: Colors.black),
                                ),
                                width: double.infinity,
                                child: Padding(
                                  padding: const EdgeInsets.all(18.0),
                                  child: Row(
                                    children: [
                                      Text(
                                        maxLines: 1,
                                        'e-mail:'.toUpperCase(),
                                        style: TextStyle(
                                          fontSize: 15,
                                          color: const Color.fromARGB(
                                              139, 0, 0, 0),
                                        ),
                                      ),
                                      Expanded(
                                        child: Text(
                                          overflow: TextOverflow.fade,
                                          maxLines: 1,
                                          ' ${widget.e.email}',
                                          style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold,
                                            color: const Color.fromARGB(
                                                139, 0, 0, 0),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                padding: EdgeInsets.all(12),
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                    colors: [Colors.greenAccent, Colors.white],
                                  ),
                                  borderRadius: BorderRadius.circular(15),
                                  border: Border.all(color: Colors.black),
                                ),
                                width: double.infinity,
                                child: Padding(
                                  padding: const EdgeInsets.all(18.0),
                                  child: Row(
                                    children: [
                                      Text(
                                        'phone No:'.toUpperCase(),
                                        style: TextStyle(
                                          fontSize: 15,
                                          color: const Color.fromARGB(
                                              139, 0, 0, 0),
                                        ),
                                      ),
                                      Expanded(
                                        child: Text(
                                          ' ${widget.e.phone}',
                                          style: TextStyle(
                                            overflow: TextOverflow.fade,
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold,
                                            color: const Color.fromARGB(
                                                139, 0, 0, 0),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                padding: EdgeInsets.all(12),
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                    colors: [Colors.greenAccent, Colors.white],
                                  ),
                                  borderRadius: BorderRadius.circular(15),
                                  border: Border.all(color: Colors.black),
                                ),
                                width: double.infinity,
                                child: Padding(
                                  padding: const EdgeInsets.all(18.0),
                                  child: Row(
                                    children: [
                                      Text(
                                        ' position:'.toUpperCase(),
                                        style: TextStyle(
                                          fontSize: 15,
                                          color: const Color.fromARGB(
                                              139, 0, 0, 0),
                                        ),
                                      ),
                                      Expanded(
                                        child: Text(
                                          ' ${widget.e.position}',
                                          style: TextStyle(
                                            overflow: TextOverflow.fade,
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold,
                                            color: const Color.fromARGB(
                                                139, 0, 0, 0),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: DownloadButton(
                                    onPressed: () async {
                                      final simplePdfFile = await pdfrecipe
                                          .generateStyledReceiptPdf(
                                        fullName:
                                            '${widget.e.firstName} ${widget.e.lastName}',
                                        email: ' ${widget.e.email}',
                                        phone: ' ${widget.e.phone}',
                                        position: ' ${widget.e.position}',
                                        salary: ' ${widget.e.salary}',
                                        issuedDate: ' ${widget.e.email}',
                                        description: ' ${widget.e.email}',
                                      );
                                      SaveAndOpenDocument.openPdf(
                                          simplePdfFile);
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
