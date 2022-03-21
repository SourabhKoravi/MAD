import 'dart:html';
import 'package:fluttertoast/fluttertoast.dart';


import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home:myapp(),
      debugShowCheckedModeBanner: false,
      // theme: ThemeData.dark(),
    ),
  );
}
class myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        leading: Builder(
          builder: (context) =>
              PopupMenuButton(
                icon:
                Icon(Icons.menu), //don't specify icon if you want 3 dot menu
                color: Colors.black,
                itemBuilder: (context) =>
                [
                  PopupMenuItem<int>(
                    value: 0,
                    child: FlatButton(
                      child: Text("Vision"),
                      onPressed: ()=>vision(context),

                    ),

                  ),
                  PopupMenuItem<int>(
                    value: 0,
                    child: FlatButton(
                      child: Text("Mission"),
                      onPressed: ()=>miss(context),

                    ),
                  ),
                  // PopupMenuItem<int>(
                  //   value: 0,
                  //   child: FlatButton(
                  //     child: Text("LABS"),
                  //     onPressed: ()=>LABS(context),
                  //
                  //   ),
                  // ),
                  PopupMenuItem<int>(
                    value: 0,
                    child: FlatButton(
                      child: Text("About Us"),
                      onPressed: ()=>abtus(context),

                    ),

                  ),
                ],
                // onSelected: (value) => mission(context),
              ),
        ),
        title: Text("Welcome To IT Department"),
        backgroundColor: Colors.black,
      ),
      body: Builder(
        builder: (context) =>
            Center(
              child: Column(
                children: [
                  SizedBox(height: 30),
                  Image.network(
                    'https://cdn.pixabay.com/photo/2020/05/18/16/17/social-media-5187243_960_720.png',
                    height: 250,
                  ),
                  SizedBox(height: 50),
                  Container(

                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [

                        RaisedButton(
                            child: Text("Mission"),
                            onPressed: () => miss(context)
                        ),

                        RaisedButton(
                            child: Text("Vision"),
                            onPressed: () => vision(context)
                        ),
                        // RaisedButton(
                        //     child: Text("LABS"),
                        //     onPressed: () => LABS(context)
                        // ),
                        RaisedButton(
                            child: Text("About Us"),
                            onPressed: () => abtus(context)
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 50),
                  RaisedButton(
                      child: Text("Contact Us"),
                      onPressed:()=>contact(context)),
                ],

              ),
            ),
      ),
    );
  }

  void miss(BuildContext context){
    showDialog(context: context, builder: (BuildContext context){
      return AlertDialog(
        title: Text("Mission"),
        content: Container(

          child: Column(

            children: [
              Image.network('https://cdn.pixabay.com/photo/2019/11/14/08/44/startup-4625655_960_720.png',height: 300,width: 300),
              SizedBox(height: 20),
              Text('To provide excellent Information Technology education...',style: TextStyle(fontSize: 20),)
            ],
          ),
        ),
        actions: [
          FlatButton(onPressed:()=>Navigator.of(context).pop(), child: Text("Close"))
        ],
      );
    },);
  }
  void abtus(BuildContext context)
  {
    showDialog(context: context, builder:(BuildContext context){
      return AlertDialog(
        title: Text("About Us"),
        content: Container(

          child: Column(
            children: [
              Image.network(
                  'https://cdn.pixabay.com/photo/2018/04/29/01/17/technology-3358837_960_720.jpg',height: 300,width: 300
              ),
              SizedBox(height: 20),
              Text("FAMT Information Technology (IT) Department",style: TextStyle(fontSize: 20))
            ],
          ),
        ),

        actions: [
          FlatButton(onPressed: ()=>Navigator.of(context).pop(), child: Text("Close"))
        ],
      );
    },);
  }
  void vision(BuildContext context){
    showDialog(context: context, builder: (BuildContext context){
      return AlertDialog(
        title: Text("Vision"),

        content: Container(

            child: Column(
              children: [
                Image.network('https://cdn.pixabay.com/photo/2014/10/28/10/39/woman-506322_960_720.jpg',height: 300,width: 300),
                SizedBox(height: 20),
                Text('To provide excellent Information Technology education...',style: TextStyle(fontSize: 20),)
              ],
            )
        ),
        actions: [
          FlatButton(
              child: Text("Close"),
              onPressed:()=>Navigator.of(context).pop())
        ],
      );
    },);
  }
  void LABS(BuildContext context) {
    // showDialog(context: context, builder: (BuildContext context) {
    //   return AlertDialog(
    //     title: Text("LABS"),
    //     content: Container(
    //
    //       child: Column(
    //         children: [
    //           SizedBox(height: 30),
    //           RaisedButton(
    //             color: Colors.orange,
    //             child: Text("AI LAB"),
    //             onPressed:(){Fluttertoast.showToast(msg: "Welcome To AI LAB");
    //             },
    //           ),
    //           SizedBox(height: 30),
    //           RaisedButton(
    //             color: Colors.white,
    //             child: Text("Microsoft LAB",style: TextStyle(color: Colors.black)),
    //             onPressed:(){Fluttertoast.showToast(msg: "Welcome To Microsoft LAB");
    //             },
    //           ),
    //           SizedBox(height: 30),
    //           RaisedButton(
    //             color: Colors.green,
    //             child: Text("IOT LAB"),
    //             onPressed:(){Fluttertoast.showToast(msg: "Welcome To IOT LAB");
    //             },
    //           ),
    //           SizedBox(height: 30),
    //           RaisedButton(
    //             color: Colors.orange,
    //             child: Text("Amazon AWS LAB"),
    //             onPressed:(){Fluttertoast.showToast(msg: "Welcome To Amazon AWS LAB");
    //             },
    //           ),
    //           SizedBox(height: 30),
    //           RaisedButton(
    //             color: Colors.white,
    //             child: Text("NVIDIA LAB",style: TextStyle(color: Colors.black)),
    //             onPressed:(){Fluttertoast.showToast(msg: "Welcome To NVIDIA LAB");
    //             },
    //           ),
    //
    //
    //           SizedBox(height: 30),
    //           RaisedButton(
    //             color: Colors.green,
    //             child: Text("IOS LAB"),
    //             onPressed:(){Fluttertoast.showToast(msg: "Welcome To IOS LAB");
    //             },
    //           ),
    //
    //         ],
    //       ),
    //     ),
    //     actions: [
    //       FlatButton(
    //           child: Text("Close"),
    //           onPressed:()=> Navigator.of(context).pop())
    //     ],
    //
    //   );
    // },
    // );
  }
  void LAB1(BuildContext context){
    showDialog(context: context, builder: (BuildContext context){
      return AlertDialog();
    });
  }
  void contact(BuildContext context){
    showDialog(context: context, builder:(BuildContext context){
      return AlertDialog(
        title: Text("Contact Us"),
        content: Container(


          child: Column(
            children: [ SizedBox(height: 10.0),
              Text("Email -ithod@famt.ac.in"),
              SizedBox(height: 10.0),
              Text("Contact -8796543210"),
              SizedBox(height: 10.0),
              Text("Office Time - 10AM to 5PM"),
              SizedBox(height: 20,),

              // SizedBox(height: 10.0),
              // TextField(
              //   decoration: InputDecoration(
              //     filled: true,
              //     hintText:"Enter Your Email",
              //     border: InputBorder.none,
              //   ),
              // ),
              // SizedBox(height: 10.0 ),
              // TextField(
              //   decoration: InputDecoration(
              //     filled: true,
              //     hintText:"Enter Your Contact No.",
              //     border: InputBorder.none,
              //   ),
              // ),
              // SizedBox(height: 10.0),
              // TextField(
              //   maxLines: 5,
              //   decoration: InputDecoration(
              //       filled: true,
              //       hintText: "Enter Message",
              //       border: InputBorder.none
              //   ),
              // ),
              // SizedBox(height: 10.0),
              // RaisedButton(
              //   color: Colors.blue,
              //   child: Text("Send"),
              //   onPressed :()=> Fluttertoast.showToast(msg: "Thank You"),

              // )
            ],
          ),
        ),

        actions: <Widget>[
          FlatButton(
            child: Text('Close'),
            onPressed: () => Navigator.of(context).pop(),
          )
        ],
      );
    }
    );
  }
  

}
