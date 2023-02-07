import 'dart:io';
import 'package:path_provider/path_provider.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as p1;
import 'package:resume/modal.dart';

Future<void> resume3(Modal data) async {
  var pdf1 = p1.Document();
  final img = p1.MemoryImage(
    File('${data.img}').readAsBytesSync(),
  );
  p1.EdgeInsets.all(10);
  p1.PageOrientation.portrait;
  PdfPageFormat.a4;
  pdf1.addPage(p1.Page(
    pageFormat: PdfPageFormat.a4,
    margin: p1.EdgeInsets.all(0),
    build: (context) {
      return p1.Container(
          height: 900,
          width: double.infinity,
          decoration: p1.BoxDecoration(color: PdfColors.grey900),
          child: p1.Row(
            children: [
              p1.Container(
                width: 225,
                height: 900,
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
                            )),
                      ),
                      p1.SizedBox(
                        height: 20,
                      ),
                      p1.Container(
                        width: 170,
                        child: p1.Padding(
                          padding: const p1.EdgeInsets.only(
                              left: 10, top: 5, bottom: 2),
                          child: p1.Text(
                            "CONTACT ME",
                            style: p1.TextStyle(
                                color: PdfColors.white,
                                fontWeight: p1.FontWeight.bold,
                                letterSpacing: 1),
                          ),
                        ),
                      ),
                      p1.Padding(
                        padding: const p1.EdgeInsets.only(left: 10),
                        child: p1.Container(
                          width: 25,
                          height: 2,
                          decoration: p1.BoxDecoration(
                              borderRadius: p1.BorderRadius.circular(1),
                              color: PdfColors.white),
                        ),
                      ),
                      p1.SizedBox(
                        height: 10,
                      ),
                      p1.Padding(
                        padding: const p1.EdgeInsets.only(left: 10, right: 8),
                        child: p1.Row(
                          children: [
                            // Icon(Icons.call,color: Colors.white, size: 15),
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
                        padding: const p1.EdgeInsets.only(left: 10, right: 8),
                        child: p1.Row(
                          children: [
                            // Icon(Icons.mail, size: 15,color: Colors.white),
                            p1.Text(
                              "  ${data.email}",
                              style: p1.TextStyle(
                                  color: PdfColors.white, fontSize: 11),
                            ),
                          ],
                        ),
                      ),
                      p1.Padding(
                        padding: const p1.EdgeInsets.only(
                            left: 10, right: 10, top: 6, bottom: 5),
                        child: p1.Container(
                          width: double.infinity,
                          height: 1,
                          color: PdfColors.black,
                        ),
                      ),
                      p1.Container(
                        width: 170,
                        child: p1.Padding(
                          padding: const p1.EdgeInsets.only(
                              left: 10, top: 5, bottom: 2),
                          child: p1.Text(
                            "EDUCATION",
                            style: p1.TextStyle(
                                color: PdfColors.white,
                                fontWeight: p1.FontWeight.bold,
                                letterSpacing: 1),
                          ),
                        ),
                      ),
                      p1.Padding(
                        padding: const p1.EdgeInsets.only(left: 10),
                        child: p1.Container(
                          width: 25,
                          height: 2,
                          decoration: p1.BoxDecoration(
                              borderRadius: p1.BorderRadius.circular(1),
                              color: PdfColors.white),
                        ),
                      ),
                      p1.SizedBox(
                        height: 10,
                      ),
                      p1.Padding(
                        padding: const p1.EdgeInsets.only(left: 10),
                        child: p1.Container(
                          child: p1.Column(
                            crossAxisAlignment: p1.CrossAxisAlignment.start,
                            children: [
                              p1.Text("${data.ps}",
                                  style: p1.TextStyle(
                                      color: PdfColors.white,
                                      fontSize: 16,
                                      fontWeight: p1.FontWeight.bold)),
                              p1.Text("${data.scl}",
                                  style: p1.TextStyle(
                                      color: PdfColors.white, fontSize: 16)),
                              p1.Text("${data.degree}",
                                  style: p1.TextStyle(
                                      color: PdfColors.white, fontSize: 16)),
                              p1.SizedBox(
                                width: 5,
                              ),
                              p1.SizedBox(
                                height: 5,
                              ),
                            ],
                          ),
                        ),
                      ),
                      p1.Padding(
                        padding: const p1.EdgeInsets.only(
                            left: 10, right: 10, top: 6, bottom: 5),
                        child: p1.Container(
                          width: double.infinity,
                          height: 1,
                          color: PdfColors.black,
                        ),
                      ),
                      p1.Container(
                        width: 170,
                        child: p1.Padding(
                          padding: const p1.EdgeInsets.only(
                              left: 10, top: 5, bottom: 2),
                          child: p1.Text(
                            "SKILLS",
                            style: p1.TextStyle(
                                color: PdfColors.white,
                                fontWeight: p1.FontWeight.bold,
                                letterSpacing: 1),
                          ),
                        ),
                      ),
                      p1.Padding(
                        padding: const p1.EdgeInsets.only(left: 10),
                        child: p1.Container(
                          width: 25,
                          height: 2,
                          decoration: p1.BoxDecoration(
                              borderRadius: p1.BorderRadius.circular(1),
                              color: PdfColors.white),
                        ),
                      ),
                      p1.SizedBox(
                        height: 10,
                      ),
                      p1.Padding(
                        padding: const p1.EdgeInsets.only(left: 10),
                        child: p1.Row(
                          children: [
                            p1.Text(
                              "${data.sk}",
                              style: p1.TextStyle(
                                  color: PdfColors.white, fontSize: 16),
                            ),
                            p1.SizedBox(
                              width: 5,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              p1.Container(
                width: 500,
                height: 800,
                color: PdfColors.white,
                child: p1.Padding(
                  padding: const p1.EdgeInsets.all(10),
                  child: p1.Column(
                    crossAxisAlignment: p1.CrossAxisAlignment.start,
                    children: [
                      p1.SizedBox(
                        height: 20,
                      ),
                      p1.Row(
                        children: [
                          p1.Stack(
                            children: [
                              p1.Container(
                                height: 80,
                                width: 200,
                                decoration: p1.BoxDecoration(
                                    border:
                                        p1.Border.all(color: PdfColors.black)),
                              ),
                              p1.Positioned(
                                  bottom: 0,
                                  left: -3,
                                  child: p1.Column(
                                    crossAxisAlignment:
                                        p1.CrossAxisAlignment.start,
                                    children: [
                                      p1.Text(
                                        " ${data.fn}     ",
                                        style: p1.TextStyle(
                                            fontWeight: p1.FontWeight.bold,
                                            fontSize: 25,
                                            background: p1.BoxDecoration(
                                                color: PdfColors.white),
                                            letterSpacing: 2),
                                      ),
                                      p1.Text(
                                        " ${data.ln}",
                                        style: p1.TextStyle(
                                            fontWeight: p1.FontWeight.bold,
                                            fontSize: 25,
                                            background: p1.BoxDecoration(
                                                color: PdfColors.white),
                                            letterSpacing: 2),
                                      ),
                                      p1.Padding(
                                        padding: p1.EdgeInsets.only(
                                            left: 10, right: 10),
                                        child: p1.Container(
                                            height: 1,
                                            width: 180,
                                            color: PdfColors.black),
                                      ),
                                      p1.Padding(
                                        padding: const p1.EdgeInsets.only(
                                            left: 10, bottom: 2, top: 2),
                                        child: p1.Text(
                                          "${data.profession}",
                                          style: p1.TextStyle(
                                              color: PdfColors.black),
                                        ),
                                      )
                                    ],
                                  )),
                            ],
                          ),
                          p1.SizedBox(
                            width: 5,
                          ),
                          p1.Container(
                            height: 80,
                            child: p1.Column(
                              mainAxisAlignment:
                                  p1.MainAxisAlignment.spaceBetween,
                              children: [
                                p1.Container(
                                  height: 1,
                                  width: 20,
                                  color: PdfColors.black,
                                ),
                                p1.Container(
                                  height: 1,
                                  width: 20,
                                  color: PdfColors.black,
                                ),
                                p1.Container(
                                  height: 1,
                                  width: 20,
                                  color: PdfColors.black,
                                ),
                                p1.Container(
                                  height: 1,
                                  width: 20,
                                  color: PdfColors.black,
                                ),
                                p1.Container(
                                  height: 1,
                                  width: 20,
                                  color: PdfColors.black,
                                ),
                                p1.Container(
                                  height: 1,
                                  width: 20,
                                  color: PdfColors.black,
                                ),
                                p1.Container(
                                  height: 1,
                                  width: 20,
                                  color: PdfColors.black,
                                ),
                                p1.Container(
                                  height: 1,
                                  width: 20,
                                  color: PdfColors.black,
                                ),
                                p1.Container(
                                  height: 1,
                                  width: 20,
                                  color: PdfColors.black,
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                      p1.SizedBox(
                        height: 20,
                      ),
                      p1.Container(
                        width: 170,
                        child: p1.Text(
                          "PROFILE",
                          style: p1.TextStyle(
                              color: PdfColors.black,
                              fontWeight: p1.FontWeight.bold,
                              letterSpacing: 1),
                        ),
                      ),
                      p1.Container(
                        width: 25,
                        height: 2,
                        decoration: p1.BoxDecoration(
                            borderRadius: p1.BorderRadius.circular(1),
                            color: PdfColors.black),
                      ),
                      p1.SizedBox(
                        height: 5,
                      ),
                      p1.Text("${data.ab}"),
                      p1.SizedBox(
                        height: 8,
                      ),
                      p1.Container(
                        width: 350,
                        height: 1,
                        color: PdfColors.black,
                      ),
                      p1.SizedBox(
                        height: 10,
                      ),
                      p1.Container(
                        width: 170,
                        child: p1.Text(
                          "WORK EXPERIENCE",
                          style: p1.TextStyle(
                              color: PdfColors.black,
                              fontWeight: p1.FontWeight.bold,
                              letterSpacing: 1),
                        ),
                      ),
                      p1.Container(
                        width: 25,
                        height: 2,
                        decoration: p1.BoxDecoration(
                            borderRadius: p1.BorderRadius.circular(1),
                            color: PdfColors.black),
                      ),
                      p1.Container(
                        child: p1.Column(
                          crossAxisAlignment: p1.CrossAxisAlignment.start,
                          children: [
                            p1.SizedBox(
                              height: 10,
                            ),
                            p1.Text("${data.com}",
                                style: p1.TextStyle(
                                    color: PdfColors.black,
                                    fontSize: 20,
                                    fontWeight: p1.FontWeight.bold)),
                            p1.Text(" - ${data.pos}",
                                style: p1.TextStyle(
                                    color: PdfColors.black, fontSize: 16)),
                            p1.Text(" - ${data.ex}",
                                style: p1.TextStyle(
                                    color: PdfColors.black, fontSize: 16)),
                            p1.Text(" - ${data.loc}",
                                style: p1.TextStyle(
                                    color: PdfColors.black, fontSize: 16)),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ));
    },
  ));

  Directory? dir = await getExternalStorageDirectory();
  var file = File("${dir!.path}/myresume.pdf");
  print(file.path);
  await file.writeAsBytes(await pdf1.save());
}
