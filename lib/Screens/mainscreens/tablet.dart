
import 'package:english/Screens/aap_bar.dart';
import 'package:english/const/color.dart';
import 'package:flutter/material.dart';
import '../../article_content.dart';
import '../../components/Article.dart';
import '../../components/Focus.dart';
import '../../constWidget/textwidget.dart';
import '../focus_screens/f_tablet.dart';




class tabletPage extends StatefulWidget {
  const tabletPage({super.key, required this.title});
  
  final String title;

  @override
  State<tabletPage> createState() => _tabletPageState();
}

class _tabletPageState extends State<tabletPage> {
  double textsize=20;
  int selected_index=3;
  int selected_index2=0;
  
  int article_name_in=0;
  

  

  @override
  Widget build(BuildContext context) {
    var mq= MediaQuery.of(context).size;
    return Scaffold(
      appBar:appbar(
          appbaricon: Icons.person,
          appbarsize: 16,midpadding:mq.width*0.460,image_height: 20,image_width: 40,textfont: 18,popupmenu: 15,
        ),
        backgroundColor: Colors.white,
      body: Column(
        children: [
          Expanded(child:
            SingleChildScrollView(physics:AlwaysScrollableScrollPhysics(),
              child: Padding(
                      padding: const EdgeInsets.all(25.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                              children: [

                      Row(
                        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                         Article_image(height:mq.height*0.15,width:mq.width*0.20,imgurl: articles[article_name_in]['article_image']),
                          const SizedBox(width:25),
                          textwidget(articles[article_name_in]['article_name'],40, FontWeight.bold, textcolor),
                          //  const SizedBox(width:30)

                        ],),

                         Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children:[
                            
                            InkWell(onTap:(){Navigator.push(context,MaterialPageRoute(builder: (context)=>f_tabletPage(t_article_index: article_name_in,t_selected_index: selected_index, t_selected_index2: selected_index2,)));} ,child: Focas_container(focustext:"Focus Mode",height:mq.height* 0.080,width:mq.width*0.310,fontsize:28)),

                            const SizedBox(width:150),
                            Row(
                                  children:[
                                  FloatingActionButton(elevation: 0.0,backgroundColor:
                                  selected_index2==1?Color.fromARGB(255, 113, 168, 47):Colors.white,
                                      onPressed:(){setState(() {selected_index2=1;textsize=18;});},
                                      child: textwidget("A", 18, FontWeight.w700, Colors.black)),
                                    
                                  FloatingActionButton(elevation: 0.0,backgroundColor:
                                  selected_index2==2?Color.fromARGB(255, 113, 168, 47):Colors.white,
                                      onPressed:(){setState(() {selected_index2=2;textsize=20;});},
                                      child: textwidget("A", 20, FontWeight.w700, Colors.black)),
                                  FloatingActionButton(elevation: 0.0,backgroundColor:
                                  selected_index2==3?Color.fromARGB(255, 113, 168, 47):Colors.white,
                                      onPressed:(){setState(() {selected_index2=3;textsize=25;});},
                                      child: textwidget("A",23, FontWeight.w700, Colors.black)),

                                ]),


                            ],),

                          // LEVEL ROW

                          const SizedBox(height:20),
                          Row(mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                width:mq.width*0.750,
                                height:mq.height*0.07,

                                // LEVEL TEXT
                                child:Padding(
                                  padding: const EdgeInsets.only(left:20.0,right:20.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children:[
                                      textwidget("Level",30, FontWeight.bold, textcolor),
                                      SizedBox(width:30),

                                      //DIFFERENT LEVEL ACCORDING TO THE NUMBERS'S  CONTAINER

                                        Container(
                                           child:Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                               children:[
                                                  FloatingActionButton(elevation:0.0,backgroundColor:
                                                  selected_index==1?Color.fromARGB(255, 113, 168, 47):Colors.white,

                                                  onPressed:(){setState(() {selected_index=1;});},child: textwidget("1", 20, FontWeight.w300, textcolor)),
                                                  // const SizedBox(width:20,),
                                                  FloatingActionButton(elevation:0.0,backgroundColor:
                                                  selected_index==2?Color.fromARGB(255, 113, 168, 47):Colors.white,
                                                  onPressed:(){setState(() {selected_index=2;});},child: textwidget("2", 20, FontWeight.w300, textcolor)),
                                                  // const SizedBox(width:20,),
                                                  FloatingActionButton(elevation:0.0,backgroundColor:
                                                  selected_index==3?Color.fromARGB(255, 113, 168, 47):Colors.white,
                                                  onPressed:(){setState(() {selected_index=3;});},child: textwidget("3", 20, FontWeight.w300, textcolor)),
                                                  // const SizedBox(width:20,),
                                                  FloatingActionButton(elevation:0.0,backgroundColor:
                                                  selected_index==4?Color.fromARGB(255, 113, 168, 47):Colors.white,
                                                  onPressed:(){setState(() {selected_index=4;});},child: textwidget("4", 20, FontWeight.w300, textcolor)),
                                                  // const SizedBox(width:20,),
                                                  FloatingActionButton(elevation:0.0,backgroundColor:
                                                  selected_index==5?Color.fromARGB(255, 113, 168, 47):Colors.white,
                                                  onPressed:(){setState(() {selected_index=5;});},child: textwidget("5", 20, FontWeight.w300, textcolor)),
                                            ],),
                                           ),
                                        // ),

                                   ]),
                                  ))

                            ]),
                                SizedBox(height:20),

                                // ARTICLE CONTENT

                                Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Container(
                                    child: textwidget(articles[article_name_in]['versions'][selected_index-1],
                                        textsize, FontWeight.w200, Color.fromARGB(255, 243, 33, 138),)
                                  ),
                                )

                              ], ),




            ),
         ),
      ),
       
         Container(height: 60,width:mq.width
          ,child:Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children:[
            InkWell(
              onTap: (){setState((){if(article_name_in>0){article_name_in--;}});}, child: Image.asset("images/left-arrow.png",height:35,width:35)),
            InkWell(onTap: (){setState((){if(article_name_in<4){article_name_in++;}});},child: Image.asset("images/right-arrow-black-triangle.png",height:35,width:35))
          ])),

    
        ],
      ),
    );
  }
}

