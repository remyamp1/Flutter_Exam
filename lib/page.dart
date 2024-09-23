import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_exam/database.dart';
class Homepage extends StatelessWidget{
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
          SizedBox(height: 5,),
            Text("lyyattil junction,Kochi,Ernakulam,Ker"),
            SizedBox(height: 20,),
        
        Expanded(child: 
       GridView.builder(itemCount: 4,
         
         gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
           crossAxisCount: 2,crossAxisSpacing: 2,mainAxisSpacing: 2,childAspectRatio: 2),
        itemBuilder: (context,index){
        return Column(
           children: [
           Container(
               height: 200,
               width: double.infinity,
               decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: const Color.fromARGB(255, 245, 230, 230)),
               child: Column(
                 children: [
                   Row(
                     mainAxisAlignment: MainAxisAlignment.start,
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                       Text(Database.Mylist[index]["name"],style: TextStyle(color: Colors.black,fontSize: 20),),
                     ]
                   ),
                       
                       Row(
                         children: [
                           Text(Database.Mylist[index]["name1"],style: TextStyle(color: Colors.black,fontSize: 15)),
                         ],
                       ),
                    
                       Container(
                        
                         height: 40,
                         width: 80,
                         color: const Color.fromARGB(255, 129, 114, 114),
                         child: Text(Database.Mylist[index]["name2"],style: TextStyle(fontSize: 10,color: Colors.orange),),
                       )
                   
                 ],
               ),
               
               
             ),
         ],
       );
       
        }),

        ),
        ]
      ),

      bottomNavigationBar: BottomNavigationBar(items: [

        BottomNavigationBarItem(icon: Icon(Icons.food_bank),label: "SWiggy"),
         BottomNavigationBarItem(icon: Icon(Icons.food_bank_sharp),label: "Food"),
          BottomNavigationBarItem(icon: Icon(Icons.mark_chat_read),label: "instamart"),
           BottomNavigationBarItem(icon: Icon(Icons.dining),label: "Dineout"),
            BottomNavigationBarItem(icon: Icon(Icons.record_voice_over),label: "Reorder"),
            BottomNavigationBarItem(icon: Icon(Icons.grid_on_outlined),label: "Genie"),
            


        
      ]),

    );
  }
}