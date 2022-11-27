import 'package:flutter/material.dart';
class Detailpage extends StatelessWidget {
  String image;
  Detailpage(this.image);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor:const  Color(0xff1F2025),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 400,
              width: double.infinity,
              child: Hero(
                tag: image, child: Image.asset(image,fit: BoxFit.fill,),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(30),
              child: Column(
                children: [
                  Row(
                    children: [
                      Textbox("DESINER","Andre Roe"),
                      Textbox("YEAR"," 2018-2019")

                    ],
                  ),
                 const  SizedBox(height: 20,),
                  Row(
                    children: [
                      Textbox("COLOR"," Dark Black"),
                      Textbox("COMPANY"," Detality Co.")

                    ],
                  ),
                const   SizedBox(height: 30,),
                  Row(
                    children: [
                      Container(
                        margin:const  EdgeInsets.only(right: 20),
                        height: 10,
                        width: 10,
                        color:const  Color(0xffF78400),
                      ),
                      Container(
                        margin:const  EdgeInsets.only(right: 20),
                        height: 6,
                        width: 6,
                        color: Colors.grey,
                      ),
                      Container(
                        margin:const  EdgeInsets.only(right: 20),
                        height: 6,
                        width: 6,
                        color: Colors.grey,
                      ),
                      Container(
                        margin:const  EdgeInsets.only(right: 20),
                        height: 6,
                        width: 6,
                        color: Colors.grey,
                      ),

                    ],
                  ),
               const   SizedBox(height: 30,),
                 // Expanded(child: Container()),
                  Container(
                    height: 60,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      border: Border.all(color: const  Color(0xffF78400), ),


                    ),
                    alignment: Alignment.center,
                    child:const  Text("Pre Order",style: TextStyle(color: Color(0xffF78400),fontSize: 15 ),),
                  ),

                ],
              ),
            )
          ],
        ),
      ),

    );
  }
  Widget Textbox( String title,String nexttitle){
    return  Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,

        children: [
          Text(title,style: TextStyle(color: Colors.grey,),textAlign: TextAlign.start,),
         const  SizedBox(height: 5,),
          Text(nexttitle,style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold),)

        ],
      ),
    );
  }
}

    