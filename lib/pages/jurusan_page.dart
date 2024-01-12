import 'package:fe_jurusanku/widgets/course_card.dart';
import 'package:fe_jurusanku/widgets/jurusan_card.dart';
import 'package:flutter/material.dart';
import 'package:fe_jurusanku/theme.dart';

class JurusanPage extends StatelessWidget {
  const JurusanPage({super.key});

  Widget _tabSection(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Column(
        mainAxisSize: MainAxisSize.min,

        children: <Widget>[
          Container(
            child: TabBar(
              tabs: [
                Tab(text: "Katalog Kursus"),
                Tab(text: "Career Path"),
              ],
              indicatorColor: primaryDark,
              labelStyle: button.copyWith(fontWeight: bold,color: primaryDark),
              dividerColor: surface2,
              unselectedLabelColor: surface3,
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height*0.81,
            child: TabBarView(children: [
              Container(
                width:double.infinity,
                padding: EdgeInsets.symmetric(vertical: 20,horizontal: 30),
                child: ListView(
                  children:[
                    Row(
                      children: [
                        CourseCard(isView: false,)
                      ],
                    )
                  ],
                ),
              ),
              Container(
                width:double.infinity,
                padding: EdgeInsets.symmetric(vertical: 20,horizontal: 30),
                child: ListView(
                  children:[
                    Container(
                      height: 75,
                      width: 326,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: white
                      ),
                      alignment: Alignment.center,
                      child: Text('Software Engineer',style: headlineSmall,),
                    ),
                    SizedBox(height: 20,),
                    Container(
                      height: 75,
                      width: 326,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: white
                      ),
                      alignment: Alignment.center,
                      child: Text('Software Engineer',style: headlineSmall,),
                    ),
                    SizedBox(height: 20,),
                    Container(
                      height: 75,
                      width: 326,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: white
                      ),
                      alignment: Alignment.center,
                      child: Text('Software Engineer',style: headlineSmall,),
                    ),
                    SizedBox(height: 20,),
                    Container(
                      height: 75,
                      width: 326,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: white
                      ),
                      alignment: Alignment.center,
                      child: Text('Software Engineer',style: headlineSmall,),
                    ),
                  ],
                ),
              ),

            ]),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: surface2,
      appBar: AppBar(
        backgroundColor: surface2,
        leading: BackButton(color: white,),
        title: Text('Jurusan',style: titleMedium.copyWith(color: white),),
        centerTitle: true,
      ),
      body: ListView(
        children: [Container(
          width: double.infinity,
          margin: EdgeInsets.symmetric(horizontal: 10,vertical: 20),
          child: Column(
            children: [
              Text('Teknik Informatika',style: displaySmall.copyWith(color: white,fontWeight: bold),textAlign: TextAlign.start,),
              SizedBox(height: 10,),
              Container(
                padding: EdgeInsets.all(20),
                width: 328,
                height: 266,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: white
                ),
                child: Column(
                  children: [
                    Text('Teknik Informatika adalah jurusan yang mempelajari cara menggunakan teknologi komputer secara optimal guna menangani masalah transformasi atau pengolahan data dengan proses logika. Jurusan ini mempelajari berbagai prinsip terkait ilmu komputer, mulai dari pemrograman, komputasi, sistem operasi, hingga jaringan komputer.Mahasiswa Teknik Informatika akan mempelajari berbagai mata kuliah, di antaranya:',style: bodySmall,),
                    SizedBox(height: 15,),
                    Row(
                      children: [
                        ElevatedButton(
                            onPressed: (){},
                            style: ElevatedButton.styleFrom(
                              elevation: 0,
                              backgroundColor: primary90
                            ),
                            child: Text('Selengkapnya',style: button.copyWith(fontWeight: bold,color: primary),)
                        ),
                        Expanded(child: Container()),
                        Icon(Icons.bookmark,color: primary,size: 30,)
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(height: 30,),
              _tabSection(context)
            ],
          ),
        )],
      ),
    );
  }
}
