// import 'package:english/screen/aap_bar.dart';
import 'package:flutter/material.dart';

import '../../article_content.dart';
import '../../components/Article.dart';
import '../../components/Focus.dart';
import '../../const/color.dart';
import '../../constWidget/textwidget.dart';


class f_DesktopPage extends StatefulWidget {
  final int d_article_index;
  int d_selected_index;
  int d_selected_index2;
  f_DesktopPage(
      {required this.d_article_index, required this.d_selected_index,required this.d_selected_index2});

  @override
  State<f_DesktopPage> createState() => _f_DesktopPageState();
}

class _f_DesktopPageState extends State<f_DesktopPage> {
  Color btn_col = Colors.white;
  double textsize = 20;
  int selected_index2 = 1;

  @override
  Widget build(BuildContext context) {
    var mq = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              physics: ScrollPhysics(),
              child: Padding(
                padding: EdgeInsets.all(25.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // Article image
                        Article_image(
                            height: mq.height * 0.15,
                            width: mq.width * 0.15,
                            imgurl: articles[widget.d_article_index]
                                ['article_image']),

                        // Article name
                        const SizedBox(width: 30),
                        textwidget(
                            articles[widget.d_article_index]['article_name'],
                            25,
                            FontWeight.bold,
                            textcolor),

                        // Article in Focus mode
                        const SizedBox(width: 28),
                        InkWell(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Focas_container(
                                focustext: "Unfocus Mode",
                                height: mq.height * 0.090,
                                width: mq.width * 0.11,
                                fontsize: 13))
                      ],
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // Level_con(m_height:70, m_width:840, level_text_size:20, space_l_b:20),
                        Container(
                            width: mq.width * 0.450,
                            height: mq.height * 0.090,
                            // LEVEL TEXT
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    textwidget("Level", 25, FontWeight.bold,
                                        textcolor),
                                    SizedBox(width: 20),

                                    //DIFFERENT LEVEL ACCORDING TO THE NUMBERS'S  CONTAINER
                                    Container(
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          FloatingActionButton(
                                              elevation: 0.0,
                                              backgroundColor:
                                                  widget.d_selected_index == 1
                                                      ? Colors.lightGreen
                                                      : Colors.white,
                                              onPressed: () {
                                                setState(() {
                                                  widget.d_selected_index = 1;
                                                });
                                              },
                                              child: textwidget("1", 20,
                                                  FontWeight.w300, textcolor)),
                                          FloatingActionButton(
                                              elevation: 0.0,
                                              backgroundColor:
                                                  widget.d_selected_index == 2
                                                      ? Colors.lightGreen
                                                      : Colors.white,
                                              onPressed: () {
                                                setState(() {
                                                  widget.d_selected_index = 2;
                                                });
                                              },
                                              child: textwidget("2", 20,
                                                  FontWeight.w300, textcolor)),
                                          FloatingActionButton(
                                              elevation: 0.0,
                                              backgroundColor:
                                              widget.d_selected_index == 3
                                                      ? Colors.lightGreen
                                                      : Colors.white,
                                              onPressed: () {
                                                setState(() {
                                                  widget.d_selected_index = 3;
                                                });
                                              },
                                              child: textwidget("3", 20,
                                                  FontWeight.w300, textcolor)),
                                          FloatingActionButton(
                                              elevation: 0.0,
                                              backgroundColor:
                                                  widget.d_selected_index == 4
                                                      ? Colors.lightGreen
                                                      : Colors.white,
                                              onPressed: () {
                                                setState(() {
                                                  widget.d_selected_index = 4;
                                                });
                                              },
                                              child: textwidget("4", 20,
                                                  FontWeight.w300, textcolor)),
                                          FloatingActionButton(
                                              elevation: 0.0,
                                              backgroundColor:
                                                  widget.d_selected_index == 5
                                                      ? Colors.lightGreen
                                                      : Colors.white,
                                              onPressed: () {
                                                setState(() {
                                                  widget.d_selected_index = 5;
                                                });
                                              },
                                              child: textwidget("5", 20,
                                                  FontWeight.w300, textcolor)),
                                        ],
                                      ),
                                    ),
                                  ]),
                            )),

                        // Article font size

                        SizedBox(width: 250),

                        Padding(
                          padding: const EdgeInsets.all(1.0),
                          child: Container(
                            height: 30,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                FloatingActionButton(
                                    elevation: 0.0,
                                    backgroundColor: widget.d_selected_index2 == 1
                                        ? Color.fromARGB(255, 113, 168, 47)
                                        : Colors.white,
                                    onPressed: () {
                                      setState(() {
                                        widget.d_selected_index2 = 1;
                                        textsize = 22;
                                      });
                                    },
                                    child: textwidget("A", 15, FontWeight.w500,
                                        Colors.black)),
                                FloatingActionButton(
                                    elevation: 0.0,
                                    backgroundColor: widget.d_selected_index2 == 2
                                        ? Color.fromARGB(255, 113, 168, 47)
                                        : Colors.white,
                                    onPressed: () {
                                      setState(() {
                                        widget.d_selected_index2 = 2;
                                        textsize = 24;
                                      });
                                    },
                                    child: textwidget("A", 20, FontWeight.w500,
                                        Colors.black)),
                                FloatingActionButton(
                                    elevation: 0.0,
                                    backgroundColor: widget.d_selected_index2 == 3
                                        ? Color.fromARGB(255, 113, 168, 47)
                                        : Colors.white,
                                    onPressed: () {
                                      setState(() {
                                        widget.d_selected_index2 = 3;
                                        textsize = 26;
                                      });
                                    },
                                    child: textwidget("A", 23, FontWeight.w500,
                                        Colors.black)),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 30),
                    // Article content
                    Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Container(
                            child: textwidget(
                                articles[widget.d_article_index]['versions']
                                    [widget.d_selected_index - 1],
                                textsize,
                                FontWeight.w300,
                                const Color.fromARGB(255, 243, 33, 138)))),
                  ],
                ),
              ),
            ),
          ),

          // Container(height: 60,width:mq.width
          //     ,child:bottomScreen(article_name_in:article_name_in)),
        ],
      ),
    );
  }
}
