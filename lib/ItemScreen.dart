import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:menu/Items.dart';
import '';
class ItemScreen extends StatelessWidget {
  const ItemScreen({Key? key,required this.item}) : super(key: key);
  final Item item;

  @override
  Widget build(BuildContext context) {
    double height=MediaQuery.of(context).size.height;
    double width=MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color(0xff305434),
        elevation: 0.0,

        title: Text(item.name),),
      backgroundColor: Colors.white,
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children:[
              SizedBox(height: 20,),
              Hero(
                tag: item,
                child: Container(height: height/1.35,width:width/1.25,
                  child: Image(image: AssetImage(item.path),fit: BoxFit.cover,)),
              ),
            SizedBox(height: 20,),
            Text("${item.name}",style: TextStyle(fontSize: 18,color: Colors.black,fontWeight: FontWeight.bold),),
              SizedBox(height: 20,),
              Text("${item.desc}",style: TextStyle(fontSize: 14,color: Colors.black54,)),
            SizedBox(height: 50,),
              CarouselWithIndicatorDemo()
              // Row(children: imageSliders,)
            ],
            

          ),
        ),
      ),
    );
  }
}

class CarouselWithIndicatorDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _CarouselWithIndicatorState();
  }
}

class _CarouselWithIndicatorState extends State<CarouselWithIndicatorDemo> {
  int _current = 0;
  final CarouselController _controller = CarouselController();

  @override
  Widget build(BuildContext context) {
    return  Column(children: [
        CarouselSlider(
          items: imageSliders,
          carouselController: _controller,
          options: CarouselOptions(
            height: 600,

              autoPlay: true,
              enlargeCenterPage: true,
              // aspectRatio: 2.0,
              onPageChanged: (index, reason) {
                setState(() {
                  _current = index;
                });
              }),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: imgList.asMap().entries.map((entry) {
            return GestureDetector(
              onTap: () => _controller.animateToPage(entry.key),
              child: Container(
                width: 12.0,
                height: 12.0,
                margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: (Theme.of(context).brightness == Brightness.dark
                        ? Colors.white
                        : Colors.black)
                        .withOpacity(_current == entry.key ? 0.9 : 0.4)),
              ),
            );
          }).toList(),
        ),
      ]);
  }
}

final List<Widget> imageSliders = imgList
    .map((item) => Container(
  child: Container(
    height: 600,
    width: 400,
    margin: EdgeInsets.all(5.0),
    child: Card(
      margin: EdgeInsets.all(5.0),

      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(5.0)),
            child: Column(
              children: <Widget>[
                Image.network(item.path, fit: BoxFit.cover,height: 300 ,width: 300.0),
                SizedBox( height:20),
                Text("${item.name}"),
                SizedBox( height:20),
                Expanded(child: Text("${item.desc}")),




              ],
            )),
      ),
    ),
  ),
))
    .toList();

