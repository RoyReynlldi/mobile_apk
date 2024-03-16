import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  static String tag = 'Login-page';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Curriculum Vitae',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: MyHomePage(
        title: 'CV',
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<String> description = [
    "Saya sekolah di SMK Bakti Nusantara 666, dikelas XI PPLG 1",
  ];
  final List<String> keahlian = [
    '•Ngoding',
    '•nganjay',
    '•isian',
  ];
  final List<String> kontak = [
    '•+62 82315006331',
    'reynnld@gmail.com',
    '•@rrynald',
  ];
  final List<String> Biodata = [
    '•Tempat, Tanggal Lahir: Bandung, 23 Juli 2007',
    '•Alamat: rancaekek',
    '•Jenis Kelamin: Laki-laki',
    '•Agama: Islam ktp',
    '•Kewarnegaraan: Indonesia',
  ];
  final List<String> pendidikan = [
    '•SDN Nusa Indah',
    '•SMPN3Rancaekek',
    '•SMK Bakti Nusantara 666',
  ];
  final List<String> pengalaman = [
    '•membuat cv di flutter',
    '•membuat cv di php ',
    '•Juara 2 basket nba',
  ];
  final List<String> hobi = [
    '•Sparing',
    '•anime',
    '•ngoding jika niat',
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            bottom: const TabBar(tabs: [
              Tab(icon: Icon(Icons.book)),
              Tab(icon: Icon(Icons.train)),
            ]),
            title: Text("Tab Bar"),
          ),
          body: Scrollbar(
            child: TabBarView(
              children: [
                SingleChildScrollView(
                  child: Stack(
                    children: <Widget>[
                      Positioned(
                        child: Container(
                          width: 195,
                          height: 775,
                          color: Colors.lightBlue,
                          child: Column(children: [
                            const SizedBox(height: 15.0),
                            const Align(
                              child: CircleAvatar(
                                radius: 80.0,
                                backgroundImage: AssetImage(
                                  'images/awa.jpeg',
                                ),
                              ),
                            ),
                            const SizedBox(height: 15.0),
                            const Align(
                              child: Text(
                                'Roy Reynaldi ',
                                style: TextStyle(
                                  fontSize: 23,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            const Align(
                              child: Text(
                                'XI PPLG 2',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            const SizedBox(height: 10.0),
                            Align(
                              child: Text(
                                description.first,
                                style: const TextStyle(
                                  fontSize: 13,
                                ),
                              ),
                            ),
                            const SizedBox(height: 25.0),
                            const Align(
                              child: Text(
                                'Keahlian',
                                style: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            const SizedBox(height: 10.0),
                            Column(
                              children: keahlian
                                  .map(
                                    (skill) => Align(
                                      child: Text(
                                        skill,
                                        style: const TextStyle(
                                          fontSize: 13,
                                        ),
                                      ),
                                    ),
                                  )
                                  .toList(),
                            ),
                            const SizedBox(height: 25.0),
                            const Align(
                              child: Text(
                                'Kontak',
                                style: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            const SizedBox(height: 10.0),
                            Column(
                              children: kontak
                                  .map(
                                    (skill) => Align(
                                      child: Text(
                                        skill,
                                        style: const TextStyle(
                                          fontSize: 13,
                                        ),
                                      ),
                                    ),
                                  )
                                  .toList(),
                            ),
                          ]),
                        ),
                      ),
                      Positioned(
                        right: 20.0,
                        top: 20.0,
                        child: Container(
                          width: 195,
                          height: 775,
                          child: Column(children: [
                            const SizedBox(height: 15.0),
                            const Align(
                              child: Text(
                                'Biodata',
                                style: TextStyle(
                                  fontSize: 23,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Column(
                              children: Biodata
                                  .map(
                                    (skill) => Align(
                                      child: Text(
                                        skill,
                                        style: const TextStyle(
                                          fontSize: 13,
                                        ),
                                      ),
                                    ),
                                  )
                                  .toList(),
                            ),
                            const SizedBox(height: 15.0),
                            const Align(
                              child: Text(
                                'Pendidikan',
                                style: TextStyle(
                                  fontSize: 23,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Column(
                              children: pendidikan
                                  .map(
                                    (skill) => Align(
                                      child: Text(
                                        skill,
                                        style: const TextStyle(
                                          fontSize: 13,
                                        ),
                                      ),
                                    ),
                                  )
                                  .toList(),
                            ),
                            const SizedBox(height: 15.0),
                            const Align(
                              child: Text(
                                'Pengalaman',
                                style: TextStyle(
                                  fontSize: 23,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Column(
                              children: pengalaman
                                  .map(
                                    (skill) => Align(
                                      child: Text(
                                        skill,
                                        style: const TextStyle(
                                          fontSize: 13,
                                        ),
                                      ),
                                    ),
                                  )
                                  .toList(),
                            ),
                            const SizedBox(height: 15.0),
                            const Align(
                              child: Text(
                                'Hobi',
                                style: TextStyle(
                                  fontSize: 23,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Column(
                              children: hobi
                                  .map(
                                    (skill) => Align(
                                      child: Text(
                                        skill,
                                        style: const TextStyle(
                                          fontSize: 13,
                                        ),
                                      ),
                                    ),
                                  )
                                  .toList(),
                            ),
                          ]),
                        ),
                      ),
                    ],
                  ),
                ),
                Stack(
                children: [
                    Align(
                    alignment: Alignment.center,
                    child: CircleAvatar(
                      radius: 80.0,
                      backgroundImage: AssetImage(
                        'images/t2.jpeg'
                      ),
                    ),
                  ),
                ],
              ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}