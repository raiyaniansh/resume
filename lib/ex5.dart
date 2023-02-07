import 'dart:io';
import 'dart:math';
import 'package:path_provider/path_provider.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as p1;
import 'package:resume/modal.dart';

Future<void> resume5(Modal data) async {
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
      // ),
      return p1.Container(
          height: 900,
          width: double.infinity,
          decoration: p1.BoxDecoration(color: PdfColors.grey900),
          child: p1.Row(
            children: [
              p1.Container(
                width: 145,
                height: 900,
                color: PdfColors.blueGrey900,
                child: p1.Padding(
                  padding: const p1.EdgeInsets.all(10),
                  child: p1.Column(
                    crossAxisAlignment: p1.CrossAxisAlignment.start,
                    children: [
                      p1.SizedBox(
                        height: 10,
                      ),
                      p1.Container(
                        height: 125,
                        width: 125,
                        decoration: p1.BoxDecoration(border: p1.Border.all(color: PdfColors.white,width: 1),shape: p1.BoxShape.circle,image: p1.DecorationImage(image: img)),
                      ),
                      p1.SizedBox(
                        height: 20,
                      ),
                      p1.Text(
                        "CONTACTS",
                        style: p1.TextStyle(
                            color: PdfColors.white,
                            fontWeight: p1.FontWeight.bold,
                            letterSpacing: 1),
                      ),
                      p1.SizedBox(
                        height: 3,
                      ),
                      p1.Container(
                        height: 1,
                        width: 20,
                        color: PdfColors.white,
                      ),
                      p1.SizedBox(
                        height: 10,
                      ),
                      p1.Row(
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
                      p1.SizedBox(
                        height: 8,
                      ),
                      p1.Row(
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
                      p1.SizedBox(
                        height: 10,
                      ),
                      p1.Container(
                        width: double.infinity,
                        height: 1,
                        color: PdfColors.white,
                      ),
                      p1.SizedBox(height: 10,),
                      p1.Text(
                        "SKILLS",
                        style: p1.TextStyle(
                            color: PdfColors.white,
                            fontWeight: p1.FontWeight.bold,
                            letterSpacing: 1),
                      ),
                      p1.SizedBox(
                        height: 3,
                      ),
                      p1.Container(
                        height: 1,
                        width: 20,
                        color: PdfColors.white,
                      ),
                      p1.SizedBox(
                        height: 10,
                      ),
                      p1.Row(
                        children: [
                          p1.Text(
                            "${data.sk}",
                            style: p1.TextStyle(color: PdfColors.white),
                          ),
                          p1.Expanded(child: p1.SizedBox(width: 1,)),
                          p1.Text(
                            "${data.prl} %",
                            style: p1.TextStyle(color: PdfColors.white),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              p1.Container(
                width: 450,
                height: 900,
                color: PdfColors.white,
                child: p1.Column(
                  crossAxisAlignment: p1.CrossAxisAlignment.start,
                  children: [
                    p1.Align(
                      alignment: p1.Alignment.topRight,
                      child: p1.Container(
                        height: 130,
                        width: 425,
                        color: PdfColors.grey300,
                        child: p1.Padding(
                          padding: const p1.EdgeInsets.only(left: 10),
                          child: p1.Column(
                            mainAxisAlignment: p1.MainAxisAlignment.center,
                            children: [
                              p1.Row(
                                mainAxisAlignment: p1.MainAxisAlignment.center,
                                children: [
                                  p1.Container(
                                    height: 1,
                                    width: 30,
                                    color: PdfColors.black,
                                  ),
                                  p1.SizedBox(width: 3,),
                                  p1.Transform.rotate(
                                    angle: pi/4,
                                    child: p1.Container(
                                      height: 20,
                                      width: 20,
                                      decoration: p1.BoxDecoration(
                                          border: p1.Border.all(color: PdfColors.black)
                                      ),
                                    ),
                                  ),
                                  p1.SizedBox(width: 3,),
                                  p1.Container(
                                    height: 1,
                                    width: 30,
                                    color: PdfColors.black,
                                  )
                                ],
                              ),
                              p1.SizedBox(height: 5,),
                              p1.Text(
                                "${data.fn} ${data.ln}",
                                style: p1.TextStyle(
                                    color: PdfColors.black,
                                    fontSize: 25,
                                    letterSpacing: 2,
                                    fontWeight: p1.FontWeight.bold),
                              ),
                              p1.SizedBox(height: 3,),
                              p1.Container(
                                width: 120,
                                height: 1,
                                color: PdfColors.black,
                              ),
                              p1.SizedBox(height: 3,),
                              p1.Text(
                                "${data.profession}",
                                style: p1.TextStyle(color: PdfColors.black,fontSize: 18,letterSpacing: 2),
                              ),
                            ],
                          ),
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
                            "PROFILE",
                            style: p1.TextStyle(
                                color: PdfColors.blueGrey600,
                                fontWeight: p1.FontWeight.bold,
                                letterSpacing: 1),
                          ),
                          p1.SizedBox(
                            height: 1,
                          ),
                          p1.Container(
                            height: 1,
                            width: 20,
                            color: PdfColors.blueGrey600,
                          ),
                          p1.SizedBox(height: 5,),
                          p1.Text("${data.ab}",style: p1.TextStyle(color: PdfColors.blueGrey600,fontSize: 15)),
                          p1.SizedBox(
                            height: 10,
                          ),
                          p1.Container(height: 1,width: double.infinity,color: PdfColors.black,),
                          p1.SizedBox(
                            height: 10,
                          ),
                          p1.Text(
                            "EXPERIENCE",
                            style: p1.TextStyle(
                                color: PdfColors.blueGrey600,
                                fontWeight: p1.FontWeight.bold,
                                letterSpacing: 1),
                          ),
                          p1.SizedBox(
                            height: 1,
                          ),
                          p1.Container(
                            height: 1,
                            width: 20,
                            color: PdfColors.blueGrey600,
                          ),
                          p1.SizedBox(height: 5,),
                          p1.Container(
                            child: p1.Column(
                              crossAxisAlignment: p1.CrossAxisAlignment.start,
                              children: [
                                p1.Row(
                                  children: [
                                    p1.Text("${data.com}",style: p1.TextStyle(color: PdfColors.blueGrey600, fontSize: 16, fontWeight: p1.FontWeight.bold)),
                                    p1.Expanded(child: p1.SizedBox(width: 1,)),
                                    p1.Text("${data.ex}", style: p1.TextStyle(color: PdfColors.black, fontSize: 14)),
                                  ],
                                ),
                                p1.Text("${data.pos}", style: p1.TextStyle(color: PdfColors.black, fontSize: 14)),
                                p1.Text("${data.loc}", style: p1.TextStyle(color: PdfColors.black, fontSize: 14)),
                                p1.SizedBox(height: 5,),
                              ],
                            ),
                          ),
                          p1.SizedBox(
                            height: 5,
                          ),
                          p1.Container(height: 1,width: double.infinity,color: PdfColors.black,),
                          p1.SizedBox(
                            height: 10,
                          ),
                          p1.Text(
                            "EDUCATION",
                            style: p1.TextStyle(
                                color: PdfColors.blueGrey600,
                                fontWeight: p1.FontWeight.bold,
                                letterSpacing: 1),
                          ),
                          p1.Container(
                            height: 1,
                            width: 20,
                            color: PdfColors.blueGrey600,
                          ),
                          p1.SizedBox(height: 5,),
                          p1.Container(
                            child: p1.Column(
                              crossAxisAlignment: p1.CrossAxisAlignment.start,
                              children: [
                                p1.Row(
                                  children: [
                                    p1.Text("${data.scl}",
                                        style: p1.TextStyle(
                                            color: PdfColors.blueGrey600,
                                            fontSize: 16,
                                            fontWeight: p1.FontWeight.bold)),
                                  ],
                                ),
                                p1.Text("${data.degree}", style: p1.TextStyle(color: PdfColors.black, fontSize: 14)),
                                p1.Text("${data.ps}", style: p1.TextStyle(color: PdfColors.black, fontSize: 14)),
                                p1.SizedBox(height: 5,),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
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
