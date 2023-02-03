import 'package:flutter/material.dart';
import 'package:timelines/timelines.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePage();
}

class _HomePage extends State<HomePage> {
  bool isSwitch = false;
  bool? isCheckbox = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        // title: const Text("Jess"),
        // automaticallyImplyLeading: false,
        // leading: IconButton(
        //   icon: const Icon(Icons.arrow_back_ios),
        //   onPressed: () {
        //     Navigator.of(context).pop();
        //   },
        // ),

        backgroundColor: Colors.black,
        leading: const Icon(Icons.photo, size: 40.0,),
        leadingWidth: 60,
        actions: [
          IconButton(
              onPressed: () {
                debugPrint("Tokoss");
              },
              icon: const Icon(
                size: 40.0,
                Icons.tag_faces_sharp,
              ))
        ],
        centerTitle: true,
        // title: const Text("FITFRENZY"),
        elevation: 0.0,
        title: Image.asset('images/logo.png', fit: BoxFit.cover),

      ),
      body: SingleChildScrollView(
        child: Column(
          children: [

            Image.asset('images/face.png'),
            const SizedBox(height: 10),


            Container(
              margin: const EdgeInsets.all(10.0),
              padding: const EdgeInsets.all(10),
              // color: Colors.blueAccent,
              width: double.infinity,


              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  Text ("Trouve ton sport", style: TextStyle(color: Colors.white),),
                  Text ("Mon programme", style: TextStyle(color: Colors.white),)
                ],
              ),

            ),



            const Divider(
              thickness: 3,
              endIndent: 0,
              color: Colors.white,
            ),

            // Row(
            //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //
            //
            //   children: const [
            //     Text("adsa",  style: TextStyle(color: Colors.white),),
            //     Icon(
            //
            //       Icons.local_airport,
            //       color: Colors.red,
            //     ),
            //
            //     Icon(
            //       Icons.local_airport,
            //       color: Colors.pink,
            //     ),
            //
            //     Icon(
            //       Icons.local_airport,
            //       color: Colors.yellowAccent,
            //     )
            //   ],
            // ),


            // OutlinedButton(
            //     onPressed: () {
            //       debugPrint("OutlinedButton Print");
            //     },
            //     child: const Text("jess OutlineButton")),
            // TextButton(
            //     onPressed: () {
            //       debugPrint("TextButton PRINT");
            //     },
            //     child: const Text("jess TextButton")),
            // GestureDetector(
            //   onTap: () {
            //     debugPrint('plane pressed');
            //   },
            //   child: Row(
            //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //     children: const [
            //       Icon(
            //         Icons.local_airport,
            //         color: Colors.black,
            //       ),
            //       Icon(
            //         Icons.local_airport,
            //         color: Colors.black,
            //       ),
            //       Icon(
            //         Icons.local_airport,
            //         color: Colors.yellowAccent,
            //       )
            //     ],
            //   ),
            // ),
            // Switch(
            //     value: isSwitch,
            //     onChanged: (bool newBool) {
            //       setState(() {
            //         isSwitch = newBool;
            //       });
            //     }),
            // Checkbox(
            //   value: isCheckbox,
            //   onChanged: (bool? newbool) {
            //     setState(() {
            //       isCheckbox = newbool;
            //     });
            //   },
            // ),
            // Image.network('https://w7.pngwing.com/pngs/34/478/png-transparent-tutankhamun-pharaoh-tutankhamun-ancient-egypt-pharaoh-new-kingdom-of-egypt-egyptian-egyptian-gods-miscellaneous-head-egyptian-thumbnail.png'),
          ],
        ),
      ),
    );
  }
}
