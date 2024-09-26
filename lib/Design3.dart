import 'package:flutter/material.dart';
class DesignExample extends StatelessWidget{
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [ 
          Container(
            height: 50,
            width: double.infinity,
            child: Row(children: [
            Icon(Icons.arrow_back),
            Text("21",style: TextStyle(color: Colors.black),),
            Icon(Icons.arrow_downward),
            Spacer(),
            ElevatedButton(onPressed: (){}, child: Text("BUY\n one",style: TextStyle(color: Colors.orange),)),
            CircleAvatar(radius: 20,
            child:Icon(Icons.person) ,

            ),
            
            ]
            ),
            
              ),
              Row(children: [
              Text("Iyyattil Junction, Kochi,Ernakulam,Ker...")
            ],),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(border: Border.all(),borderRadius: BorderRadius.circular(15)),
               child: Row(
                children: [
                  Text("Search for 'pizza"),
                  Spacer(),
                  Icon(Icons.search),
                  
                
                ],

               ),
              ),
            )
        ]
      ),
      );
  }
}
