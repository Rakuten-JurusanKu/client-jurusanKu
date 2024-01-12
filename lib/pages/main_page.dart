import 'package:fe_jurusanku/pages/discussion_page.dart';
import 'package:fe_jurusanku/pages/home/home_page.dart';
import 'package:fe_jurusanku/pages/question_page.dart';
import 'package:fe_jurusanku/theme.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentIndex = 1;

  Widget customBottomNav() {
    return BottomNavigationBar(
        onTap: (int index){
          setState(() {
            currentIndex = index;
          });
        },
        currentIndex: currentIndex,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        backgroundColor: primary90,
        items: [
          BottomNavigationBarItem(
              icon: Container(
                  child: Image.asset('assets/question.png',width: 25,color: primary,)
              ),
            activeIcon: Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: primaryFixedDim,
                    borderRadius: BorderRadius.circular(100)
                ),
                child: Image.asset('assets/question.png',width: 20,color: primary,)
            ),
            label: ''
          ),
          BottomNavigationBarItem(
              icon: Image.asset('assets/home.png',width: 25,color: primary,),
              label: '',
            activeIcon: Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: primaryFixedDim,
                    borderRadius: BorderRadius.circular(100)
                ),
                child: Image.asset('assets/home.png',width: 20,color: primary,)
            ),
          ),
          BottomNavigationBarItem(
              icon: Image.asset('assets/discussion.png',width: 25,color: primary,),
              label: '',
            activeIcon: Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: primaryFixedDim,
                    borderRadius: BorderRadius.circular(100)
                ),
                child: Image.asset('assets/discussion.png',width: 20,color: primary,)
            ),
          ),
        ]
    );
  }

  Widget body() {
    switch (currentIndex) {
      case 0:
        return QuestionPage();
      case 1:
        return HomePage();
      case 2:
        return DiscussionPage();
      default:
        return HomePage();
    }
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: customBottomNav(),
      body: body(),
    );
  }
}
