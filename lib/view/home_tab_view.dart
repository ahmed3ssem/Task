import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:task/utils/common.dart';
import 'package:task/widget/gridview_item.dart';
import 'package:task/widget/listview_item.dart';

class HomeTabletView extends StatefulWidget {
  const HomeTabletView({Key? key}) : super(key: key);

  @override
  _HomeTabletViewState createState() => _HomeTabletViewState();
}

class _HomeTabletViewState extends State<HomeTabletView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          const SizedBox(height: 20,),
          Expanded(child: Container(
            padding: const EdgeInsets.all(10),
            decoration: const BoxDecoration(
              color:  Color(0xFFE9EBEF),
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
            margin: const EdgeInsets.only(right: 10 , left: 10),

            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                        height: 60,
                        width: 80,
                        decoration: const BoxDecoration(
                          color: Color(0xFF0FA59A),
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                        margin: const EdgeInsets.all(5),
                        padding: const EdgeInsets.all(10),
                        child:  Center(
                          child: Text('all'.tr().toString(), style: const TextStyle(color: Colors.white , fontSize: 15 , fontWeight: FontWeight.bold),),
                        )
                    ),
                    Container(
                      margin: const EdgeInsets.all(5.0),
                      height: 70.0,
                      width: MediaQuery.of(context).size.width-150,
                      child: ListView.builder(scrollDirection: Axis.horizontal , shrinkWrap: true  , itemCount: 8 , itemBuilder: (ctx , pos){
                        return const ListViewItem();
                      }),
                    ),
                  ],
                ),
                GridView.count(
                    childAspectRatio: 2/3.1,
                    crossAxisCount: 4,
                    crossAxisSpacing: 5.0,
                    mainAxisSpacing: 1.0,
                    shrinkWrap: true,
                    physics: const ScrollPhysics(),
                    children: List.generate(20 , (index){
                      return GridViewItem(Common.images[index]);
                    })
                )
              ],
            ),
          )),
        ],
      ),
    );
  }
}
