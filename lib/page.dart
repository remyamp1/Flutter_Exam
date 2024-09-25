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
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("lyyattil junction,Kochi,Ernakulam,Ker"),
            ),
            SizedBox(height: 20,),
            Container(
              height: 50,
              width: double.infinity,
              decoration: BoxDecoration(border: Border.all(),),
              child: Row(
                children: [
                  Text("Search for 'biriyani'"),
                  Spacer(),
                  Icon(Icons.search),
                  Icon(Icons.record_voice_over),
                ],
              ),
            ),
            SizedBox(height: 20,),
            Image(image: AssetImage("assets/images/emoji.jpeg")),
            SizedBox(height: 10,),
            Text("Welcome Meera",style: TextStyle(fontSize: 25),),
            SizedBox(height: 5),
            Text("Enjoy 10 Free Deliveries with Outlrt"),
        
        Expanded(child: 
       GridView.builder(
         
         gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
           crossAxisCount: 2,mainAxisSpacing: 2,crossAxisSpacing: 2,),
           itemCount: 4,
        itemBuilder: (context,index){
        return Container(
            height: 500,
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
                 
                    Row(
                      children: [
                        Container(
                        
                          height: 40,
                          width: 80,
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: const Color.fromARGB(255, 245, 230, 230)),
                       
                          child: Text(Database.Mylist[index]["name2"],style: TextStyle(fontSize: 10,color: Colors.orange),),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Stack(
                        children: [
                          Container(
                            child: Padding(
                              padding: const EdgeInsets.only(left: 110,),
                              child: CircleAvatar(
                                radius: 45,
                              
                                foregroundImage: AssetImage(Database.Mylist[index]["image"]),
                              
                              ),
                            ),
                           
                          ),
                        ]
                    
                              

                            
                          
                        
                      ),
                    ),
                
              ],
            ),
            
            
          );
       
        }),

        ),
        ]
      ),

      bottomNavigationBar: BottomNavigationBar
    (
      selectedItemColor: Colors.red,
      unselectedItemColor: Colors.grey,
      items:[

        BottomNavigationBarItem(icon: Icon(Icons.food_bank),label: "SWiggy",),
         BottomNavigationBarItem(icon: Icon(Icons.food_bank_sharp),label: "Food"),
          BottomNavigationBarItem(icon: Icon(Icons.mark_chat_read),label: "instamart"),
           BottomNavigationBarItem(icon: Icon(Icons.dining),label: "Dineout"),
            BottomNavigationBarItem(icon: Icon(Icons.record_voice_over),label: "Reorder"),
            BottomNavigationBarItem(icon: Icon(Icons.grid_on_outlined),label: "Genie"),
            


        
      ]),

    );
  }
}