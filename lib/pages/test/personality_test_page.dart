import 'package:flutter/material.dart';
import 'package:fe_jurusanku/theme.dart';

class PersonalityTestPage extends StatelessWidget {
  const PersonalityTestPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
        padding: EdgeInsets.only(left: 30,right: 30),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xffB24BC3),
              Color(0xffEC37A9),
            ]
          )
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              AppBar(
                  backgroundColor: transparent,
                  title: Text('Profil',style: bodyLarge.copyWith(color: primaryFixedDim),),
                  centerTitle: true,
                  leading: BackButton(
                    color: white,
                    onPressed: (){
                      Navigator.pushNamed(context, '/home');
                    },
                  )),
              SizedBox(height: 10,),
              Text('Tentukan jurusan terbaik untukmu',style: displaySmall.copyWith(fontWeight: bold,color: white),),
              SizedBox(height: 20,),
              Text('JurusanKu memakai algoritma termutakhir yang dibuat oleh ahli-ahli pendidikan yang terpercaya. Berdasarkan jawaban-jawabanmu, JurusanKu dapat memodelkan jurusan yang paling cocok denganmu.\n\nPilihlah jawaban yang paling cocok denganmu. Tidak usah berpikir panjang--biarkan JurusanKu yang memikirkan jurusan paling tepat untukmu.',style: bodyMedium.copyWith(fontWeight: medium,color: white),),
              SizedBox(height: 20,),
              Container(
                width: 326,
                padding: EdgeInsets.only(top: 30,left: 20,right: 20,bottom: 30),
                decoration: BoxDecoration(
                  color: white,
                  borderRadius: BorderRadius.circular(12),
                ),
                alignment: Alignment.center,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    RichText(
                        text: TextSpan(
                          text: "Tes minat-bakat ",
                          style: headlineSmall.copyWith(color: black),
                          children: [
                            TextSpan(
                              text: 'gratis ',
                              style: headlineSmall.copyWith(fontWeight: bold)
                            ),
                            TextSpan(
                              text: 'untuk pertama kalinya.',
                            )
                          ]
                        ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 20,),
                    Image.asset('assets/form_test.png',width: 100,)
                  ],
                ),
              ),
              SizedBox(height: 20,),
              ElevatedButton(
                  onPressed: (){
                    Navigator.pushNamed(context, '/test');
                  },
                  child: Text('Mulai Tes (~15 menit)',style: button.copyWith(color: primary),),
                style: ElevatedButton.styleFrom(
                  backgroundColor: primary90,
                  elevation: 0,
                  fixedSize: Size(301, 40)
                ),
              ),
              SizedBox(height: 30,)
            ],
          ),
        ),
      );
  }
}
