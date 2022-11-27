import 'package:flutter/material.dart';

import 'detailpage.dart';
class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const  Text("Architects"),
        actions:const  [
          Padding(padding: EdgeInsets.all(10),
            child:    Icon(Icons.segment,color: Colors.grey,),)
        ],

        backgroundColor:const  Color(0xff1F2025),
      ),

      backgroundColor: const Color(0xff1F2025),
      body: Padding(
        padding:const  EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:[
            TweenAnimationBuilder(


                tween: Tween<double>(begin: 0,end: 1), duration:const  Duration(seconds: 2), builder: (context,val,child){
              return Opacity(opacity:val,
                child: Padding(
                  padding: EdgeInsets.only(top: val*20,
                  ),
                  child: child,
                ),);

      },
              child: Column(
                children: [
                  const  Text("Dark",style: TextStyle(color: Colors.white,fontSize: 50,fontWeight: FontWeight.w300),),
                  const   Text("Interior",style: TextStyle(color: Colors.white,fontSize: 50,fontWeight: FontWeight.w300),),
                  const  SizedBox(height: 10,),
                ],
              )),



            Row(
              children: [
                const  SizedBox(
                    width: 40,
                    child: Divider(color: Color(0xffF78400),thickness: 2,)),
                const  SizedBox(width: 20,),
                const  Text("Learn more",style: TextStyle(color: Color(0xffF78400)),),
                Expanded(child: Container())

              ],
            ),
            const SizedBox(height: 29,),
            Expanded(child: PageView(
              onPageChanged: (index){


              },
              padEnds: false,
              scrollBehavior: const ScrollBehavior(),
              children: [


                GestureDetector(
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Detailpage("assets/interior1.jpeg")));
                  },
                  child: Hero(
                    tag: "assets/interior1.jpeg",
                    child: Container(
                        padding: const  EdgeInsets.only(right: 30),
                        child: Image.asset("assets/interior1.jpeg",fit: BoxFit.fill,)),
                  ),
                ),

                GestureDetector(
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Detailpage("assets/interior2.png")));
                  },
                  child: Hero(
                    tag: "assets/interior2.png",
                    child: Container(
                        padding: const  EdgeInsets.only(right: 30),
                        child: Image.asset("assets/interior2.png",fit: BoxFit.fill,)),
                  ),
                ),
                GestureDetector(
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Detailpage("assets/interior3.jpeg")));
                  },
                  child: Hero(
                    tag: "assets/interior3.jpeg",
                    child: Container(
                        padding: const  EdgeInsets.only(right: 30),
                        child: Image.asset("assets/interior3.jpeg",fit: BoxFit.fill,)),
                  ),
                ),
                GestureDetector(
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Detailpage("assets/interior4.jpeg")));
                  },
                  child: Hero(
                    tag: "assets/interior4.jpeg",
                    child: Container(
                        padding: const  EdgeInsets.only(right: 30),
                        child: Image.asset("assets/interior4.jpeg",fit: BoxFit.fill,)),
                  ),
                ),



              ],
            )),




          ],
        ),
      ),
    );
  }
}