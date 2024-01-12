import 'package:flutter/material.dart';
import 'package:fe_jurusanku/theme.dart';

class JurusanCard extends StatelessWidget {
  String name;
  String imageUrl;
  JurusanCard({this.name = '',this.imageUrl = 'assets/doctor.png'});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.pushNamed(context, '/jurusan');
      },
      child: Container(
        height: 145,
        width: 328,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: white,
        ),
        child:Row(
          children: [
            Container(
              height: 145,
              width: 156,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                image: DecorationImage(
                  image: AssetImage('$imageUrl'),
                  fit: BoxFit.cover
                )
              ),
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.only(top: 10,right: 10,left: 10),
                child: Column(
                  children: [
                    Container(
                      height: 20,
                      margin: EdgeInsets.only(bottom: 5),
                      child: Icon(Icons.bookmark,color: primary,),
                      alignment: Alignment.centerRight,
                    ),
                    Text('$name',style: titleLarge.copyWith(fontWeight: bold),overflow: TextOverflow.ellipsis,textAlign: TextAlign.left,),
                    SizedBox(height: 10,),
                    Row(
                      children: [
                        Icon(Icons.bookmark_border_outlined,color: neutral60,),
                        SizedBox(width: 5,),
                        Text('1,1rb',style: labelSmall.copyWith(color: neutral60,fontWeight: bold),)
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),

      ),
    );
  }
}
