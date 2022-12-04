import 'package:flutter/material.dart';



class todoApp extends StatefulWidget {

  @override
  State<todoApp> createState() => _todoAppState();
}

class _todoAppState extends State<todoApp> {



  @override
  Widget build(BuildContext context) {
    Color redPink= Color(0xFFFFD1A61);
    double height=MediaQuery.of(context).size.height;
    double width=MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: redPink,
        title: const Center(child: Text("To Do App",
          style: TextStyle(
          fontSize: 25
          ),
         )
        ),
      ),
      body: Column(
        children: const [

        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: ()=>showModalBottomSheet(
            context: context,
            builder: (BuildContext context){
              return Container(
                height: height*0.5,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(

                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: height*0.03,vertical: width*0.03),
                        child: TextFormField(
                          decoration: InputDecoration(
                            label: Text("Task Name"),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15)
                            )
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: height*0.03,vertical: width*0.03),
                        child: TextFormField(
                          decoration: InputDecoration(
                              label: Text("Task Name"),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15)
                              )
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: height*0.03,vertical: width*0.03),
                        child: TextFormField(
                          decoration: InputDecoration(
                              label: Text("Task Name"),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15)
                              )
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: height*0.03,vertical: width*0.03),
                        child: Container(
                          width: double.infinity,
                          child: Column(

                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              ElevatedButton(onPressed: (){}, child: Text("ADD")),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              );
            })
        ,backgroundColor:redPink ,
        child: const Icon(Icons.add),),
    );
  }
}
