import 'dart:io';
import 'package:path_provider/path_provider.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as p1;
import 'package:resume/modal.dart';

Future<void> resume4(Modal data) async {
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
                color: PdfColors.blueGrey800,
                child: p1.Column(
                  crossAxisAlignment: p1.CrossAxisAlignment.start,
                  children: [
                    p1.SizedBox(
                      height: 10,
                    ),
                    p1.Container(
                      child: p1.Image(img),
              ),
                    p1.Container(
                      height: 50,
                      width: 145,
                      color: PdfColors.blue,
                      child: p1.Padding(
                        padding: const p1.EdgeInsets.all(8),
                        child: p1.Column(
                          crossAxisAlignment: p1.CrossAxisAlignment.start,
                          mainAxisAlignment: p1.MainAxisAlignment.center,
                          children: [
                            p1.Text("${data.fn} ${data.ln}",style: p1.TextStyle(color: PdfColors.white,fontWeight: p1.FontWeight.bold,fontSize: 20),),
                            p1.Text("${data.profession}",style: p1.TextStyle(color: PdfColors.white,fontSize: 15),),
                          ],
                        ),
                      ),
                    ),
                    p1.SizedBox(
                      height: 10,
                    ),
                    p1.Padding(
                      padding: const p1.EdgeInsets.only(left: 8.0),
                      child: p1.Row(
                        children: [
                          p1.Container(
                            height: 14,
                            width: 14,
                            decoration: p1.BoxDecoration(
                                color: PdfColors.blue,
                                shape: p1.BoxShape.circle),
                            // child: Icon(Icons.call, size: 10,color: Colors.white),
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
                      padding: const p1.EdgeInsets.only(left: 8.0),
                      child: p1.Row(
                        children: [
                          p1.Container(
                            height: 14,
                            width: 14,
                            decoration: p1.BoxDecoration(
                                color: PdfColors.blue,
                                shape: p1.BoxShape.circle),
                            // child: Icon(Icons.mail, size: 10,color: Colors.white),
                          ),
                          p1.Text(
                            "  ${data.email}",
                            style: p1.TextStyle(
                                color: PdfColors.white, fontSize: 11),
                          )
                        ],
                      ),
                    ),
                    p1.SizedBox(
                      height: 10,
                    ),
                    p1.Padding(
                      padding: const p1.EdgeInsets.only(left: 8.0),
                      child: p1.Container(
                        height: 1,
                        width: 150,
                        color: PdfColors.white,
                      ),
                    ),
                    p1.SizedBox(
                      height: 10,
                    ),
                    p1.Padding(
                      padding: const p1.EdgeInsets.only(left: 8.0),
                      child: p1.Text(
                        "EDUCATION",
                        style: p1.TextStyle(
                            color: PdfColors.white,
                            fontWeight: p1.FontWeight.bold,
                            letterSpacing: 1),
                      ),
                    ),
                    p1.SizedBox(
                      height: 10,
                    ),
                    p1.Container(
                      child: p1.Padding(
                        padding: const p1.EdgeInsets.only(left: 8.0,bottom: 2),
                        child: p1.Column(
                          crossAxisAlignment: p1.CrossAxisAlignment.start,
                          children: [
                            p1.Text("${data.scl}",
                                style: p1.TextStyle(
                                    color: PdfColors.white,
                                    fontSize: 20,
                                    fontWeight: p1.FontWeight.bold)),
                            p1.Text("${data.degree}", style: p1.TextStyle(color: PdfColors.white, fontSize: 18)),
                            p1.Text("${data.ps}", style: p1.TextStyle(color: PdfColors.white, fontSize: 18)),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              p1.Container(
                width: 500,
                height: 900,
                color: PdfColors.white,
                child: p1.Column(
                  crossAxisAlignment: p1.CrossAxisAlignment.start,
                  children: [
                    p1.SizedBox(
                      height: 25,
                    ),
                    p1.Padding(
                      padding: const p1.EdgeInsets.all(10),
                      child: p1.Column(
                        crossAxisAlignment: p1.CrossAxisAlignment.start,
                        children: [
                          p1.Row(
                            children: [
                              p1.Text(
                                "PROFILE",
                                style: p1.TextStyle(
                                    color: PdfColors.black,
                                    fontWeight: p1.FontWeight.bold,
                                    letterSpacing: 1),
                              ),
                              p1.SizedBox(width: 5,),
                              p1.Expanded(child: p1.Container(height: 1,width: 140,color: PdfColors.black,))
                            ],
                          ),
                          p1.SizedBox(
                            height: 10,
                          ),
                          p1.Text("${data.ab}"),
                          p1.SizedBox(
                            height: 20,
                          ),
                          p1.Row(
                            children: [
                              p1.Text(
                                "EXPERIENCE",
                                style: p1.TextStyle(
                                    color: PdfColors.black,
                                    fontWeight: p1.FontWeight.bold,
                                    letterSpacing: 1),
                              ),
                              p1.SizedBox(width: 5,),
                              p1.Expanded(child: p1.Container(height: 1,width: 140,color: PdfColors.black,))
                            ],
                          ),
                          p1.SizedBox(height: 10,),
                          p1.Container(
                            child: p1.Row(
                              crossAxisAlignment: p1.CrossAxisAlignment.start,
                              children: [
                                p1.Text("${data.ex}", style: p1.TextStyle(color: PdfColors.black, fontSize: 18)),
                                p1.SizedBox(width: 5),
                                p1.Column(
                                  children: [
                                    p1.SizedBox(
                                      height: 5,
                                    ),
                                    p1.Container(
                                      height: 45,
                                      width: 1,
                                      decoration: p1.BoxDecoration(
                                        color: PdfColors.black,
                                      ),
                                    ),
                                  ],
                                ),
                                p1.SizedBox(
                                  width: 5,
                                ),
                                p1.Column(
                                  crossAxisAlignment: p1.CrossAxisAlignment.start,
                                  children: [
                                    p1.Text("${data.com}",
                                        style: p1.TextStyle(
                                            color: PdfColors.black,
                                            fontSize: 18,
                                            fontWeight: p1.FontWeight.bold)),
                                    p1.Text("${data.pos}", style: p1.TextStyle(color: PdfColors.black, fontSize: 18)),
                                    p1.Text("${data.loc}", style: p1.TextStyle(color: PdfColors.black, fontSize: 18)),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          p1.SizedBox(
                            height: 20,
                          ),
                          p1.Row(
                            children: [
                              p1.Text(
                                "EXPARTISES",
                                style: p1.TextStyle(
                                    color: PdfColors.black,
                                    fontWeight: p1.FontWeight.bold,
                                    letterSpacing: 1),
                              ),
                              p1.SizedBox(width: 5,),
                              p1.Expanded(child: p1.Container(height: 1,width: 140,color: PdfColors.black,))
                            ],
                          ),
                          p1.SizedBox(height: 10,),
                          p1.Column(
                            children: [
                              p1.Column(
                                crossAxisAlignment: p1.CrossAxisAlignment.start,
                                children: [
                                  p1.Text(
                                    "${data.sk}",
                                    style: p1.TextStyle(color: PdfColors.black,fontSize: 18),
                                  ),
                                  p1.SizedBox(height: 5,),
                                ],
                              ),
                            ],
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
