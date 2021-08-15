import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Constants.dart';

class Bodywidget extends StatelessWidget {
  const Bodywidget({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double height = size.height.toDouble();
    double width = size.width.toDouble();
    return Container(
      width: double.infinity,
      child: Stack(
        children: [
          Positioned(
            top: 50,
            child: Image.network(
              background,
              height: height/3,
              width: width,
              filterQuality: FilterQuality.high,
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            top: height/4,
            left: width/2.9,
            child: Container(
              child:Stack(
                children: [
                  Positioned(
                    top: -20,
                    child: Image.asset(
                      fog,
                      height: 150,
                      width: 150,
                      )
                  ),
                  Row(
                    children: [
                      Text('6',
                      style: GoogleFonts.stylish(
                        fontSize: height/5,
                        color: Colors.white,
                      ),),
                      SizedBox(width: 5,),
                      Text('C',
                      style: GoogleFonts.stylish(
                        fontSize: height/5,
                        color: Colors.white,
                      ),),
                    ],
                  )
                ],
              ) ,
              ),

          ),
         Positioned(
           bottom: height/3.4,
           left: 50,
           child: Text('Weather Forecast',
           style: smalltext,), 
         ),
          Positioned(
            bottom: 50,
            left: 20,
            child: Container(
              child: Row(
                children: [
                  CustomCard(
                    temp: '17',
                    image: rainy, 
                    mode: 'Rainy',),
                  SizedBox(width: 10),
                  CustomCard(
                    temp: '34',
                    image: sun,
                    mode: 'Sunny',
                  ),
                  SizedBox(width: 10),
                  CustomCard(
                    temp: '12',
                    image: cloudy,
                    mode: 'Rainy',
                  ),
                  SizedBox(width: 10),
                ],
              ),
            )
            )
        ],
      ),
      
    );
  }
}

class CustomCard extends StatelessWidget {
  const CustomCard({
    Key? key, required this.image, required this.temp, required this.mode,
  }) : super(key: key);

  final String image;
  final String temp;
  final String mode;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.blueGrey[800],
        borderRadius: BorderRadius.circular(17),
      ),
      height: 130,
      width: 130,
      
      child: Column(
        children:[
            Image.asset(image,height: 70,width: 100,fit: BoxFit.cover,),
            Text(mode,style: smalltext,),
            Text(temp,style: smalltext,)
        ],
      ),
    );
  }
}