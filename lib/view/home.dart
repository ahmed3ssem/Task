import 'package:flutter/material.dart';
import 'package:task/view/second_design.dart';
import 'package:task/widget/gridview_item.dart';
import 'package:task/widget/item_widget.dart';
import 'package:task/widget/listview_item.dart';
import 'package:easy_localization/easy_localization.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 50,),
            const ItemWidget(),
            const SizedBox(height: 20,),
            Container(
              margin: const EdgeInsets.only(right: 15 , left: 15),
              height: double.maxFinite,
              width: double.maxFinite,
              decoration: const BoxDecoration(color: Color(0xFF0D1117)),
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.all(5.0),
                        height: 100.0,
                        width: 280,
                        child: ListView.builder(scrollDirection: Axis.horizontal , shrinkWrap: true  , itemCount: 4 , itemBuilder: (ctx , pos){
                          return const ListViewItem();
                        }),
                      ),
                      InkWell(
                        onTap: ()=>Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const SecondDesign()),),
                        child: Container(
                            height: 90,
                            width: 80,
                            decoration: const BoxDecoration(
                              color: Color(0xFF0FA59A),
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                            ),
                            margin: const EdgeInsets.all(5),
                            padding: const EdgeInsets.all(10),
                            child:  Center(
                              child: Text('all'.tr().toString() , style: const TextStyle(color: Colors.white , fontSize: 15 , fontWeight: FontWeight.bold),),
                            )
                        ),
                      ),
                    ],
                  ),
                  GridView.count(
                      crossAxisCount: 2,
                      crossAxisSpacing: 5.0,
                      mainAxisSpacing: 1.0,
                      shrinkWrap: true,
                      physics: const ScrollPhysics(),
                      children: List.generate(10 , (index){
                        return const GridViewItem();
                      })
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
