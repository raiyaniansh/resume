import 'dart:io';
import 'package:path_provider/path_provider.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as p1;
import 'package:resume/modal.dart';

Future<void> resume2(Modal data) async {
  var pdf1 = p1.Document();
  final img= p1.MemoryImage(
    File('${data.img}').readAsBytesSync(),
  );
  p1.EdgeInsets.all(10);
  p1.PageOrientation.portrait;
  PdfPageFormat.a4;
  pdf1.addPage(p1.Page(
    pageFormat: PdfPageFormat.a4,
    margin: p1.EdgeInsets.all(0),
    build: (context) {
      return p1.Row(
        children: [
          p1.Container(
            width: 225,
            height: 900,
            color: PdfColors.black,
            child: p1.Padding(
              padding: const p1.EdgeInsets.only(top: 10, left: 5),
              child: p1.Column(
                crossAxisAlignment: p1.CrossAxisAlignment.start,
                children: [
                  p1.SizedBox(
                    height: 10,
                  ),
                  p1.Align(
                    alignment: p1.Alignment.center,
                    child: p1.Container(
                        height: 200,
                        width: 200,
                        decoration: p1.BoxDecoration(
                          shape: p1.BoxShape.circle,
                          image: p1.DecorationImage(image: img),
                        )
                    ),
                  ),
                  p1.SizedBox(
                    height: 20,
                  ),
                  p1.Container(
                    height: 30,
                    width: 225,
                    decoration: p1.BoxDecoration(
                        color: PdfColors.blue,
                        borderRadius: p1.BorderRadius.only(
                            topLeft: p1.Radius.circular(15),
                            bottomLeft: p1.Radius.circular(15))),
                    child: p1.Padding(
                      padding: const p1.EdgeInsets.only(
                          left: 15, top: 5, bottom: 5),
                      child: p1.Text(
                        "ABOUT ME",
                        style: p1.TextStyle(
                            color: PdfColors.white,
                            fontWeight: p1.FontWeight.bold,
                            letterSpacing: 1),
                      ),
                    ),
                  ),
                  p1.SizedBox(
                    height: 10,
                  ),
                  p1.Padding(
                    padding:
                    const p1.EdgeInsets.only(right: 10, left: 8),
                    child: p1.Text("${data.ab}",
                        style: p1.TextStyle(color:PdfColors.white)),
                  ),
                  p1.SizedBox(
                    height: 20,
                  ),
                  p1.Container(
                    width: 225,
                    height: 30,
                    decoration: p1.BoxDecoration(
                        color: PdfColors.blue,
                        borderRadius: p1.BorderRadius.only(
                            topLeft: p1.Radius.circular(15),
                            bottomLeft: p1.Radius.circular(15))),
                    child: p1.Padding(
                      padding: const p1.EdgeInsets.only(
                          left: 15, top: 5, bottom: 5),
                      child: p1.Text(
                        "CONTACT ME",
                        style: p1.TextStyle(
                            color: PdfColors.white,
                            fontWeight: p1.FontWeight.bold,
                            letterSpacing: 1),
                      ),
                    ),
                  ),
                  p1.SizedBox(
                    height: 10,
                  ),
                  p1.Padding(
                    padding:
                    const p1.EdgeInsets.only(left: 10, right: 8),
                    child: p1.Row(
                      children: [
                        p1.Container(
                          height: 12,
                          width: 12,
                          decoration: p1.BoxDecoration(
                              color: PdfColors.white,
                              shape: p1.BoxShape.circle),
                          // child: Icon(Icons.call, size: 10),
                        ),
                        p1.Text(
                          "  +91 ${data.phone}",
                          style: p1.TextStyle(
                              color: PdfColors.white, fontSize: 11),
                        )
                      ],
                    ),
                  ),
                  p1.SizedBox(
                    height: 8,
                  ),
                  p1.Padding(
                    padding:
                    const p1.EdgeInsets.only(left: 10, right: 8),
                    child: p1.Row(
                      children: [
                        p1.Container(
                          height: 12,
                          width: 12,
                          decoration: p1.BoxDecoration(
                              color: PdfColors.white,
                              shape: p1.BoxShape.circle),
                          // child: Icon(Icons.mail, size: 10),
                        ),
                        p1.Text(
                          "  ${data.email}",
                          style: p1.TextStyle(
                              color: PdfColors.white, fontSize: 11),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          p1.Container(
            width: 215,
            height: 900,
            color: PdfColors.white,
            child: p1.Column(
              crossAxisAlignment: p1.CrossAxisAlignment.start,
              children: [
                p1.SizedBox(
                  height: 35,
                ),
                p1.Container(
                  height: 60,
                  width: 200,
                  child: p1.Padding(
                    padding: const p1.EdgeInsets.only(left: 10),
                    child: p1.Column(
                      crossAxisAlignment: p1.CrossAxisAlignment.start,
                      mainAxisAlignment: p1.MainAxisAlignment.start,
                      children: [
                        p1.Text(
                          "${data.fn} ${data.ln}",
                          style: p1.TextStyle(
                              fontSize: 25,
                              letterSpacing: 2,
                              fontWeight: p1.FontWeight.bold),
                        ),
                        p1.Text(
                          "${data.profession}",
                          style: p1.TextStyle(fontSize: 18),
                        ),
                      ],
                    ),
                  ),
                ),
                p1.Padding(
                  padding: const p1.EdgeInsets.all(10),
                  child: p1.Column(
                    crossAxisAlignment: p1.CrossAxisAlignment.start,
                    children: [
                      p1.SizedBox(
                        height: 10,
                      ),
                      p1.Text(
                        "CAREER",
                        style: p1.TextStyle(
                            color: PdfColors.blue,
                            fontWeight: p1.FontWeight.bold,
                            letterSpacing: 1),
                      ),
                      p1.SizedBox(
                        height: 3,
                      ),
                      p1.Container(
                        child: p1.Row(
                          crossAxisAlignment:
                          p1.CrossAxisAlignment.start,
                          children: [
                            p1.Text("${data.ex}",
                                style: p1.TextStyle(
                                    color: PdfColors.black,
                                    fontSize: 16)),
                            p1.SizedBox(
                              width: 5,
                            ),
                            p1.Column(
                              crossAxisAlignment:
                              p1.CrossAxisAlignment.start,
                              children: [
                                p1.Text("${data.com}",
                                    style: p1.TextStyle(
                                        color: PdfColors.black,
                                        fontSize: 16,
                                        fontWeight: p1.FontWeight.bold)),
                                p1.Text("${data.pos}",
                                    style: p1.TextStyle(
                                        color: PdfColors.black,
                                        fontSize: 16)),
                                p1.Text("${data.loc}",
                                    style: p1.TextStyle(
                                        color: PdfColors.black,
                                        fontSize: 16)),
                              ],
                            ),
                          ],
                        ),
                      ),
                      p1.SizedBox(
                        height: 20,
                      ),
                      p1.Text(
                        "EDUCATION",
                        style: p1.TextStyle(
                            color: PdfColors.blue,
                            fontWeight: p1.FontWeight.bold,
                            letterSpacing: 1),
                      ),
                      p1.SizedBox(
                        height: 3,
                      ),
                      p1.Container(
                        child: p1.Row(
                          crossAxisAlignment:
                          p1.CrossAxisAlignment.start,
                          children: [
                            p1.Text("${data.ps}",
                                style: p1.TextStyle(
                                    color: PdfColors.black,
                                    fontSize: 16)),
                            p1.SizedBox(
                              width: 5,
                            ),
                            p1.Column(
                              crossAxisAlignment:
                              p1.CrossAxisAlignment.start,
                              children: [
                                p1.Text("${data.scl}",
                                    style: p1.TextStyle(
                                        color: PdfColors.black,
                                        fontSize: 16,
                                        fontWeight: p1.FontWeight.bold)),
                                p1.Text("${data.degree}",
                                    style: p1.TextStyle(
                                        color: PdfColors.black,
                                        fontSize: 16)),
                                p1.SizedBox(
                                  height: 5,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      p1.SizedBox(
                        height: 20,
                      ),
                      p1.Text(
                        "SIKKLS",
                        style: p1.TextStyle(
                            color: PdfColors.blue,
                            fontWeight: p1.FontWeight.bold,
                            letterSpacing: 1),
                      ),
                      p1.SizedBox(
                        height: 3,
                      ),
                      p1.Row(
                        children: [
                          p1.SizedBox(
                            width: 67,
                          ),
                          p1.Column(
                            crossAxisAlignment:
                            p1.CrossAxisAlignment.start,
                            children: [
                              p1.Text(
                                "${data.sk}",
                                style: p1.TextStyle(
                                    color: PdfColors.black,
                                    fontSize: 16),
                              ),
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      );
    },
  ));

  Directory? dir = await getExternalStorageDirectory();
  var file = File("${dir!.path}/myresume.pdf");
  print(file.path);
  await file.writeAsBytes(await pdf1.save());
}
