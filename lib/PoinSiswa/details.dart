import 'package:cakapp/PoinSiswa/detail_poin.dart';
import 'package:cakapp/PoinSiswa/edit.dart';
import 'package:cakapp/TataTertib/index.dart';
import 'package:flutter/material.dart';
import 'package:cakapp/shared/navbk.dart';

class poin_siswa_detail extends StatefulWidget {
  @override
  _poin_siswa_detailState createState() => _poin_siswa_detailState();
}

class _poin_siswa_detailState extends State<poin_siswa_detail> {
  void showAlertDialog(){
    showDialog(builder: (context) => new AlertDialog(
      title: Text("Warning"),
      content: Text("Anda Yakin Ingin Menghapus?"),
      actions: <Widget>[
        new IconButton(icon: Icon(Icons.close), onPressed: (){
          Navigator.pop(context);
        }),
        new IconButton(icon: Icon(Icons.check, color: Colors.green,), onPressed: (){
          Navigator.pop(context);
        })
      ],
    ), context: context
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Form Detail Poin Siswa"),
      ),
      drawer: NavBar(),
      body:  Center(
        child: Column(children: <Widget>[
          new Padding(padding: new EdgeInsets.only(top: 20.0),),
          Container(
              margin: EdgeInsets.all(8),
              child: Table(
                border: TableBorder.all(
                  color: Colors.grey,
                  width: 1,
                ),
                columnWidths: {
                  0: FixedColumnWidth(380),

                },
                children: [
                  TableRow(
                    decoration: BoxDecoration(
                      color: Colors.white,
                    ),
                    children: [
                      TableCell(
                        child: Padding(
                          padding: EdgeInsets.all(19),
                          child: Text("Nama Siswa", textAlign: TextAlign.center, style: TextStyle(fontWeight: FontWeight.bold),),
                        ),
                      ),
                    ],
                  ),
                  TableRow(
                    children: [
                      TableCell(
                        child: Padding(
                          padding: EdgeInsets.all(19),
                          child: Text("Intan Dewi Hapsari", textAlign: TextAlign.center),
                        ),
                      ),
                    ],

                  ),
                  TableRow(
                    decoration: BoxDecoration(
                      color: Colors.white,
                    ),
                    children: [
                      TableCell(
                        child: Padding(
                          padding: EdgeInsets.all(19),
                          child: Text("NIS", textAlign: TextAlign.center, style: TextStyle(fontWeight: FontWeight.bold),),
                        ),
                      ),
                    ],
                  ),
                  TableRow(
                    children: [
                      TableCell(
                        child: Padding(
                          padding: EdgeInsets.all(19),
                          child: Text("3103119092", textAlign: TextAlign.center),
                        ),
                      ),
                    ],

                  ),
                  TableRow(
                    decoration: BoxDecoration(
                      color: Colors.white,
                    ),
                    children: [
                      TableCell(
                        child: Padding(
                          padding: EdgeInsets.all(19),
                          child: Text("Kelas", textAlign: TextAlign.center, style: TextStyle(fontWeight: FontWeight.bold),),
                        ),
                      ),
                    ],
                  ),
                  TableRow(
                    children: [
                      TableCell(
                        child: Padding(
                          padding: EdgeInsets.all(19),
                          child: Text("XII RPL 3", textAlign: TextAlign.center),
                        ),
                      ),
                    ],

                  )
                ],
              )
          ),
          const Divider(
            height: 20,
            thickness: 2,
            indent: 30,
            endIndent: 30,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: <Widget>[
                DataTable(
                  columns: <DataColumn>[
                    DataColumn(label: Text("Indikator")),
                    DataColumn(label: Text("Aspek")),
                    DataColumn(label: Text("Poin")),
                    DataColumn(label: Text("Tanggal")),
                    DataColumn(label: Text("Action")),
                  ],
                  rows: <DataRow>[
                    DataRow(
                      cells: <DataCell>[
                        DataCell(Text("Saya berbicara dengan bahasa yang baik dan santun dengan lawan bicara")),
                        DataCell(Text("Beriman, Bertaqwa Kepada Tuhan YME, dan Berakhlak Mulia")),
                        DataCell(Text("10")),
                        DataCell(Text("9/17/2021 8:46:00 AM")),
                        DataCell(Row(
                            children: <Widget>[
                              IconButton(
                                icon: Icon(Icons.edit),
                                color: Colors.grey,
                                tooltip: 'edit',
                                onPressed: () {
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => poin_siswa_edit() ));
                                },
                              ),
                              IconButton(
                                icon: Icon(Icons.search),
                                color: Colors.grey,
                                tooltip: 'detail',
                                onPressed: () {
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => detail_poin() ));
                                },
                              ),
                              IconButton(
                                icon: Icon(Icons.delete),
                                color: Colors.grey,
                                tooltip: 'remove',
                                onPressed: () {
                                  showAlertDialog();
                                },
                              ),
                            ]
                        ),
                        ),
                      ],
                    ),
                    DataRow(
                      cells: <DataCell>[
                        DataCell(Text("Saya berbicara dengan bahasa yang baik dan santun dengan lawan bicara")),
                        DataCell(Text("Beriman, Bertaqwa Kepada Tuhan YME, dan Berakhlak Mulia")),
                        DataCell(Text("10")),
                        DataCell(Text("9/17/2021 8:46:00 AM")),
                        DataCell(Row(
                            children: <Widget>[
                              IconButton(
                                icon: Icon(Icons.edit),
                                color: Colors.grey,
                                tooltip: 'edit',
                                onPressed: () {
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => poin_siswa_edit() ));
                                },
                              ),
                              IconButton(
                                icon: Icon(Icons.search),
                                color: Colors.grey,
                                tooltip: 'detail',
                                onPressed: () {
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => detail_poin() ));
                                },
                              ),
                              IconButton(
                                icon: Icon(Icons.delete),
                                color: Colors.grey,
                                tooltip: 'remove',
                                onPressed: () {
                                  showAlertDialog();
                                },
                              ),
                            ]
                        ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
