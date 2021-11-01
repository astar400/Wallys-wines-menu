import 'package:flutter/material.dart';
import 'package:menu/ItemScreen.dart';
import 'package:menu/Items.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Wally\'s Wines',

      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key}) : super(key: key);




  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {




  @override
  Widget build(BuildContext context) {
    double height=MediaQuery.of(context).size.height;
    double width=MediaQuery.of(context).size.width;
    

    return SafeArea(
      child: Scaffold(


          backgroundColor: Colors.white,
           body:
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 20,),
                Container(
                  height: height/6.0,
                  child: Image.asset("assets/logo.png",fit: BoxFit.cover,),
                ),
                Text("Santa Monica",style: TextStyle(fontSize: 25, color: Color(0xff305434)),),
                SizedBox(height: 20,),
                Card(
                  elevation: 0.0,
                  child: Padding(
                  padding: const EdgeInsets.all(15.0),

                  child: Text("FOR THE TABLE",style: TextStyle( fontSize: 20, color: Color(0xff305434)),),
                ),),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:[
                    Spacer(flex: 2,),
                    Center(child: Column(children: CreateItems(Itemlist1))),
                    Spacer(flex: 1,),
                    Center(child: Column(children: CreateItems(Itemlist2))),
                    Spacer(flex: 2,),

                  ]
          ),

                Container(width: width/2.5, height:1.0,decoration: BoxDecoration(border: Border.all(style:BorderStyle.solid, color: Colors.black)),),
                SizedBox(height: 20,)
                // Card(
                //   elevation: 0.0,
                //   child: Padding(
                //     padding: const EdgeInsets.all(15.0),
                //
                //     child: Text("FOR THE TABLE",style: TextStyle( fontSize: 20, color: Color(0xff305434)),),
                //   ),
                // ),
                // Row(
                //     mainAxisAlignment: MainAxisAlignment.center,
                //     children:[
                //       Spacer(flex: 2,),
                //       Center(child: Column(children: CreateItems(Itemlist1))),
                //       Spacer(flex: 1,),
                //       Center(child: Column(children: CreateItems(Itemlist2))),
                //       Spacer(flex: 2,),
                //
                //     ]
                // ),

              ],
            ),)
           // ListView.builder(
           //        padding: EdgeInsets.all(10),
           //        itemCount: Itemlist.length,
           //        itemBuilder: (context,index){
           //          Item item=Itemlist[index];
           //          return ItemCard(item: item) ;
           //    }
           // )

      
      ),
    );
  }
}

class ItemCard extends StatefulWidget {
  const ItemCard({Key? key,required this.item}) : super(key: key);
  final Item item;

  @override
  _ItemCardState createState() => _ItemCardState(item: item);
}

class _ItemCardState extends State<ItemCard> {
  _ItemCardState({required this.item}) ;
  final Item item;
  @override
  Widget build(BuildContext context) {
    double height=MediaQuery.of(context).size.height/3.5;
    double width=MediaQuery.of(context).size.width/2.75;
    return GestureDetector(
      onTap: (){
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => ItemScreen(item: item)),
        );
      },
      child: Hero(
        tag: item,
        child: Card(
          color: Colors.white,
          elevation: 0.0,

          child: Container(
            width: width,
            height: height,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,

              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 20,),


                      SizedBox(height: 20,),
                      RichText(text:TextSpan(text: "${item.name}" ,style: TextStyle(fontSize: 16,color: Colors.black,fontWeight: FontWeight.bold),),),
                      SizedBox(height: 20,),
                      Expanded(child: RichText(text: TextSpan(text: "${item.desc}",style: TextStyle(fontSize: 12,color: Colors.black54,)))),
                      SizedBox(height: 20,),

                    ],

                  ),
                ),
                Text("${item.price}")
              ],
            ),
          ),
        ),
      ),
    );

  }
}
List <Widget> CreateItems(List<Item> Itemlist){return Itemlist.map((item) => ItemCard(item: item)).toList();}