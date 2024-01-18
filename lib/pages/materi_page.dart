import 'package:fe_jurusanku/widgets/bab_card.dart';
import 'package:fe_jurusanku/widgets/course_card.dart';
import 'package:flutter/material.dart';
import 'package:fe_jurusanku/theme.dart';

class MateriPage extends StatelessWidget {
  const MateriPage({super.key});

  Widget _tabSection(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Column(
        mainAxisSize: MainAxisSize.min,

        children: <Widget>[
          Container(
            child: TabBar(
              tabs: [
                Tab(text: "Materi Kursus"),
                Tab(text: "Silabus"),
                Tab(text: "Project"),
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
                    BabCard(name: 'Array dan Linked List',),
                    SizedBox(height: 10,),
                    BabCard(name: 'Stack and Queue',url: 'assets/materi2.png',),
                    SizedBox(height: 10,),
                    BabCard(name: 'Array dan Linked List',),
                    SizedBox(height: 10,),
                    BabCard(name: 'Stack and Queue',url: 'assets/materi2.png',),
                  ],
                ),
              ),
              Container(
                width:double.infinity,
                margin: EdgeInsets.symmetric(vertical: 20,horizontal: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.white,
                ),
                padding: EdgeInsets.symmetric(vertical: 20,horizontal: 20),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      RichText(
                        text: TextSpan(
                            text: 'Minggu 1-2',
                            style: bodyLarge.copyWith(color: black,fontWeight: bold),
                            children:[
                              TextSpan(text: ': Pengantar Algoritma dan Struktur Data\nDefinisi Algoritma dan Struktur Data\nAnalisis kompleksitas waktu dan ruang\nNotasi Big-O\nPemilihan algoritma dan keputusan desain',style: bodyLarge.copyWith(fontWeight: regular))
                            ] ),
                      ),
                      SizedBox(height: 12,),
                      RichText(
                        text: TextSpan(
                            text: 'Minggu 3-4',
                            style: bodyLarge.copyWith(color: black,fontWeight: bold),
                            children:[
                              TextSpan(text: ': Struktur Data Dasar\nAnalisis kompleksitas waktu dan ruang\nNotasi Big-O\nPemilihan algoritma dan keputusan desain',style: bodyLarge.copyWith(fontWeight: regular))
                            ] ),
                      ),
                      SizedBox(height: 12,),
                      RichText(
                        text: TextSpan(
                            text: 'Minggu 3-4',
                            style: bodyLarge.copyWith(color: black,fontWeight: bold),
                            children:[
                              TextSpan(text: ': Struktur Data Dasar\nAnalisis kompleksitas waktu dan ruang\nNotasi Big-O\nPemilihan algoritma dan keputusan desain',style: bodyLarge.copyWith(fontWeight: regular))
                            ] ),
                      ),
                      SizedBox(height: 12,),
                      RichText(
                        text: TextSpan(
                            text: 'Minggu 3-4',
                            style: bodyLarge.copyWith(color: black,fontWeight: bold),
                            children:[
                              TextSpan(text: ': Struktur Data Dasar\nAnalisis kompleksitas waktu dan ruang\nNotasi Big-O\nPemilihan algoritma dan keputusan desain',style: bodyLarge.copyWith(fontWeight: regular))
                            ] ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                width:double.infinity,
                padding: EdgeInsets.symmetric(vertical: 20,horizontal: 30),
                child: ListView(
                  children:[
                    BabCard(name: 'Binomo',url: 'assets/materi3.png',),
                    SizedBox(height: 10,),
                    BabCard(name: 'Simplicity',url: 'assets/materi4.png',),
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
        title: Text('Kursus',style: titleMedium.copyWith(color: white),),
        centerTitle: true,
      ),
      body: ListView(
        children: [Container(
          width: double.infinity,
          margin: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
          child: Column(
            children: [
              Text('Algoritma dan Struktur Data',style: displaySmall.copyWith(color: white,fontWeight: bold),textAlign: TextAlign.start,),
              SizedBox(height: 30,),
              _tabSection(context)
            ],
          ),
        )],
      ),
    );
  }
}
