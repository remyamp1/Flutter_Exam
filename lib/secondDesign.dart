import 'package:flutter/material.dart';
import 'package:flutter_exam/database.dart';
class Design extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
  return Scaffold(
    body: Column(
      children: [
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: List.generate(4, (index){
              return Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CircleAvatar(
                      radius: 40,
                      foregroundImage: AssetImage(Database.Mylist1[index]["image"]),
                    ),
                    
                  ),
                 
                ],
              );
            })
          ),
        ),
         Row(
           children: [
             Text("Pothichoru"),
           
         Spacer(),
          Text("Sandwich"),
         Spacer(),
          Text("Appam"),
         Spacer(),
          Text("Poori"),
           ]
         ),
         Row(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children:List.generate(4, (index){
                  return Row(
children: [
  Padding(
    padding: const EdgeInsets.all(8.0),
    child: CircleAvatar(
      radius: 40,
      foregroundImage: AssetImage(Database.Mylist2[index]["image"]),
    ),
  )
],
                  );
                }),
              ),
            ),
            ],
    ),
    Row(
      children: [
        Text("Dosa"),
        Spacer(),
        Text("ldli"),
        Spacer(),
        Text("puttu"),
        Spacer(),
        Text("Parotta")
      ],
    ),
SizedBox(height: 10),

Row(
  mainAxisAlignment: MainAxisAlignment.start,
  children: [
    Text("TOP RATED NEAR TOU ________________",style: TextStyle(fontSize: 15),),
  ],
),
SizedBox(height: 10,),

Row(
  children: [
    Container(
      height: 150,
      width: 130,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),),
      child: Image(image: AssetImage("assets/images/p8.jpeg")),
    ),
    SizedBox(width: 5,),
    Container(
      height: 150,
      width:130,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(15)),
     child: Image(image: AssetImage("assets/images/p2.jpeg"),),
     
    ),
   
    SizedBox(width: 5,),
    Container(
      height: 150,
      width: 130,
       decoration: BoxDecoration(borderRadius: BorderRadius.circular(15)),
      child: Image(image: AssetImage("assets/images/p6.jpeg")),
    )
  ],
),
Row(
  children: [
    Text("Sukrutham Cater...\n4.6 .25-30 mins"),
   
    Spacer(),
    Text("Sukrutham Cater...\n4.6 .25-30 mins"),
    Spacer(),
     Text("Sukrutham Cater...\n4.6 .25-30 mins"),
  ],
),
Row(
  children: [
     Text("South indian,indian",style: TextStyle(color: const Color.fromARGB(255, 128, 126, 126)),),
     Spacer(),
      Text("Snacks,Sweets,Kerala",style: TextStyle(color: const Color.fromARGB(255, 128, 126, 126)),),
      Spacer(),
       Text("Kerala,South ",style: TextStyle(color: const Color.fromARGB(255, 128, 126, 126)),),
  ],
),
SizedBox(height: 5,),
Row(
  children: [
    ElevatedButton(onPressed: (){}, child: Text("Filter"),),
    ElevatedButton(onPressed: (){}, child: Text("Sort by"),),
    ElevatedButton(onPressed: (){}, child: Text("Fast Delivery")),
    ElevatedButton(onPressed: (){}, child: Text("Cuisines")),
    
  ],
)

  


      ]
    ),
  );
  }
}