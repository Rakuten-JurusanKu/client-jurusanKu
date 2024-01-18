import 'package:flutter/material.dart';
import 'package:fe_jurusanku/theme.dart';

class BabCard extends StatelessWidget {

  String name;
  String url;

  BabCard({this.name = '',this.url = 'assets/materi.png'});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 328,
      height: 259,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: white,
      ),
      alignment: Alignment.topCenter,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            width: 328,
            height: 191,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(12),
                topLeft: Radius.circular(12),
              ),
              image: DecorationImage(
                image: AssetImage('$url'),
                fit: BoxFit.cover
              )
            ),
          ),
          SizedBox(height: 12,),
          Text('$name',style: headlineSmall.copyWith(fontWeight: bold),textAlign: TextAlign.start,)
        ],
      ),
    );
  }
}
