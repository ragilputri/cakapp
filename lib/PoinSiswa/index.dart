import 'package:cakapp/PoinSiswa/create.dart';
import 'package:cakapp/PoinSiswa/details.dart';
import 'package:cakapp/PoinSiswa/edit.dart';
import 'package:flutter/material.dart';
import 'package:cakapp/shared/navbk.dart';

class poin_siswa extends StatefulWidget {
  @override
  _poin_siswaState createState() => _poin_siswaState();
}

class _poin_siswaState extends State<poin_siswa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Poin Siswa"),
      ),
      drawer: NavBar(),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
          Container(
              margin: EdgeInsets.all(20),
              child: Text("DATA POIN SISWA"),
            ),
          new MaterialButton(
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => add_poin() ));
            }, child: Text("Add"),
            color: Colors.red,
            textColor: Colors.white,
          ),
            Container(
              margin: EdgeInsets.all(20.0),
              width: 350.0,
              child: TextField(
                textInputAction: TextInputAction.search,
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(7.0),
                    hintText: "Search...",
                    labelText: "Search",
                    border: new OutlineInputBorder(
                        borderRadius: new BorderRadius.circular(5.0)
                    ),
                    suffixIcon: IconButton(
                      icon: Icon(Icons.search),
                      iconSize: 20.0,
                      onPressed: () {},
                    )
                ),
              ),
            ),
          SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: <Widget>[
                  DataTable(
                    columns: <DataColumn>[
                      DataColumn(label: Text("NIS")),
                      DataColumn(label: Text("Nama")),
                      DataColumn(label: Text("Kelas")),
                      DataColumn(label: Text("Jumlah Poin")),
                      DataColumn(label: Text("Action")),
                    ],
                    rows: <DataRow>[
                      DataRow(
                        cells: <DataCell>[
                          DataCell(Text("3103119151")),
                          DataCell(Text("Intan Dewi Hapsari")),
                          DataCell(Text("XII RPL 3")),
                          DataCell(Text("50")),
                          DataCell(Row(
                              children: <Widget>[
                                IconButton(
                                  icon: Icon(Icons.search),
                                  color: Colors.grey,
                                  tooltip: 'detail',
                                  onPressed: () {
                                    Navigator.push(context, MaterialPageRoute(builder: (context) => poin_siswa_detail() ));
                                  },
                                ),
                              ]
                          ),
                          ),
                        ],
                      ),
                      DataRow(
                        cells: <DataCell>[
                          DataCell(Text("3103119151")),
                          DataCell(Text("Muhammad Hendra Bima")),
                          DataCell(Text("XII RPL 3")),
                          DataCell(Text("10")),
                          DataCell(Row(
                              children: <Widget>[
                                IconButton(
                                  icon: Icon(Icons.search),
                                  color: Colors.grey,
                                  tooltip: 'detail',
                                  onPressed: () {
                                    Navigator.push(context, MaterialPageRoute(builder: (context) => poin_siswa_detail() ));
                                  },
                                ),
                              ]
                          ),
                          ),
                        ],
                      ),
                      DataRow(
                        cells: <DataCell>[
                          DataCell(Text("3103119151")),
                          DataCell(Text("Kanthi Prihastika Wijaya")),
                          DataCell(Text("XII RPL 3")),
                          DataCell(Text("70")),
                          DataCell(Row(
                              children: <Widget>[
                                IconButton(
                                  icon: Icon(Icons.search),
                                  color: Colors.grey,
                                  tooltip: 'detail',
                                  onPressed: () {
                                    Navigator.push(context, MaterialPageRoute(builder: (context) => poin_siswa_detail() ));
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
        ],
      ),
      ),
    );
  }
}
