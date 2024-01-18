import 'package:flutter/material.dart';
import 'package:fe_jurusanku/theme.dart';

class CourseCard extends StatefulWidget {
  bool isView;
  CourseCard({this.isView = true});

  @override
  State<CourseCard> createState() => _CourseCardState();
}

class _CourseCardState extends State<CourseCard> {
  late bool _isView;

  @override
  void initState() {
    super.initState();
    // Initialize _isView with the value from the constructor parameter
    _isView = widget.isView;
  }

  bool get isView => _isView;

  void setIsView(bool value) {
    setState(() {
      _isView = value;
    });
  }



  @override
  Widget build(BuildContext context) {
    return Container(
      height: 231,
      width: 155,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: white
      ),
      child: Column(
        children: [
          Container(
            width: 155,
            height: 110,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(12),
                topRight: Radius.circular(12),
              ),
              image: DecorationImage(
                image: AssetImage('assets/alstrukdat.png'),
                fit: BoxFit.cover
              )
            ),
          ),
          SizedBox(height: 10,),
          Container(padding:EdgeInsets.symmetric(horizontal: 10),child: Text('Algoritma dan Struktur Data',style: titleSmall.copyWith(fontWeight: bold),textAlign: TextAlign.center,)),
          SizedBox(height: 10,),
          ElevatedButton(
              onPressed: (){
                if(_isView){
                  Navigator.pushNamed(context, '/materi');
                }
                setIsView(true);
              },

              child: Text('${_isView ? 'View' : 'Enroll'}',style: button.copyWith(color: primary,fontWeight: bold),),
            style: ElevatedButton.styleFrom(
              backgroundColor: buttonCard,
              elevation: 0,
              side: BorderSide(color: primary),
              fixedSize: Size(127, 40),
            ),
          )
        ],
      ),
    );
  }
}
