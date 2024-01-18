import 'package:flutter/material.dart';
import 'package:fe_jurusanku/theme.dart';

class ResultPage extends StatelessWidget {
  const ResultPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: transparent,
          title: Text(
            'Profil',
            style: bodyLarge.copyWith(color: primaryFixedDim),
          ),
          centerTitle: true,
          leading: BackButton(
            color: white,
          ),
        ),
        extendBodyBehindAppBar: true,
        body: Container(
          width: double.infinity,
          padding: EdgeInsets.only(left: 20, right: 20, top: 100,bottom: 20),
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
            Color(0xffB24BC3),
            Color(0xffEC37A9),
          ])),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Text('Rekomendasi jurusan untukmu',style: displaySmall.copyWith(fontWeight: bold,color: white),),
                SizedBox(height:32,),
                Stack(
                  alignment: Alignment.topCenter,
                  children: [
                    Container(
                      height: 750,
                      width: 329,
                    ),
                    Positioned(
                      top:95,
                      child: Container(
                        width: 329,
                        padding: EdgeInsets.only(
                          top: 120,
                          right: 15,
                          left: 15,
                          bottom: 15,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: white
                        ),
                        child: Column(
                          children: [
                            Text('Teknik Informatika',style: headlineMedium.copyWith(fontWeight: bold),),
                            SizedBox(height: 20,),
                            Container(
                              height: 210,
                              width: 136,
                              padding: EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 10),
                              decoration: BoxDecoration(
                                  color: tertiary99,
                                  borderRadius: BorderRadius.circular(12)),
                              child: Column(
                                children: [
                                  Text(
                                    'Jurusan ini',
                                    style: bodyLarge,
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Container(
                                    height: 99,
                                    width: 99,
                                    decoration: BoxDecoration(
                                        color: tertiary90,
                                        borderRadius: BorderRadius.circular(100)),
                                    alignment: Alignment.center,
                                    child: Text(
                                      '80%',
                                      style: headlineLarge.copyWith(
                                          color: tertiary20, fontWeight: bold),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    'Cocok dengan kamu',
                                    style: bodyMedium,
                                    textAlign: TextAlign.center,
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 20,),
                            Text('Teknik Informatika adalah jurusan yang mempelajari cara menggunakan teknologi komputer secara optimal guna menangani masalah transformasi atau pengolahan data dengan proses logika. Jurusan ini mempelajari berbagai prinsip terkait ilmu komputer, mulai dari pemrograman, komputasi, sistem operasi, hingga jaringan komputer.',style: bodySmall,textAlign: TextAlign.justify,),
                            SizedBox(height: 20,),
                            ElevatedButton(
                              onPressed: (){
                                Navigator.pushNamed(context, '/jurusan');
                              },
                              child: Text('Detail Jurusan',style: button.copyWith(color: white),),
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: primary,
                                  elevation: 0,
                                  fixedSize: Size(301, 40)
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Container(
                      width: 271,
                      height: 189,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        image: DecorationImage(
                          image: AssetImage('assets/hasiltes.png')
                        )
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ));
  }
}
