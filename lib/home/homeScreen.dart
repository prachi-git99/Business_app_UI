import 'package:blackcoffer/constants/colors.dart';
import 'package:blackcoffer/constants/styles.dart';
import 'package:flutter/material.dart';



class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title:Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height:15,),
                Text("Howdy Prachi Verma !!",
                    style: TextStyle(
                        color: white,
                        fontSize: 14,
                        fontWeight: FontWeight.bold
                    )
                ),
                SizedBox(height:5,),
                Row(
                  children: [
                    Icon(Icons.pin_drop,size: 18,),
                    SizedBox(width:5,),
                    Text("Bengaluru",
                        style: TextStyle(
                            color: white,
                            fontSize: 14,
                            fontWeight: FontWeight.w500
                        )
                    ),
                  ],
                ),
              ],
            ),
            bottom: TabBar(
              tabs: <Widget>[
                Tab(icon: Icon(Icons.people_alt_rounded,size: 26)),
                Tab(icon: Icon(Icons.shopping_bag_rounded,size: 26,)),
                Tab(icon: Icon(Icons.add_business,size: 26)),
              ],
            ),

            backgroundColor:darkBlue,
            actions: [
              GestureDetector(
                child:InkWell(
                  onTap: (){

                  },
                  child: Container(
                      margin:new EdgeInsets.only(right:18,top:5),
                      child:Column(
                        children: [
                          Row(
                            children: [
                              Icon(Icons.square_outlined,size: 14,),
                              Icon(Icons.linear_scale,size: 14,),

                            ],
                          ),
                          Row(children: [
                            Icon(Icons.check,size: 14,),
                            Icon(Icons.linear_scale,size: 14,),

                          ],),
                          Row(
                            children: [
                              Text("Refine",
                                  style: TextStyle(
                                      color: white,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400
                                  )
                              ),
                            ],
                          ),
                        ],
                      )
                  ),
                ),
              ),
            ],
          ),
          drawer: Drawer(
            child: Center(
              child: Container(
                child: Text("Drawer Here ",
                    style: TextStyle(
                        color: darkBlue,
                        fontSize: 14,
                        fontWeight: FontWeight.w400
                    )
                ),
              ),
            ),
          ),
          body: Container(
            child: Column(
              children: [
                SizedBox(
                  height:10,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.only (left:25),
                        height: 40,
                        child: TextFormField(
                          cursorColor: Colors.grey,
                          decoration: InputDecoration(
                              fillColor: Colors.white,
                              filled: true,
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(50),
                              ),
                              hintText: 'Search',
                              hintStyle: TextStyle(
                                  color: Colors.grey,
                                  fontSize:12
                              ),
                              prefixIcon: Container(
                                padding: EdgeInsets.all(5),
                                child: Icon(Icons.search,size: 19,color: darkBlue,),
                                width: 18,
                              )
                          ),
                        ),
                      ),
                    ),
                    Container(
                        margin: EdgeInsets.only (left:10,right:20),
                        child: Icon(Icons.view_headline_sharp,size: 29,)
                    ),
                  ],
                ),
                SizedBox(height:20,),

                Column(
                  children: [
                    Container(
                      height:size.height/2.2,
                      // color: Colors.pinkAccent,
                      child: Stack(
                        children: [
                          Column(
                            children: [
                              Expanded(
                                  flex: 2,
                                  child: Container(
                                    margin: EdgeInsets.fromLTRB(35,10,15,10),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(15),
                                        boxShadow: [
                                          BoxShadow(blurStyle: BlurStyle.solid,blurRadius:0.10)
                                        ],
                                        color: Colors.white,
                                    ),
                                    child:Column(
                                      children: [
                                        SizedBox(height:10,),
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.end,
                                          children: [
                                            Icon(Icons.add,size:18,color: darkBlue,),
                                            Text("INVITE",style: TextStyle(color: darkBlue,fontSize:16,fontWeight: FontWeight.bold),),
                                            SizedBox(width: 10,)
                                          ],
                                        ),
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text("Ansu Vajani",style: TextStyle(color: darkBlue,fontSize:16,fontWeight: FontWeight.bold),),
                                            Text("Bengaluru | Salary",style: TextStyle(color: Colors.blueGrey[500],fontSize:16,fontWeight: FontWeight.w400),),
                                            Text("Within 100 m",style: TextStyle(color: darkBlue,fontSize:16,fontWeight: FontWeight.bold),),
                                          ],
                                        ),
                                        SizedBox(height:5,),
                                        Container(
                                          height: 20,
                                          width:size.width/2.5,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(50),
                                            color: Colors.grey
                                          ),
                                          child: Container(
                                            height: size.height,
                                            decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(50),
                                                color: darkBlue
                                            ),
                                          ),
                                        ),
                                        SizedBox(height:30,),
                                        Container(
                                          padding: EdgeInsets.only(left:20),
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text("Coffee | Business | Friendship",style: TextStyle(color: darkBlue,fontSize:16,fontWeight: FontWeight.bold),),
                                              Text(
                                                "Hi community! I am open to new connection.",
                                                style: TextStyle(color:Colors.blueGrey[500],fontSize:16,fontWeight: FontWeight.w400),
                                              ),
                                              SizedBox(height: 5,),
                                              Text(
                                                "I am a Digital Marketer,Freelancer works ahead for growing business digitally.",
                                                style: TextStyle(color: Colors.blueGrey[500],fontSize:16,fontWeight: FontWeight.w400),
                                              ),
                                            ],
                                          ),
                                        ),

                                      ],
                                    ),
                                  ),
                              ),
                            ],
                          ),
                          Align(
                            alignment: Alignment.topLeft,
                            child: Container(
                              margin: EdgeInsets.only(left:10,top:20),
                              width: size.width * 0.25,
                              height: size.height * 0.13,
                              child: Card(
                                elevation: 12,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                color:Colors.blueGrey[200],
                                child: Center(child: Text("AV",style: TextStyle(fontWeight: FontWeight.bold,fontSize:28,color:darkBlue),)),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
